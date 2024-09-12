#!/bin/bash
wget https://cli.fusio.net/cli/climate_data/webdata/hly175.zip
echo Downloading Historical Data for 2022/2021
unzip hly175.zip
rm -rf hly175.zip Data_Licence.txt KeyHourly.txt

wget  -O Ap2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-Apr-2021%2000:00&dateto=30-Apr-2021%2023:59"
wget  -O Ma2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-May-2021%2000:00&dateto=31-May-2021%2023:59"
wget  -O Ju2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-Jun-2021%2000:00&dateto=30-Jun-2021%2023:59"
wget  -O Jy2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-Jul-2021%2000:00&dateto=31-Jul-2021%2023:59"
wget  -O Au2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-Aug-2021%2000:00&dateto=31-Aug-2021%2023:59"
wget  -O Se2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-Sep-2021%2000:00&dateto=30-Sep-2021%2023:59"
wget  -O Oc2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-Oct-2021%2000:00&dateto=31-Oct-2021%2023:59"
wget  -O No2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-Nov-2021%2000:00&dateto=30-Nov-2021%2023:59"
wget  -O De2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-Dec-2021%2000:00&dateto=31-Dec-2021%2023:59"
wget  -O Ja2022.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-Jan-2022%2000:00&dateto=31-Jan-2022%2023:59"
wget  -O Fe2022.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-Feb-2022%2000:00&dateto=28-Feb-2022%2023:59"
wget  -O Ma2022.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-Mar-2022%2000:00&dateto=31-Mar-2022%2023:59"
csvstack *202*.csv > wind.csv
rm -rf *202*.csv


wget  -O Ap2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-Apr-2021%2000:00&dateto=30-Apr-2021%2023:59"
wget  -O Ma2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-May-2021%2000:00&dateto=31-May-2021%2023:59"
wget  -O Ju2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-Jun-2021%2000:00&dateto=30-Jun-2021%2023:59"
wget  -O Jy2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-Jul-2021%2000:00&dateto=31-Jul-2021%2023:59"
wget  -O Au2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-Aug-2021%2000:00&dateto=31-Aug-2021%2023:59"
wget  -O Se2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-Sep-2021%2000:00&dateto=30-Sep-2021%2023:59"
wget  -O Oc2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-Oct-2021%2000:00&dateto=31-Oct-2021%2023:59"
wget  -O No2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-Nov-2021%2000:00&dateto=30-Nov-2021%2023:59"
wget  -O De2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-Dec-2021%2000:00&dateto=31-Dec-2021%2023:59"
wget  -O Ja2022.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-Jan-2022%2000:00&dateto=31-Jan-2022%2023:59"
wget  -O Fe2022.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-Feb-2022%2000:00&dateto=28-Feb-2022%2023:59"
wget  -O Ma2022.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-Mar-2022%2000:00&dateto=31-Mar-2022%2023:59"
csvstack *202*.csv > demand.csv
rm -rf *202*.csv


wget  -O Ap2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-Apr-2021%2000:00&dateto=30-Apr-2021%2023:59"
wget  -O Ma2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-May-2021%2000:00&dateto=31-May-2021%2023:59"
wget  -O Ju2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-Jun-2021%2000:00&dateto=30-Jun-2021%2023:59"
wget  -O Jy2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-Jul-2021%2000:00&dateto=31-Jul-2021%2023:59"
wget  -O Au2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-Aug-2021%2000:00&dateto=31-Aug-2021%2023:59"
wget  -O Se2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-Sep-2021%2000:00&dateto=30-Sep-2021%2023:59"
wget  -O Oc2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-Oct-2021%2000:00&dateto=31-Oct-2021%2023:59"
wget  -O No2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-Nov-2021%2000:00&dateto=30-Nov-2021%2023:59"
wget  -O De2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-Dec-2021%2000:00&dateto=31-Dec-2021%2023:59"
wget  -O Ja2022.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-Jan-2022%2000:00&dateto=31-Jan-2022%2023:59"
wget  -O Fe2022.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-Feb-2022%2000:00&dateto=28-Feb-2022%2023:59"
wget  -O Ma2022.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-Mar-2022%2000:00&dateto=31-Mar-2022%2023:59"
csvstack *202*.csv > generation.csv
rm -rf *202*.csv



wget  -O Ap2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-Apr-2021%2000:00&dateto=30-Apr-2021%2023:59"
wget  -O Ma2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-May-2021%2000:00&dateto=31-May-2021%2023:59"
wget  -O Ju2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-Jun-2021%2000:00&dateto=30-Jun-2021%2023:59"
wget  -O Jy2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-Jul-2021%2000:00&dateto=31-Jul-2021%2023:59"
wget  -O Au2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-Aug-2021%2000:00&dateto=31-Aug-2021%2023:59"
wget  -O Se2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-Sep-2021%2000:00&dateto=30-Sep-2021%2023:59"
wget  -O Oc2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-Oct-2021%2000:00&dateto=31-Oct-2021%2023:59"
wget  -O No2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-Nov-2021%2000:00&dateto=30-Nov-2021%2023:59"
wget  -O De2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-Dec-2021%2000:00&dateto=31-Dec-2021%2023:59"
wget  -O Ja2022.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-Jan-2022%2000:00&dateto=31-Jan-2022%2023:59"
wget  -O Fe2022.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-Feb-2022%2000:00&dateto=28-Feb-2022%2023:59"
wget  -O Ma2022.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-Mar-2022%2000:00&dateto=31-Mar-2022%2023:59"
csvstack *202*.csv > interconnection.csv
rm -rf *202*.csv



