# ///////////////////\\\\\\\\\\\\\\\\\\\
# |||||||||CHARGE TIME ANALYTICS |||||||
# \\\\\\\\\\\\\\\\\\\///////////////////


![image](https://github.com/kevinTheQuigley/chargeTimeAnalytics/blob/master/dashboard/chargeTimeDashboard/chargeTimeAnalytics.png)


Hello! 
The goal of this project is to provide analytics to energy consumers to predict optimized charging times for batteries and EV's based on the weather.
The following are generated
- A set of AI algorithms which predict the total supply of wind electricity
- A comparison of each algorithm against a set baseline from Eirgrid
- An analytics graph showing a forecast highlighting windows of cheaper-then-average electricity 


For more information on the project, please see the Thesis. It is also located on overleaf:- 
https://www.overleaf.com/read/dwbzdpvkynrg

These files pull data from Met.ie, smartgriddashboard.com and semo.ie 

| File | Purpose |
|------|---------|
| dataDownloadAndJoin.sh | Executes all download scripts, moves downloaded data to storage and joins historical data |
| download/fileDownloader*_*.sh | Downloads 1 years worth of data from the smartGridDashboard website. Files downloaded singly to minimize site crash risk |
| download/metDownload.sh | Downloads Historical data from Met Eireann for eight stations |
| data/joiner.py | Joins SmartGrid and Met data together into a signle file (weatherMerged.csv) |
| download/timeGenerator.py | Generates a list of date-times, starting from now and working back 1 month (dateList.txt) |
| download/priceFinder.sh | Using dateList.txt, pulls all xml files into a single electricity price csv (ePrice.csv) |
| forecastData/forecastPull.sh | Forecasts for the eight weather stations across Ireland are generated for the coming week |
| ChargeTimeAnalyticsNotebookFinal.ipynb | This notebook generates an analysis of all csv's and generates a transformed csv, chargeML.csv|
| ChargeTimeMLFinal.ipynb | This notebook analysis various ML algorithms and saves some in the models/ folder |
| predictionTraining.ipynb | This notebook uses the forecast weather data for the coming week to generate a forecast image (forecast.png) of the coming predicted charge time windows |
| dashboard/chargeTimeDashboard/streamlit_app.py | This python file is used to generate a rudimentary analytics dashboard using the forecasted charge windows |


### Execution Order
All notebooks are executed using jupyter notebook

Data download- (In a linux Terminal) 
- bash downloadAndJoin.sh

Data Analytics:- 
- Execute ChargeTimeAnalyticsNotebookFinal.ipynb

ML model generation (Note this must be executed on a suitable linux server, as some packages are unix-specfic
- Execute ChargeTimeMLFinal.ipynb

Prediction Generation
- Execute predictionTraining.ipynb

Dashboard creation
- streamlit run streamlit_app.py --server.port 8070


### Licenses
License
- EirGrid Group Data: Supported by EirGrid Group Data, data sourced from:- www.smartgriddashboard.com under Open Data Licence.
- Met Éirean data: Copyright Met Éireann. Data sourced from  www.met.ie. This data is published under a Creative Commons Attribution 4.0 International (CC BY 4.0).
- The notebooks, and other documents are released under a CC BY-NC-SA 4.0 license. 

