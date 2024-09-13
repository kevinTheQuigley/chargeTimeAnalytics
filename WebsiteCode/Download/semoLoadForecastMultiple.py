import requests
import xml.etree.ElementTree as ET
import csv
from datetime import datetime, timedelta
import os

# Function to generate URLs starting from midnight of the first day for the last 24 hours at 60-minute intervals
def generate_urls_for_last_24_hours():
    base_url = "https://reports.sem-o.com/documents/PUB_DailyLoadFcst_"
    urls = []
    
    # Get today's date, but start from midnight (00:00) of the previous day
    today = datetime.now()
    start_of_day = today.replace(hour=0, minute=0, second=0, microsecond=0)
    
    # Generate URLs for the last 24 hours, starting from midnight
    for hour_offset in range(24):
        # Calculate the time for each hour
        target_time = start_of_day - timedelta(hours=hour_offset)
        formatted_time = target_time.strftime('%Y%m%d%H00')  # Format as YYYYMMDDHH00
        url = base_url + formatted_time + ".xml"
        urls.append(url)
    
    return urls

# Function to download the XML file
def download_xml_file(url):
    response = requests.get(url)
    if response.status_code == 200:
        return response.content
    else:
        print(f"Failed to download file from {url}")
        return None

# Function to parse XML and extract data into a list of dictionaries
def extract_data_from_xml(xml_content):
    root = ET.fromstring(xml_content)
    
    # List to hold rows of data
    data = []
    
    # Loop through each PUB_DailyLoadFcst entry in the XML
    for load_fcst in root.findall('.//PUB_DailyLoadFcst'):
        row_data = {
            "DeliveryDate": load_fcst.findtext('DeliveryDate'),
            "TradeDate": load_fcst.findtext('TradeDate'),
            "StartTime": load_fcst.findtext('StartTime'),
            "EndTime": load_fcst.findtext('EndTime'),
            "LoadForecastROI": load_fcst.findtext('LoadForecastROI'),
            "LoadForecastNI": load_fcst.findtext('LoadForecastNI'),
            "AggregatedForecast": load_fcst.findtext('AggregatedForecast')
        }
        data.append(row_data)
    
    return data

# Function to write data to a CSV file
def write_data_to_csv(data, csv_file_path):
    # Define the column headers
    fieldnames = ["DeliveryDate", "TradeDate", "StartTime", "EndTime", "LoadForecastROI", "LoadForecastNI", "AggregatedForecast"]
    
    with open(csv_file_path, mode='w', newline='') as file:
        writer = csv.DictWriter(file, fieldnames=fieldnames)
        
        # Write the header
        writer.writeheader()
        
        # Write each row of data
        for row in data:
            writer.writerow(row)

# Main function to download XML files for the last 24 hours and save them to a CSV
def process_last_24_hours_data():
    # Generate URLs for the last 24 hours, starting from midnight
    urls = generate_urls_for_last_24_hours()
    
    # List to store all extracted data
    all_data = []
    
    # Iterate over each URL, download and process the XML
    for url in urls:
        print(f"Processing {url}")
        xml_content = download_xml_file(url)
        if xml_content:
            extracted_data = extract_data_from_xml(xml_content)
            all_data.extend(extracted_data)
    
    # Get the DeliveryDate from the first row (if it exists) to use in the CSV file name
    if all_data:
        delivery_date = all_data[0]['DeliveryDate']
    else:
        delivery_date = datetime.now().strftime('%Y-%m-%d')  # Use current date if no data
    
    # Construct the file path and file name
    folder_path = "WebsiteCode/DataStorage/RawData/Semo/LoadForecasting"
    os.makedirs(folder_path, exist_ok=True)  # Ensure the directory exists
    
    csv_file_path = os.path.join(folder_path, f"LoadForecast_{delivery_date}.csv")
    
    # Write all the data to the CSV file
    write_data_to_csv(all_data, csv_file_path)
    print(f"Data saved to {csv_file_path}")

# Run the script
process_last_24_hours_data()
