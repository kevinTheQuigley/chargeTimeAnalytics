import requests
import zipfile
import os

# Function to download and extract zip files to a specific folder
def download_and_extract(url, station_name, download_folder):
    file_name = url.split('/')[-1]
    file_path = os.path.join(download_folder, file_name)

    print(f"Downloading Historical Data for Met Eireann")
    print(f"Downloading from {station_name}")

    # Download the file
    response = requests.get(url)
    os.makedirs(download_folder, exist_ok=True)  # Create the folder if it doesn't exist
    with open(file_path, 'wb') as f:
        f.write(response.content)

    # Unzip the file into the download folder
    with zipfile.ZipFile(file_path, 'r') as zip_ref:
        zip_ref.extractall(download_folder)

    # Remove unwanted files
    os.remove(file_path)  # Remove the zip file
    # Check and remove the extra text files if they exist
    for extra_file in ['Data_Licence.txt', 'KeyHourly.txt']:
        extra_file_path = os.path.join(download_folder, extra_file)
        if os.path.exists(extra_file_path):
            os.remove(extra_file_path)

# URLs and corresponding station names
stations = {
    "https://cli.fusio.net/cli/climate_data/webdata/hly3723.zip": "Casement, Dublin",
    "https://cli.fusio.net/cli/climate_data/webdata/hly2275.zip": "Valentia",
    "https://cli.fusio.net/cli/climate_data/webdata/hly775.zip": "Sherkin",
    "https://cli.fusio.net/cli/climate_data/webdata/hly518.zip": "Shannon",
    "https://cli.fusio.net/cli/climate_data/webdata/hly1175.zip": "Newport",
    "https://cli.fusio.net/cli/climate_data/webdata/hly2075.zip": "Finner",
    "https://cli.fusio.net/cli/climate_data/webdata/hly1575.zip": "Malin",
    "https://cli.fusio.net/cli/climate_data/webdata/hly1475.zip": "Guteen"
}

# Specify the download folder
download_folder = "WebsiteCode/DataStorage/RawData/MetEireann"

# Iterate over the stations and download the data
for url, station_name in stations.items():
    download_and_extract(url, station_name, download_folder)

print("Download Complete")
