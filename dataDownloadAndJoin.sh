#!/bin/bash

# Downloading files 
bash download/fileDownloader21_22_1.sh
bash download/fileDownloader20_21_1.sh
bash download/fileDownloader19_20_1.sh
bash metDownload.sh


#Downloading  latest weeks worth of data from SEMO
python3 timeGenerator.py
bash priceFinder.sh

# Moving downloaded files and joining into a single file
cp download/*.csv data/
python3 download/joiner.py
