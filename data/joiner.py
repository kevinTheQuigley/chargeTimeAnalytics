import pandas as pd
import datetime as dt

weatherHead = pd.read_csv('hly3723.csv',skiprows = (0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21))
weatherHead['date2'] = [dt.datetime.strptime(d,"%d-%b-%Y %H:%M") for d in weatherHead['date'] ]
weatherHead['date_for_merge'] = weatherHead['date2'].dt.round('H')
weatherHead = weatherHead[(weatherHead['date2'] >= '2019-04-01') & (weatherHead['date2'] < '2022-04-01')]
dub_weatherHead =weatherHead.drop(['date_for_merge','date'], axis=1)
#dub_weatherHead.columns = ['dub_ind', 'dub_rain', 'dub_ind.1', 'dub_temp', 'dub_ind.2', 'dub_wetb', 'dub_dewpt','dub_vappr', 'dub_rhum', 'dub_msl', 'date2']
dub_weatherHead.columns = ['dub_ind','dub_rain','dub_ind','dub_temp','dub_ind','dub_wetb','dub_dewpt','dub_vappr','dub_rhum','dub_msl','dub_ind','dub_wdsp','dub_ind','dub_wddir','dub_ww','dub_w','dub_sun','dub_vis','dub_clht','dub_clamt', 'date2']


weatherHead = pd.read_csv('hly2275.csv',skiprows = (0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21))
weatherHead['date2'] = [dt.datetime.strptime(d,"%d-%b-%Y %H:%M") for d in weatherHead['date'] ]
weatherHead['date_for_merge'] = weatherHead['date2'].dt.round('H')
weatherHead = weatherHead[(weatherHead['date2'] >= '2019-04-01') & (weatherHead['date2'] < '2022-04-01')]
ker_weatherHead =weatherHead.drop(['date_for_merge','date'], axis=1)
ker_weatherHead.columns = ['ker_ind', 'ker_rain', 'ker_ind.1', 'ker_temp', 'ker_ind.2', 'ker_wetb', 'ker_dewpt','ker_vappr', 'ker_rhum', 'ker_msl', 'ker_ind.3', 'ker_wdsp', 'ker_ind.4', 'ker_wddir', 'ker_ww', 'ker_w','sun', 'ker_vis', 'ker_clht', 'ker_clamt','date2'] 

weatherHead = pd.read_csv('hly518.csv',skiprows = (0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21))
weatherHead['date2'] = [dt.datetime.strptime(d,"%d-%b-%Y %H:%M") for d in weatherHead['date'] ]
weatherHead['date_for_merge'] = weatherHead['date2'].dt.round('H')
weatherHead = weatherHead[(weatherHead['date2'] >= '2019-04-01') & (weatherHead['date2'] < '2022-04-01')]
cla_weatherHead =weatherHead.drop(['date_for_merge','date'], axis=1)
cla_weatherHead.columns =  ['cla_ind', 'cla_rain', 'cla_ind.1', 'cla_temp', 'cla_ind.2', 'cla_wetb', 'cla_dewpt', 'cla_vappr', 'cla_rhum', 'cla_msl', 'cla_ind.3', 'cla_wdsp', 'cla_ind.4', 'cla_wddir', 'cla_ww', 'cla_w', 'cla_sun', 'cla_vis', 'cla_clht', 'cla_clamt', 'date2']

weatherHead = pd.read_csv('hly1175.csv',skiprows = (0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15))
weatherHead['date2'] = [dt.datetime.strptime(d,"%d-%b-%Y %H:%M") for d in weatherHead['date'] ]
weatherHead['date_for_merge'] = weatherHead['date2'].dt.round('H')
weatherHead = weatherHead[(weatherHead['date2'] >= '2019-04-01') & (weatherHead['date2'] < '2022-04-01')]
may_weatherHead =weatherHead.drop(['date_for_merge','date'], axis=1)
may_weatherHead.columns = ['may_ind', 'may_rain', 'may_ind.1', 'may_temp', 'may_ind.2', 'may_wetb', 'may_dewpt', 'may_vappr','may_rhum', 'may_msl', 'may_ind.3', 'may_wdsp', 'may_ind.4', 'may_wddir', 'date2']

weatherHead = pd.read_csv('hly2075.csv',skiprows = (0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15))
weatherHead['date2'] = [dt.datetime.strptime(d,"%d-%b-%Y %H:%M") for d in weatherHead['date'] ]
weatherHead['date_for_merge'] = weatherHead['date2'].dt.round('H')
weatherHead = weatherHead[(weatherHead['date2'] >= '2019-04-01') & (weatherHead['date2'] < '2022-04-01')]
sli_weatherHead =weatherHead.drop(['date_for_merge','date'], axis=1)
sli_weatherHead.columns = ['sli_ind', 'sli_rain', 'sli_ind.1', 'sli_temp', 'sli_ind.2', 'sli_wetb', 'sli_dewpt', 'sli_vappr','sli_rhum', 'sli_msl', 'sli_ind.3', 'sli_wdsp', 'sli_ind.4', 'sli_wddir', 'date2']

weatherHead = pd.read_csv('hly775.csv',skiprows = (0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15))
weatherHead['date2'] = [dt.datetime.strptime(d,"%d-%b-%Y %H:%M") for d in weatherHead['date'] ]
weatherHead['date_for_merge'] = weatherHead['date2'].dt.round('H')
weatherHead = weatherHead[(weatherHead['date2'] >= '2019-04-01') & (weatherHead['date2'] < '2022-04-01')]
cor_weatherHead =weatherHead.drop(['date_for_merge','date'], axis=1)
cor_weatherHead.columns = ['cor_ind', 'cor_rain', 'cor_ind.1', 'cor_temp', 'cor_ind.2', 'cor_wetb', 'cor_dewpt', 'cor_vappr','cor_rhum', 'cor_msl', 'cor_ind.3', 'cor_wdsp', 'cor_ind.4', 'cor_wddir', 'date2']


