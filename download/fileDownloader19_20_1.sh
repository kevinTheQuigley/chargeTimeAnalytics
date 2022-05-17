#!/bin/bash
wget  -O Ap112019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-Apr-2019%2000:00&dateto=30-Apr-2019%2023:59"
wget  -O Ma112019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-May-2019%2000:00&dateto=31-May-2019%2023:59"
wget  -O Ju112019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-Jun-2019%2000:00&dateto=30-Jun-2019%2023:59"
wget  -O Jy112019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-Jul-2019%2000:00&dateto=31-Jul-2019%2023:59"
wget  -O Au112019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-Aug-2019%2000:00&dateto=31-Aug-2019%2023:59"
wget  -O Se112019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-Sep-2019%2000:00&dateto=30-Sep-2019%2023:59"
wget  -O Oc112019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-Oct-2019%2000:00&dateto=31-Oct-2019%2023:59"
wget  -O No112019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-Nov-2019%2000:00&dateto=30-Nov-2019%2023:59"
wget  -O De112019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-Dec-2019%2000:00&dateto=31-Dec-2019%2023:59"
wget  -O Ja112020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-Jan-2020%2000:00&dateto=31-Jan-2020%2023:59"
wget  -O Fe112020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-Feb-2020%2000:00&dateto=28-Feb-2020%2023:59"
wget  -O Ma112020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-Mar-2020%2000:00&dateto=31-Mar-2020%2023:59"
csvstack *1120*.csv > wind19.csv
rm -rf *202*.csv
rm -rf *201*.csv


wget  -O Ap112019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-Apr-2019%2000:00&dateto=30-Apr-2019%2023:59"
wget  -O Ma112019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-May-2019%2000:00&dateto=31-May-2019%2023:59"
wget  -O Ju112019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-Jun-2019%2000:00&dateto=30-Jun-2019%2023:59"
wget  -O Jy112019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-Jul-2019%2000:00&dateto=31-Jul-2019%2023:59"
wget  -O Au112019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-Aug-2019%2000:00&dateto=31-Aug-2019%2023:59"
wget  -O Se112019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-Sep-2019%2000:00&dateto=30-Sep-2019%2023:59"
wget  -O Oc112019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-Oct-2019%2000:00&dateto=31-Oct-2019%2023:59"
wget  -O No112019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-Nov-2019%2000:00&dateto=30-Nov-2019%2023:59"
wget  -O De112019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-Dec-2019%2000:00&dateto=31-Dec-2019%2023:59"
wget  -O Ja112020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-Jan-2020%2000:00&dateto=31-Jan-2020%2023:59"
wget  -O Fe112020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-Feb-2020%2000:00&dateto=28-Feb-2020%2023:59"
wget  -O Ma112020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-Mar-2020%2000:00&dateto=31-Mar-2020%2023:59"
csvstack *1120*.csv > demand19.csv
rm -rf *202*.csv
rm -rf *201*.csv


wget  -O Ap112019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-Apr-2019%2000:00&dateto=30-Apr-2019%2023:59"
wget  -O Ma112019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-May-2019%2000:00&dateto=31-May-2019%2023:59"
wget  -O Ju112019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-Jun-2019%2000:00&dateto=30-Jun-2019%2023:59"
wget  -O Jy112019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-Jul-2019%2000:00&dateto=31-Jul-2019%2023:59"
wget  -O Au112019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-Aug-2019%2000:00&dateto=31-Aug-2019%2023:59"
wget  -O Se112019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-Sep-2019%2000:00&dateto=30-Sep-2019%2023:59"
wget  -O Oc112019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-Oct-2019%2000:00&dateto=31-Oct-2019%2023:59"
wget  -O No112019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-Nov-2019%2000:00&dateto=30-Nov-2019%2023:59"
wget  -O De112019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-Dec-2019%2000:00&dateto=31-Dec-2019%2023:59"
wget  -O Ja112020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-Jan-2020%2000:00&dateto=31-Jan-2020%2023:59"
wget  -O Fe112020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-Feb-2020%2000:00&dateto=28-Feb-2020%2023:59"
wget  -O Ma112020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-Mar-2020%2000:00&dateto=31-Mar-2020%2023:59"
csvstack *1120*.csv > generation19.csv
rm -rf *202*.csv
rm -rf *201*.csv



wget  -O Ap112019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-Apr-2019%2000:00&dateto=30-Apr-2019%2023:59"
wget  -O Ma112019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-May-2019%2000:00&dateto=31-May-2019%2023:59"
wget  -O Ju112019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-Jun-2019%2000:00&dateto=30-Jun-2019%2023:59"
wget  -O Jy112019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-Jul-2019%2000:00&dateto=31-Jul-2019%2023:59"
wget  -O Au112019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-Aug-2019%2000:00&dateto=31-Aug-2019%2023:59"
wget  -O Se112019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-Sep-2019%2000:00&dateto=30-Sep-2019%2023:59"
wget  -O Oc112019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-Oct-2019%2000:00&dateto=31-Oct-2019%2023:59"
wget  -O No112019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-Nov-2019%2000:00&dateto=30-Nov-2019%2023:59"
wget  -O De112019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-Dec-2019%2000:00&dateto=31-Dec-2019%2023:59"
wget  -O Ja112020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-Jan-2020%2000:00&dateto=31-Jan-2020%2023:59"
wget  -O Fe112020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-Feb-2020%2000:00&dateto=28-Feb-2020%2023:59"
wget  -O Ma112020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-Mar-2020%2000:00&dateto=31-Mar-2020%2023:59"
csvstack *1120*.csv > interconnection19.csv
rm -rf *202*.csv
rm -rf *201*.csv



