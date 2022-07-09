#!/bin/bash
rm -rf PPForecast.csv
touch PPForecast.csv
#printf "temperature,\twindDirection,\twindSpeed,\twindGust\n" >> PPforecast.csv
#tr -d '\r' < dateList.txt > dateListNor.txt
#I'm not sure what the above is doing, or if it's necessary when all data is contained with in a single unix xml file

site="http://metwdb-openaccess.ichec.ie/metno-wdb2ts/locationforecast?lat=53.3566499;long=-6.32903645"
curl $site -o output.txt

#while IFS= read -r line
#do
#    sed -n '3p' |awk 'BEGIN{FS = "\42"} {printf "%s, \t%s, \t%s, \t%s\n", $6,$8,$10,$12}' >> ePrice.csv
#done < output.txt

xmlstarlet sel -T -t \
	-m / -o "temperature,\twindDirection,\twindSpeed,\twindGust,\thumidity,\tpressure\n" -n -b \
	-m /weatherdata/product/time \
	-v "concat(@from,',',location/windDirection[@id='dd']/@deg,',',location/windSpeed[@id='ff']/@mps,',',location/windGust/@mps,',',location/humidity/@value,',',location/pressure[@id='pr']/@value)" \
	-n output.txt >>PPForecast.csv
	#-m /weatherdata/product/time
#rm -rf output.txt
