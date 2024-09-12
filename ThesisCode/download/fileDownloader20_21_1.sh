#!/bin/bash

wget  -O Ap2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-Apr-2020%2000:00&dateto=30-Apr-2020%2023:59"
wget  -O Ma2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-May-2020%2000:00&dateto=31-May-2020%2023:59"
wget  -O Ju2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-Jun-2020%2000:00&dateto=30-Jun-2020%2023:59"
wget  -O Jy2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-Jul-2020%2000:00&dateto=31-Jul-2020%2023:59"
wget  -O Au2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-Aug-2020%2000:00&dateto=31-Aug-2020%2023:59"
wget  -O Se2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-Sep-2020%2000:00&dateto=30-Sep-2020%2023:59"
wget  -O Oc2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-Oct-2020%2000:00&dateto=31-Oct-2020%2023:59"
wget  -O No2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-Nov-2020%2000:00&dateto=30-Nov-2020%2023:59"
wget  -O De2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-Dec-2020%2000:00&dateto=31-Dec-2020%2023:59"
wget  -O Ja2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-Jan-2021%2000:00&dateto=31-Jan-2021%2023:59"
wget  -O Fe2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-Feb-2021%2000:00&dateto=28-Feb-2021%2023:59"
wget  -O Ma2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-Mar-2021%2000:00&dateto=31-Mar-2021%2023:59"
csvstack *202*.csv > wind21.csv
rm -rf *202*.csv


wget  -O Ap2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-Apr-2020%2000:00&dateto=30-Apr-2020%2023:59"
wget  -O Ma2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-May-2020%2000:00&dateto=31-May-2020%2023:59"
wget  -O Ju2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-Jun-2020%2000:00&dateto=30-Jun-2020%2023:59"
wget  -O Jy2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-Jul-2020%2000:00&dateto=31-Jul-2020%2023:59"
wget  -O Au2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-Aug-2020%2000:00&dateto=31-Aug-2020%2023:59"
wget  -O Se2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-Sep-2020%2000:00&dateto=30-Sep-2020%2023:59"
wget  -O Oc2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-Oct-2020%2000:00&dateto=31-Oct-2020%2023:59"
wget  -O No2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-Nov-2020%2000:00&dateto=30-Nov-2020%2023:59"
wget  -O De2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-Dec-2020%2000:00&dateto=31-Dec-2020%2023:59"
wget  -O Ja2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-Jan-2021%2000:00&dateto=31-Jan-2021%2023:59"
wget  -O Fe2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-Feb-2021%2000:00&dateto=28-Feb-2021%2023:59"
wget  -O Ma2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-Mar-2021%2000:00&dateto=31-Mar-2021%2023:59"
csvstack *202*.csv > demand21.csv
rm -rf *202*.csv


wget  -O Ap2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-Apr-2020%2000:00&dateto=30-Apr-2020%2023:59"
wget  -O Ma2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-May-2020%2000:00&dateto=31-May-2020%2023:59"
wget  -O Ju2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-Jun-2020%2000:00&dateto=30-Jun-2020%2023:59"
wget  -O Jy2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-Jul-2020%2000:00&dateto=31-Jul-2020%2023:59"
wget  -O Au2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-Aug-2020%2000:00&dateto=31-Aug-2020%2023:59"
wget  -O Se2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-Sep-2020%2000:00&dateto=30-Sep-2020%2023:59"
wget  -O Oc2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-Oct-2020%2000:00&dateto=31-Oct-2020%2023:59"
wget  -O No2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-Nov-2020%2000:00&dateto=30-Nov-2020%2023:59"
wget  -O De2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-Dec-2020%2000:00&dateto=31-Dec-2020%2023:59"
wget  -O Ja2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-Jan-2021%2000:00&dateto=31-Jan-2021%2023:59"
wget  -O Fe2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-Feb-2021%2000:00&dateto=28-Feb-2021%2023:59"
wget  -O Ma2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-Mar-2021%2000:00&dateto=31-Mar-2021%2023:59"
csvstack *202*.csv > generation21.csv
rm -rf *202*.csv



wget  -O Ap2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-Apr-2020%2000:00&dateto=30-Apr-2020%2023:59"
wget  -O Ma2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-May-2020%2000:00&dateto=31-May-2020%2023:59"
wget  -O Ju2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-Jun-2020%2000:00&dateto=30-Jun-2020%2023:59"
wget  -O Jy2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-Jul-2020%2000:00&dateto=31-Jul-2020%2023:59"
wget  -O Au2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-Aug-2020%2000:00&dateto=31-Aug-2020%2023:59"
wget  -O Se2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-Sep-2020%2000:00&dateto=30-Sep-2020%2023:59"
wget  -O Oc2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-Oct-2020%2000:00&dateto=31-Oct-2020%2023:59"
wget  -O No2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-Nov-2020%2000:00&dateto=30-Nov-2020%2023:59"
wget  -O De2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-Dec-2020%2000:00&dateto=31-Dec-2020%2023:59"
wget  -O Ja2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-Jan-2021%2000:00&dateto=31-Jan-2021%2023:59"
wget  -O Fe2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-Feb-2021%2000:00&dateto=28-Feb-2021%2023:59"
wget  -O Ma2021.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-Mar-2021%2000:00&dateto=31-Mar-2021%2023:59"
csvstack *202*.csv > interconnection21.csv
rm -rf *202*.csv

