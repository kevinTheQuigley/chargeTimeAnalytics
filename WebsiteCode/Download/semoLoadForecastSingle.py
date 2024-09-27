import requests
import xml.etree.ElementTree as ET
import csv
from datetime import datetime, timedelta
import pytz
import os

# Function to get the Irish time one hour before the most recent hour
def get_previous_irish_time():
    ireland_tz = pytz.timezone('Europe/Dublin')  # Irish timezone (adjusts for DST)
    current_time_ireland = datetime.now(ireland_tz)
    
    # Round down to the nearest hour and subtract one hour
    previous_hour_time = current_time_ireland.replace(minute=0, second=0, microsecond=0) - timedelta(hours=1)
    return previous_hour_time

# Function to generate the URL for the forecast an hour before the most recent forecast in Ireland
def generate_url_for_previous_forecast():
    base_url = "https://reports.sem-o.com/documents/PUB_DailyLoadFcst_"
    
    # Get the previous Irish time rounded to the nearest hour
    previous_irish_time = get_previous_irish_time()
    formatted_time = previous_irish_time.strftime('%Y%m%d%H00')  # Format as YYYYMMDDHH00
    
    # Construct the URL for the forecast
    url = base_url + formatted_time + ".xml"
    print(f"Generated URL for the forecast an hour before: {url}")
    
    return url

# Function to download the XML file
def download_xml_file(url):
    response = requests.get(url)
    if response.status_code == 200:
        if b'{"errorMessage":"' in response.content:
            print(f"No valid data found for {url}")
            return None
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

# Main function to download the previous forecast and save it to a CSV
def process_previous_forecast():
    # Generate the URL for the forecast an hour before the most recent forecast
    url = generate_url_for_previous_forecast()
    
    # Download and process the XML
    xml_content = download_xml_file(url)
    if xml_content:
        extracted_data = extract_data_from_xml(xml_content)
        
        delivery_date = datetime.now().strftime('%Y-%m-%d')  # Use current date if no data
        
        # Construct the file path and file name
        folder_path = "WebsiteCode/DataStorage/RawData/Semo/LoadForecasting"
        os.makedirs(folder_path, exist_ok=True)  # Ensure the directory exists
        
        csv_file_path = os.path.join(folder_path, f"LoadForecast_{delivery_date}.csv")
        
        # Write the data to the CSV file
        write_data_to_csv(extracted_data, csv_file_path)
        print(f"Data saved to {csv_file_path}")
    else:
        print("No valid data to process.")

# Run the script
process_previous_forecast()
