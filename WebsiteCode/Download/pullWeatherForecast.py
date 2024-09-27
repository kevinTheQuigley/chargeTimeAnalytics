import os
import requests
import xml.etree.ElementTree as ET
import csv

# Function to extract latitude and longitude from a CSV file
def extract_lat_long(csv_file_path):
    with open(csv_file_path, 'r') as f:
        # Reading first few lines to extract latitude and longitude
        lines = f.readlines()
        latitude = lines[2].split(',')[0].split(":")[1].rstrip()
        longitude = lines[2].split(',')[1].split(":")[1][:-1].lstrip()
    return latitude, longitude

# Function to make an HTTP request and get the XML weather data
def get_weather_data(latitude, longitude):
    url = f"http://openaccess.pf.api.met.ie/metno-wdb2ts/locationforecast?lat={latitude};long={longitude}"
    response = requests.get(url)
    if response.status_code == 200:
        return response.text
    else:
        raise Exception(f"Failed to get data from API. Status Code: {response.status_code}")

# Function to parse the XML weather data and extract specific fields into CSV
def parse_and_save_xml_to_csv(xml_data, output_csv_file):
    root = ET.fromstring(xml_data)
    rows = []
    
    # The desired tags and attributes to extract from the XML
    fields_to_extract = {
        'temperature': 'value',
        'windDirection': 'deg',
        'windSpeed': 'mps',
        'windGust': 'mps',
        'globalRadiation': 'value',
        'humidity': 'value',
        'pressure': 'value',
        'cloudiness': 'percent',
        'lowClouds': 'percent',
        'mediumClouds': 'percent',
        'highClouds': 'percent',
    }
    
    for time in root.findall(".//time[@datatype='forecast']"):
        time_data = {
            'from': time.attrib['from'],
            'to': time.attrib['to'],
        }
        location = time.find('location')
        if location is not None:
            time_data.update({
                'latitude': location.attrib['latitude'],
                'longitude': location.attrib['longitude'],
                'altitude': location.attrib['altitude'],
            })
            # Extracting the specified weather elements
            for tag, attribute in fields_to_extract.items():
                element = location.find(tag)
                if element is not None and attribute in element.attrib:
                    time_data[tag] = element.attrib[attribute]
                else:
                    time_data[tag] = None  # If element or attribute not found, set to None
        rows.append(time_data)

    # Saving the data to a CSV file
    if rows:
        keys = ['from', 'to', 'latitude', 'longitude', 'altitude'] + list(fields_to_extract.keys())
        with open(output_csv_file, 'w', newline='') as f:
            dict_writer = csv.DictWriter(f, fieldnames=keys)
            dict_writer.writeheader()
            dict_writer.writerows(rows)
        print(f"Saved weather data to {output_csv_file}")

# Specify directory containing the CSV files
csv_directory = "WebsiteCode/DataStorage/RawData/MetHistorical/"
output_directory = "WebsiteCode/DataStorage/RawData/MetForecast"

# Create output directory if it doesn't exist
os.makedirs(output_directory, exist_ok=True)

# Iterate over each file in the directory
for file_name in os.listdir(csv_directory):
    if file_name.endswith(".csv"):
        file_path = os.path.join(csv_directory, file_name)
        latitude, longitude = extract_lat_long(file_path)
        print(f"Extracted lat: {latitude}, long: {longitude} from {file_name}")

        # Get the weather data in XML format
        xml_data = get_weather_data(latitude, longitude)

        # Define output CSV file name
        output_csv_file = os.path.join(output_directory, f"{file_name[:-4]}_weather.csv")

        # Parse XML and save to CSV
        parse_and_save_xml_to_csv(xml_data, output_csv_file)

print("Weather data download and conversion complete.")
