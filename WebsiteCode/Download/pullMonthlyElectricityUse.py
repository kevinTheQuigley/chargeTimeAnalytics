import os
import requests
from datetime import datetime

# List of areas to fetch data for
areas = ["windActual", "demandActual", "generationActual", "interconnection"]

# Define the base URL
base_url = "https://www.smartgriddashboard.com/DashboardService.svc/csv"

# Define start and end years
start_year = 2019
end_year = 2024

# Define months and their corresponding days
months_days = {
    "01": 31, "02": 28, "03": 31, "04": 30, "05": 31, "06": 30,
    "07": 31, "08": 31, "09": 30, "10": 31, "11": 30, "12": 31
}

# Check for leap years
def is_leap_year(year):
    return (year % 4 == 0 and year % 100 != 0) or (year % 400 == 0)

# Define the folder path where the files should be saved
folder_path = "WebsiteCode/DataStorage/RawData/SmartGrid"

# Create the directory if it doesn't exist
if not os.path.exists(folder_path):
    os.makedirs(folder_path)

# Function to download data and save to the correct folder
def download_data(area, year, month, days):
    datefrom = f"01-{month}-{year} 00:00"
    dateto = f"{days}-{month}-{year} 23:59"
    filename = f"{area}_{year}_{month}.csv"
    url = f"{base_url}?area={area}&region=ALL&datefrom={datefrom}&dateto={dateto}"
    
    response = requests.get(url)
    if response.status_code == 200:
        # Save the file to the specified directory
        file_path = os.path.join(folder_path, filename)
        with open(file_path, 'w') as f:
            f.write(response.text)
        print(f"Downloaded and saved: {file_path}")
    else:
        print(f"Failed to download: {filename}")

# Loop through each year, month, and area, saving the files to the new directory
for year in range(start_year, end_year + 1):
    for area in areas:
        for month, days in months_days.items():
            # Adjust February for leap years
            if month == "02" and is_leap_year(year):
                days = 29
            download_data(area, year, month, days)
