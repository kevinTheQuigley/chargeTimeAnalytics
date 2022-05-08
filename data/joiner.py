import pandas as pd
import datetime as dt

weatherHead = pd.read_csv('hly175.csv',skiprows = (0,1,2,3,4,5,6,7,8,9,10,11,12,13))
weatherHead['date2'] = [dt.datetime.strptime(d,"%d-%b-%Y %H:%M") for d in weatherHead['date'] ]
weatherHead['date_for_merge'] = weatherHead['date2'].dt.round('H')
weatherHead = weatherHead[(weatherHead['date2'] >= '2021-04-01') & (weatherHead['date2'] < '2022-04-01')]
weatherHead =weatherHead.drop(['date_for_merge'], axis=1)

wind = pd.read_csv('wind.csv')
demand = pd.read_csv('demand.csv')
generation = pd.read_csv('generation.csv')
forecastWind = pd.read_csv('forecastWind.csv')
interconnection = pd.read_csv('interconnection.csv')

wind = wind.drop([' REGION'], axis = 1)
demand = demand.drop([' REGION'], axis = 1)
generation = generation.drop([' REGION'], axis = 1)
forecastWind = forecastWind.drop([' REGION'], axis = 1)
#interconnection = interconnection.drop(['REGION'], axis = 1)


#combined= pd.merge(wind,demand,on='DATE & TIME',how='outer')
combined= pd.merge(generation ,pd.merge(wind,demand,on='DATE & TIME') ,on = 'DATE & TIME')
combined['date2'] = [dt.datetime.strptime(d,"%d %B %Y %H:%M") for d in combined["DATE & TIME"] ]
combined['minute'] = combined['date2'].dt.minute
combined = combined[combined['minute'] == 0]
combined= combined.sort_values('date2')
#combined['month'] = combined['date2'].dt.month

weatherMerged = pd.merge(combined,weatherHead, on = 'date2')
#weatherMerged.drop(['DATE & TIME',"date_for_merge"],axis = 1)
print(weatherMerged.to_csv('weatherMerged.csv', index=False))

