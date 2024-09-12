#!/bin/bash
rm -rf PPForecast.csv
touch PPForecast.csv
#printf "temperature,\twindDirection,\twindSpeed,\twindGust\n" >> PPforecast.csv
#tr -d '\r' < dateList.txt > dateListNor.txt

# Downloading weather predictions for all eight weather stations in Ireland
dub_site="http://metwdb-openaccess.ichec.ie/metno-wdb2ts/locationforecast?lat=53.3566499;long=-6.32903645"
curl $dub_site -o dub_output.txt


xmlstarlet sel -T -t \
	-m / -o "date,temperature,windDirection,windSpeed,windGust,humidity,pressure\n" -n -b \
	-m /weatherdata/product/time \
	-v "concat(@from,',',location/temperature[@id='TTT']/@value,',',location/windDirection[@id='dd']/@deg,',',location/windSpeed[@id='ff']/@mps,',',location/windGust/@mps,',',location/humidity/@value,',',location/pressure[@id='pr']/@value)" \
	-n dub_output.txt >>dub_Forecast.csv


cor_site="http://metwdb-openaccess.ichec.ie/metno-wdb2ts/locationforecast?lat=51.4760000;long=-9.428"
curl $cor_site -o cor_output.txt


xmlstarlet sel -T -t \
	-m / -o "date,temperature,windDirection,windSpeed,windGust,humidity,pressure\n" -n -b \
	-m /weatherdata/product/time \
	-v "concat(@from,',',location/temperature[@id='TTT']/@value,',',location/windDirection[@id='dd']/@deg,',',location/windSpeed[@id='ff']/@mps,',',location/windGust/@mps,',',location/humidity/@value,',',location/pressure[@id='pr']/@value)" \
	-n cor_output.txt >>cor_Forecast.csv



cla_site="http://metwdb-openaccess.ichec.ie/metno-wdb2ts/locationforecast?lat=52.6900000;long=-8.91800000"
curl $cla_site -o cla_output.txt


xmlstarlet sel -T -t \
	-m / -o "date,temperature,windDirection,windSpeed,windGust,humidity,pressure\n" -n -b \
	-m /weatherdata/product/time \
	-v "concat(@from,',',location/temperature[@id='TTT']/@value,',',location/windDirection[@id='dd']/@deg,',',location/windSpeed[@id='ff']/@mps,',',location/windGust/@mps,',',location/humidity/@value,',',location/pressure[@id='pr']/@value)" \
	-n cla_output.txt >>cla_Forecast.csv



don_site="http://metwdb-openaccess.ichec.ie/metno-wdb2ts/locationforecast?lat=55.3719930;long=-7.33926004"
curl $don_site -o don_output.txt


xmlstarlet sel -T -t \
	-m / -o "date,temperature,windDirection,windSpeed,windGust,humidity,pressure\n" -n -b \
	-m /weatherdata/product/time \
	-v "concat(@from,',',location/temperature[@id='TTT']/@value,',',location/windDirection[@id='dd']/@deg,',',location/windSpeed[@id='ff']/@mps,',',location/windGust/@mps,',',location/humidity/@value,',',location/pressure[@id='pr']/@value)" \
	-n don_output.txt >>don_Forecast.csv
