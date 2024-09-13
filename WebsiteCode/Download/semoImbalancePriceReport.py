import requests
import os
import xml.etree.ElementTree as ET
import csv
from datetime import datetime, timedelta

# Function to generate URLs for the last 24 hours (yesterday)
def generate_urls_for_last_day():
    base_url = "https://reports.sem-o.com/documents/PUB_5MinImbalPrc_"
    urls = []
    
    # Get the current date and the previous day
    today = datetime.now()
    last_day = today - timedelta(days=1)
    
    # Iterate over each hour of the previous day
    for hour in range(24):
        # Format the URL with the appropriate date and time
        formatted_time = last_day.strftime('%Y%m%d') + f"{hour:02}00"
        url = base_url + formatted_time + ".xml"
        urls.append(url)
    
    return urls

# Function to download the XML file
def download_xml_file(url):
    # Making the request to download the XML
    response = requests.get(url)
    
    if response.status_code == 200:
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
    root = ET.fromstring(xml_content)
    
    # Define the columns you want in the CSV
    columns = [
        'ROW', 'TradeDate', 'StartTime', 'EndTime', 'NetImbalanceVolume', 
        'ImbalancePrice', 'ASPPriceUsage', 'TotalUnitAvailability', 
        'DemandControlVolume', 'PMEA', 'QPAR', 'AdministeredScarcityPrice', 
        'MarketBackupPrice', 'ShortTermReserveQuantity', 'OperatingReserveRequirement'
    ]
    
    rows = []
    
    # Loop through the XML tree and extract required data
    for child in root.findall('.//PUB_5MinImbalPrc'):
        row_data = {col: child.attrib.get(col, None) for col in columns}
        rows.append(row_data)
    
    return rows

# Function to save extracted data into a CSV file row-by-row
def append_to_csv(data, csv_file_path):
    if data:
        # Define the columns you want in the CSV
        columns = [
            'ROW', 'TradeDate', 'StartTime', 'EndTime', 'NetImbalanceVolume', 
            'ImbalancePrice', 'ASPPriceUsage', 'TotalUnitAvailability', 
            'DemandControlVolume', 'PMEA', 'QPAR', 'AdministeredScarcityPrice', 
            'MarketBackupPrice', 'ShortTermReserveQuantity', 'OperatingReserveRequirement'
        ]
        
        # Append data to CSV file
        with open(csv_file_path, 'a', newline='') as csvfile:
            writer = csv.DictWriter(csvfile, fieldnames=columns)
            
            # If file is empty, write the header
            if os.stat(csv_file_path).st_size == 0:
                writer.writeheader()
            
            # Write data
            writer.writerows(data)

# Main function to orchestrate the download and processing
def process_last_day_data(csv_file_path):
    # Generate URLs for the last day
    urls = generate_urls_for_last_day()
    
    # Iterate over the generated URLs and process each XML
    for url in urls:
        print(f"Processing {url}")
        xml_content = download_xml_file(url)
        
        if xml_content:
            # Extract data from the XML content
            extracted_data = extract_data_from_xml(xml_content)
            # Append extracted data to the CSV file row by row
            append_to_csv(extracted_data, csv_file_path)

# Prompt the user to enter the CSV file path or use the default
def get_csv_file_path():
    # Optionally, allow the user to input a path or use a default path
    default_path = "WebsiteCode/DataStorage/RawData/Semo/ImbalancePriceReports/Daily/"
    os.makedirs(default_path, exist_ok=True)  # Ensure the directory exists

    # Ask for user input or use default
    csv_file_path = default_path
    #input(f"Enter CSV file path (or press Enter to use default: {default_path}): ")
    if not csv_file_path:
        # Use default path and create a file named with the current date
        last_day = datetime.now() - timedelta(days=1)
        day_name = last_day.strftime("%Y%m%d")  # E.g., "20240912"
        csv_file_path = os.path.join(default_path, f"ImbalancePriceReports_{day_name}.csv")

    return csv_file_path

# Run the script
csv_file_path = get_csv_file_path()  # Get the CSV file location
process_last_day_data(csv_file_path)  # Process and append data to the CSV
