#!/bin/bash
wget https://cli.fusio.net/cli/climate_data/webdata/hly3723.zip
echo Downloading Historical Data for Met Eireann
echo Downloading from Casement, Dublin
unzip -o hly3723.zip
rm -rf hly3723.zip Data_Licence.txt KeyHourly.txt
#sleep 5m


echo Downloading from Valentia
wget https://cli.fusio.net/cli/climate_data/webdata/hly2275.zip
unzip -o hly2275.zip
rm -rf hly2275.zip Data_Licence.txt KeyHourly.txt
#sleep 5m

echo Downloading from Sherkin
wget https://cli.fusio.net/cli/climate_data/webdata/hly775.zip
unzip -o hly775.zip
rm -rf hly775.zip Data_Licence.txt KeyHourly.txt
#sleep 5m

echo Downloading from Shannon 
wget https://cli.fusio.net/cli/climate_data/webdata/hly518.zip
unzip -o hly518.zip
rm -rf hly518.zip Data_Licence.txt KeyHourly.txt
#sleep 5m

echo Downloading from Newport
wget https://cli.fusio.net/cli/climate_data/webdata/hly1175.zip
unzip -o hly1175.zip
rm -rf hly1175.zip Data_Licence.txt KeyHourly.txt
#sleep 5m

echo Downloading from Finner
wget https://cli.fusio.net/cli/climate_data/webdata/hly2075.zip
unzip -o hly2075.zip
rm -rf hly2075.zip Data_Licence.txt KeyHourly.txt
#sleep 5m

echo Downloading from Malin
wget https://cli.fusio.net/cli/climate_data/webdata/hly1575.zip
unzip -o hly1575.zip
rm -rf hly1575.zip Data_Licence.txt KeyHourly.txt
#sleep 5m

echo Downloading from Guteen
wget https://cli.fusio.net/cli/climate_data/webdata/hly1475.zip
unzip -o hly1475.zip
rm -rf hly1475.zip Data_Licence.txt KeyHourly.txt
echo Download Complete
