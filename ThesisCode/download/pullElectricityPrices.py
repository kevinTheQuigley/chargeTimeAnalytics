#Pull data
import requests
import pandas as pd
import time
import os
import datetime
from datetime import date, timedelta

import csv
import xml.etree.ElementTree as ET
import requests

def parse_xml_to_csv(xml_url, csv_filename):
    response = requests.get(xml_url)
    root = ET.fromstring(response.content)
    
    new_data = []
    for entry in root.findall('.//PUB_30MinAvgImbalPrc'):
        start_time = entry.get('StartTime')
        end_time = entry.get('EndTime')
        net_imbalance_volume = entry.get('NetImbalanceVolume')
        imbalance_price = entry.get('ImbalanceSettlementPrice')
        
        new_data.append([start_time, end_time, net_imbalance_volume, imbalance_price])
    
    # Check if file exists and read existing data if it does
    existing_data = []
    try:
        with open(csv_filename, 'r', newline='') as file:
            reader = csv.reader(file)
            existing_data = [row for row in reader]
    except FileNotFoundError:
        pass
    
    # Combine existing data with new data without duplication
    with open(csv_filename, 'w', newline='') as file:
        writer = csv.writer(file)
        if not existing_data:
            writer.writerow(['StartTime', 'EndTime', 'NetImbalanceVolume', 'ImbalanceSettlementPrice'])
        existing_rows = set(tuple(row) for row in existing_data)
        for row in new_data:
            if tuple(row) not in existing_rows:
                writer.writerow(row)

# List of XML file URLs
with open('datelist.txt', 'r') as file:
    xml_files = [line.strip() for line in file if line.strip()]

# Filename for the CSV file
csv_file = 'imbalance_data.csv'

for xml_file in xml_files:
    parse_xml_to_csv(xml_file, csv_file)