weatherHead = pd.read_csv('hly1475.csv',skiprows = (0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15))
weatherHead['date2'] = [dt.datetime.strptime(d,"%d-%b-%Y %H:%M") for d in weatherHead['date'] ]
weatherHead['date_for_merge'] = weatherHead['date2'].dt.round('H')
weatherHead = weatherHead[(weatherHead['date2'] >= '2019-04-01') & (weatherHead['date2'] < '2022-04-01')]
tip_weatherHead =weatherHead.drop(['date_for_merge','date'], axis=1)
tip_weatherHead.columns = ['tip_ind', 'tip_rain', 'tip_ind.1', 'tip_temp', 'tip_ind.2', 'tip_wetb', 'tip_dewpt', 'tip_vappr','tip_rhum', 'tip_msl', 'tip_ind.3', 'tip_wdsp', 'tip_ind.4', 'tip_wddir', 'date2']

weatherHead = pd.read_csv('hly1575.csv',skiprows = (0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21))
weatherHead['date2'] = [dt.datetime.strptime(d,"%d-%b-%Y %H:%M") for d in weatherHead['date'] ]
weatherHead['date_for_merge'] = weatherHead['date2'].dt.round('H')
weatherHead = weatherHead[(weatherHead['date2'] >= '2019-04-01') & (weatherHead['date2'] < '2022-04-01')]
don_weatherHead =weatherHead.drop(['date_for_merge','date'], axis=1)
don_weatherHead.columns = ['ind', 'don_rain', 'don_ind.1', 'don_temp', 'don_ind.2', 'don_wetb', 'don_dewpt', 'don_vappr', 'don_rhum', 'don_msl', 'don_ind.3', 'don_wdsp', 'don_ind.4', 'don_wddir', 'don_ww', 'don_w', 'don_sun', 'don_vis', 'don_clht', 'don_clamt', 'date2']



weatherHead = pd.merge(ker_weatherHead, pd.merge(dub_weatherHead, pd.merge(cla_weatherHead, pd.merge(may_weatherHead,pd.merge(sli_weatherHead, pd.merge(cor_weatherHead, pd.merge(don_weatherHead,tip_weatherHead, on = 'date2'),on = 'date2'), on = 'date2'),on = 'date2'), on = 'date2'), on = 'date2'), on = 'date2')


wind = pd.read_csv('wind19.csv')
demand = pd.read_csv('demand19.csv')
generation = pd.read_csv('generation19.csv')
#forecastWind = pd.read_csv('forecastWind.csv')
#interconnection = pd.read_csv('interconnection19.csv')

combined19 = pd.merge(generation ,pd.merge(wind,demand,on='DATE & TIME') ,on = 'DATE & TIME')

wind = pd.read_csv('wind22.csv')
demand = pd.read_csv('demand22.csv')
generation = pd.read_csv('generation22.csv')
#forecastWind = pd.read_csv('forecastWind22.csv')
#interconnection = pd.read_csv('interconnection22.csv')

combined20 = pd.merge(generation ,pd.merge(wind,demand,on='DATE & TIME') ,on = 'DATE & TIME')

wind = pd.read_csv('wind21.csv')
demand = pd.read_csv('demand21.csv')
generation = pd.read_csv('generation21.csv')
#forecastWind = pd.read_csv('forecastWind21.csv')
#interconnection = pd.read_csv('interconnection21.csv')

combined21 = pd.merge(generation ,pd.merge(wind,demand,on='DATE & TIME') ,on = 'DATE & TIME')

#combined = pd.merge(combined19,pd.merge(combined20,combined21,on='DATE & TIME') ,on = 'DATE & TIME')
combined = combined21.append(combined20.append(combined19))

#wind = wind.drop([' REGION'], axis = 1)
#demand = demand.drop([' REGION'], axis = 1)
#generation = generation.drop([' REGION'], axis = 1)
#forecastWind = forecastWind.drop([' REGION'], axis = 1)
#interconnection = interconnection.drop(['REGION'], axis = 1)

#combined= pd.merge(wind,demand,on='DATE & TIME',how='outer')
#combined= pd.merge(generation ,pd.merge(wind,demand,on='DATE & TIME') ,on = 'DATE & TIME')

combined['date2'] = [dt.datetime.strptime(d,"%d %B %Y %H:%M") for d in combined["DATE & TIME"] ]
combined['minute'] = combined['date2'].dt.minute
combined = combined[combined['minute'] == 0]
combined= combined.sort_values('date2')
#combined['month'] = combined['date2'].dt.month

combined.columns = ['Date&Time','ActualGenerationMW','Region','ForecastDemand','ActualWind','Region2','ActualDemand','ForecastDemand','Region3','date2','minute']
#combined.drop('Region',1)
#combined.drop('Region2',1)
#combined.drop('Region3',1)
combined = combined.drop(['Region','Region2','Region3'],axis = 1)

weatherMerged = pd.merge(combined,weatherHead, on = 'date2')
weatherMerged = weatherMerged.sort_values('date2')

#weatherMerged.drop(['DATE & TIME',"date_for_merge"],axis = 1)
print(weatherMerged.to_csv('weatherMerged.csv', index=False))

