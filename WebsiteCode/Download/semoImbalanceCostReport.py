import requests
import os
import xml.etree.ElementTree as ET
import csv
from datetime import datetime, timedelta

# Function to generate URLs for 60-minute intervals over the last four weeks
def generate_urls_for_last_four_weeks():
    base_url = "https://reports.sem-o.com/documents/PUB_30MinImbalCost_"
    urls_by_week = {1: [], 2: [], 3: [], 4: []}
    
    # Get today's date and go back 28 days (four weeks)
    today = datetime.now()
    start_date = today - timedelta(days=27)

    # Iterate over each day in the last four weeks
    current_date = start_date
    while current_date <= today:
        # Determine the week number (1-4)
        days_difference = (today - current_date).days
        week_num = (days_difference // 7) + 1  # This will assign the day to the correct week (1 to 4)
        
        if week_num > 4:  # Make sure we only work with week numbers 1-4
            break

        # Iterate over each hour of the day (60-minute intervals)
        for hour in range(24):
            formatted_time = current_date.strftime('%Y%m%d') + f"{hour:02}00"
            url = base_url + formatted_time + ".xml"
            print(f"Generated URL for week {week_num}: {url}")  # Logging the URL
            urls_by_week[week_num].append(url)
        
        current_date += timedelta(days=1)
    
    return urls_by_week

# Function to download the XML file
def download_xml_file(url):
    # Making the request to download the XML
    print(f"Downloading {url}...")  # Logging the download
    response = requests.get(url)
    
    if response.status_code == 200:
        # Log part of the response to check if it's valid XML
        print(f"Received response from {url}, first 100 chars: {response.content[:100]}")

        # Check if the content contains an error message (e.g., empty error message)
        if b'{"errorMessage":"' in response.content:
            print(f"Skipping {url} due to XML error.")
            return None
        return response.content  # Return the content for further processing
    else:
        print(f"Failed to download the file. Status code: {response.status_code} for {url}")
        return None

# Function to parse XML and extract data
def extract_data_from_xml(xml_content):
    try:
        root = ET.fromstring(xml_content)
        
        # Define the columns you want in the CSV
        columns = [
            'ROW', 'StartTime', 'EndTime', 'ImbalanceVolume', 
            'ImbalancePrice', 'ImbalanceCost'
        ]
        
        rows = []
        
        # Loop through the XML tree and extract required data
        for child in root.findall('.//PUB_30MinImbalCost'):
            row_data = {col: child.attrib.get(col, None) for col in columns}
            rows.append(row_data)
        
        return rows
    except ET.ParseError as e:
        print(f"Failed to parse XML: {e}")
        return []

# Function to save extracted data into a CSV file row-by-row
def append_to_csv(data, csv_file_path):
    if data:
        # Define the columns you want in the CSV
        columns = [
            'ROW', 'StartTime', 'EndTime', 'ImbalanceVolume', 
            'ImbalancePrice', 'ImbalanceCost'
        ]
        
        # Append data to CSV file
        with open(csv_file_path, 'a', newline='') as csvfile:
            writer = csv.DictWriter(csvfile, fieldnames=columns)
            
            # If file is empty, write the header
            if os.stat(csv_file_path).st_size == 0:
                writer.writeheader()
            
            # Write data
            writer.writerows(data)
    else:
        print(f"No data to append to {csv_file_path}")

# Main function to orchestrate the download and processing
def process_data_by_week(csv_file_paths):
    # Generate URLs for the last four weeks at 60-minute intervals
    urls_by_week = generate_urls_for_last_four_weeks()
    
    # Iterate over each week and process the URLs for that week
    for week_num in range(1, 5):  # Only loop through valid week numbers (1-4)
        if week_num not in urls_by_week:
            print(f"Week {week_num} data not available.")
            continue

        csv_file_path = csv_file_paths.get(week_num)
        if not csv_file_path:
            print(f"No CSV file path specified for week {week_num}.")
            continue

        for url in urls_by_week[week_num]:
            xml_content = download_xml_file(url)
            
            if xml_content:
                # Extract data from the XML content
                extracted_data = extract_data_from_xml(xml_content)
                # Append extracted data to the CSV file row by row
                append_to_csv(extracted_data, csv_file_path)

# Function to get CSV file paths for four weeks
def get_csv_file_paths():
    default_path = "WebsiteCode/DataStorage/RawData/Semo/ImbalanceCostReports/"
    os.makedirs(default_path, exist_ok=True)  # Ensure the directory exists

    csv_file_paths = {}

    # Generate separate CSV file paths for each week
    for week_num in range(1, 5):
        csv_file_path = default_path
        #input(f"Enter CSV file path for Week {week_num} (or press Enter to use default: {default_path}): ")
        if not csv_file_path:
            # Use default path and create a file named with the current week
            today = datetime.now()
            week_name = today.strftime("%Y%m%d")  # E.g., "20240912"
            csv_file_path = os.path.join(default_path, f"ImbalanceCostReports_week{week_num}_{week_name}.csv")
        csv_file_paths[week_num] = csv_file_path

    return csv_file_paths

# Run the script
csv_file_paths = get_csv_file_paths()  # Get the CSV file paths for each week
process_data_by_week(csv_file_paths)  # Process and append data to the CSV files
