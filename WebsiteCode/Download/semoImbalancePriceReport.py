import requests
import os
import xml.etree.ElementTree as ET
import csv
from datetime import datetime, timedelta

# Function to generate URLs for the last month, for each hour
def generate_urls_for_last_month():
    base_url = "https://reports.sem-o.com/documents/PUB_5MinImbalPrc_"
    urls = []
    today = datetime.now()
    
    # Start from the first of the current month and go back to the first of the previous month
    start_date = today.replace(day=1) - timedelta(days=1)
    end_date = start_date.replace(day=1)

    # Iterate over each day in the previous month
    current_date = start_date
    while current_date >= end_date:
        # Iterate over each hour of the day
        for hour in range(24):
            # Format the URL with the appropriate date and time
            formatted_time = current_date.strftime('%Y%m%d') + f"{hour:02}00"
            url = base_url + formatted_time + ".xml"
            urls.append(url)
        current_date -= timedelta(days=1)
    
    return urls

# Function to download the XML file
def download_xml_file(url):
    # Making the request to download the XML
    response = requests.get(url)
    
    if response.status_code == 200:
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

# Function to save combined data into a CSV file for the month
def save_to_csv(data, csv_file_path):
    if data:
        # Define the columns you want in the CSV
        columns = [
            'ROW', 'TradeDate', 'StartTime', 'EndTime', 'NetImbalanceVolume', 
            'ImbalancePrice', 'ASPPriceUsage', 'TotalUnitAvailability', 
            'DemandControlVolume', 'PMEA', 'QPAR', 'AdministeredScarcityPrice', 
            'MarketBackupPrice', 'ShortTermReserveQuantity', 'OperatingReserveRequirement'
        ]
        
        # Write to CSV
        with open(csv_file_path, 'w', newline='') as csvfile:
            writer = csv.DictWriter(csvfile, fieldnames=columns)
            writer.writeheader()
            writer.writerows(data)
        
        print(f"Data saved successfully to {csv_file_path}")

# Main function to orchestrate the download and processing
def process_last_month_data():
    # Generate URLs for the last month
    urls = generate_urls_for_last_month()
    
    # Create a directory for storing CSV files
    save_directory = "WebsiteCode/DataStorage/RawData/Semo/ImbalancePriceReports/"
    os.makedirs(save_directory, exist_ok=True)

    # Data storage for the entire month's reports
    monthly_data = []
    
    # Iterate over the generated URLs and process each XML
    for url in urls:
        print(f"Processing {url}")
        xml_content = download_xml_file(url)
        
        if xml_content:
            # Extract data from the XML content
            extracted_data = extract_data_from_xml(xml_content)
            # Append extracted data to the monthly data list
            monthly_data.extend(extracted_data)
    
    # Determine the current month and year to name the CSV file
    current_date = datetime.now().replace(day=1) - timedelta(days=1)
    month_name = current_date.strftime("%b").lower()  # E.g., "sep" or "aug"
    csv_file_path = os.path.join(save_directory, f"ImbalancePriceReports_{month_name}.csv")
    
    # Save the combined data into a CSV file
    save_to_csv(monthly_data, csv_file_path)

# Run the script
process_last_month_data()