wget  -O Ap2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=frequency&region=ALL&datefrom=01-Apr-2021%2000:00&dateto=30-Apr-2021%2023:59"
wget  -O Ma2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=frequency&region=ALL&datefrom=01-May-2021%2000:00&dateto=31-May-2021%2023:59"
wget  -O Ju2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=frequency&region=ALL&datefrom=01-Jun-2021%2000:00&dateto=30-Jun-2021%2023:59"
wget  -O Jy2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=frequency&region=ALL&datefrom=01-Jul-2021%2000:00&dateto=31-Jul-2021%2023:59"
wget  -O Au2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=frequency&region=ALL&datefrom=01-Aug-2021%2000:00&dateto=31-Aug-2021%2023:59"
wget  -O Se2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=frequency&region=ALL&datefrom=01-Sep-2021%2000:00&dateto=30-Sep-2021%2023:59"
wget  -O Oc2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=frequency&region=ALL&datefrom=01-Oct-2021%2000:00&dateto=31-Oct-2021%2023:59"
wget  -O No2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=frequency&region=ALL&datefrom=01-Nov-2021%2000:00&dateto=30-Nov-2021%2023:59"
wget  -O De2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=frequency&region=ALL&datefrom=01-Dec-2021%2000:00&dateto=31-Dec-2021%2023:59"
wget  -O Ja2022.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=frequency&region=ALL&datefrom=01-Jan-2022%2000:00&dateto=31-Jan-2022%2023:59"
wget  -O Fe2022.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=frequency&region=ALL&datefrom=01-Feb-2022%2000:00&dateto=28-Feb-2022%2023:59"
wget  -O Ma2022.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=frequency&region=ALL&datefrom=01-Mar-2022%2000:00&dateto=31-Mar-2022%2023:59"
csvstack *202*.csv > frequency.csv
rm -rf *202*.csv


wget  -O Ap2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=SnspAll&region=ALL&datefrom=01-Apr-2021%2000:00&dateto=30-Apr-2021%2023:59"
wget  -O Ma2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=SnspAll&region=ALL&datefrom=01-May-2021%2000:00&dateto=31-May-2021%2023:59"
wget  -O Ju2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=SnspAll&region=ALL&datefrom=01-Jun-2021%2000:00&dateto=30-Jun-2021%2023:59"
wget  -O Jy2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=SnspAll&region=ALL&datefrom=01-Jul-2021%2000:00&dateto=31-Jul-2021%2023:59"
wget  -O Au2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=SnspAll&region=ALL&datefrom=01-Aug-2021%2000:00&dateto=31-Aug-2021%2023:59"
wget  -O Se2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=SnspAll&region=ALL&datefrom=01-Sep-2021%2000:00&dateto=30-Sep-2021%2023:59"
wget  -O Oc2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=SnspAll&region=ALL&datefrom=01-Oct-2021%2000:00&dateto=31-Oct-2021%2023:59"
wget  -O No2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=SnspAll&region=ALL&datefrom=01-Nov-2021%2000:00&dateto=30-Nov-2021%2023:59"
wget  -O De2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=SnspAll&region=ALL&datefrom=01-Dec-2021%2000:00&dateto=31-Dec-2021%2023:59"
wget  -O Ja2022.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=SnspAll&region=ALL&datefrom=01-Jan-2022%2000:00&dateto=31-Jan-2022%2023:59"
wget  -O Fe2022.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=SnspAll&region=ALL&datefrom=01-Feb-2022%2000:00&dateto=28-Feb-2022%2023:59"
wget  -O Ma2022.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=SnspAll&region=ALL&datefrom=01-Mar-2022%2000:00&dateto=31-Mar-2022%2023:59"
csvstack *202*.csv > SnspAll.csv
rm -rf *202*.csv


wget  -O Ap2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=co2Intensity&region=ALL&datefrom=01-Apr-2021%2000:00&dateto=30-Apr-2021%2023:59"
wget  -O Ma2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=co2Intensity&region=ALL&datefrom=01-May-2021%2000:00&dateto=31-May-2021%2023:59"
wget  -O Ju2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=co2Intensity&region=ALL&datefrom=01-Jun-2021%2000:00&dateto=30-Jun-2021%2023:59"
wget  -O Jy2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=co2Intensity&region=ALL&datefrom=01-Jul-2021%2000:00&dateto=31-Jul-2021%2023:59"
wget  -O Au2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=co2Intensity&region=ALL&datefrom=01-Aug-2021%2000:00&dateto=31-Aug-2021%2023:59"
wget  -O Se2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=co2Intensity&region=ALL&datefrom=01-Sep-2021%2000:00&dateto=30-Sep-2021%2023:59"
wget  -O Oc2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=co2Intensity&region=ALL&datefrom=01-Oct-2021%2000:00&dateto=31-Oct-2021%2023:59"
wget  -O No2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=co2Intensity&region=ALL&datefrom=01-Nov-2021%2000:00&dateto=30-Nov-2021%2023:59"
wget  -O De2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=co2Intensity&region=ALL&datefrom=01-Dec-2021%2000:00&dateto=31-Dec-2021%2023:59"
wget  -O Ja2022.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=co2Intensity&region=ALL&datefrom=01-Jan-2022%2000:00&dateto=31-Jan-2022%2023:59"
wget  -O Fe2022.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=co2Intensity&region=ALL&datefrom=01-Feb-2022%2000:00&dateto=28-Feb-2022%2023:59"
wget  -O Ma2022.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=co2Intensity&region=ALL&datefrom=01-Mar-2022%2000:00&dateto=31-Mar-2022%2023:59"
csvstack *202*.csv > co2Intensity.csv
rm -rf *202*.csv
