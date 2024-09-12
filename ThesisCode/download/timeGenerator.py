from datetime import date, datetime, timedelta
import os

print("Running from the base directory...")
if os.path.exists("./download/dateList.txt"):
    os.remove("./download/dateList.txt")
    f = open("./download/dateList.txt", "x")
elif os.path.exists("./dateList.txt"):
    os.remove("./dateList.txt")
    f = open("./dateList.txt", "x")
else:
    f = open("./dateList.txt", "x")

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
    #5 minute trade imbalance volume is available
    #f.write("https://reports.sem-o.com/documents/PUB_5MinImbalPrc_"+i+".xml\n")
    # Used to be
    f.write("https://reports.sem-o.com/documents/PUB_30MinAvgImbalPrc_"+i+".xml\n")
    # 
