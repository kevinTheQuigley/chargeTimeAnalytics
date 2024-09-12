#!/bin/bash
rm -rf dateList.txt
python3 ./timeGenerator.py
rm -rf ePrice.csv
touch ePrice.csv
printf "StartTime,\tEndTime,\tNetImbalanceVolume,\tImbalanceSettlementPrice\n" >> ePrice.csv
tr -d '\r' < dateList.txt > dateListNoR.txt
while IFS= read -r line
do
    curl "$line"   | sed -n '3p' |awk 'BEGIN{FS = "\42"} {printf "%s, \t%s, \t%s, \t%s\n", $6,$8,$10,$12}' >> ePrice.csv
done < dateListNoR.txt
