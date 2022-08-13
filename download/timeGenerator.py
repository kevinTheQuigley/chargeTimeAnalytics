from datetime import date, datetime, timedelta
import os
#os.remove("dateList.txt")
f = open("dateList.txt", "x")

def perdelta(start, end, delta):
    curr = start
    while curr < end:
        yield curr
        curr += delta

#dts = [dt.strftime('%Y%m%d%H%M') for dt in perdelta(datetime(2022,7,1,0),datetime(2022,7,22,0),timedelta(minutes=30))]
t1=datetime.combine(date.today(), datetime.min.time())
t2=datetime.combine((date.today()-timedelta(days=30)), datetime.min.time())
dts = [dt.strftime('%Y%m%d%H%M') for dt in perdelta(t2 ,t1,timedelta(minutes=30))]

for i in dts:
    f.write("https://reports.sem-o.com/documents/PUB_30MinAvgImbalPrc_"+i+".xml\n")
