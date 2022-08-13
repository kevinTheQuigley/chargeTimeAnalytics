#!/bin/bash

# cd'ing to download folder
cd download
# Downloading files 
bash download/fileDownloader21_22_1.sh
bash download/fileDownloader20_21_1.sh
bash download/fileDownloader19_20_1.sh
bash metDownload.sh


#Downloading  latest weeks worth of data from SEMO
bash priceFinder.sh

# Moving downloaded files and joining into a single file
cp ./*.csv ../data/


# cd'ing to data folder
cd ../data

# joining data
python3 joiner.py


cd ../forecastData
# Downloading next weeks weather forecast (Needed for generating predictions)
bash forecastPull.sh

cd ../
