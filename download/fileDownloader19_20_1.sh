#!/bin/bash
wget  -O Ap2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-Apr-2019%2000:00&dateto=30-Apr-2019%2023:59"
wget  -O Ma2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-May-2019%2000:00&dateto=31-May-2019%2023:59"
wget  -O Ju2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-Jun-2019%2000:00&dateto=30-Jun-2019%2023:59"
wget  -O Jy2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-Jul-2019%2000:00&dateto=31-Jul-2019%2023:59"
wget  -O Au2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-Aug-2019%2000:00&dateto=31-Aug-2019%2023:59"
wget  -O Se2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-Sep-2019%2000:00&dateto=30-Sep-2019%2023:59"
wget  -O Oc2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-Oct-2019%2000:00&dateto=31-Oct-2019%2023:59"
wget  -O No2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-Nov-2019%2000:00&dateto=30-Nov-2019%2023:59"
wget  -O De2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-Dec-2019%2000:00&dateto=31-Dec-2019%2023:59"
wget  -O Ja2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-Jan-2020%2000:00&dateto=31-Jan-2020%2023:59"
wget  -O Fe2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-Feb-2020%2000:00&dateto=28-Feb-2020%2023:59"
wget  -O Ma2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-Mar-2020%2000:00&dateto=31-Mar-2020%2023:59"
csvstack *202*.csv > wind.csv
rm -rf *202*.csv


wget  -O Ap2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-Apr-2019%2000:00&dateto=30-Apr-2019%2023:59"
wget  -O Ma2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-May-2019%2000:00&dateto=31-May-2019%2023:59"
wget  -O Ju2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-Jun-2019%2000:00&dateto=30-Jun-2019%2023:59"
wget  -O Jy2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-Jul-2019%2000:00&dateto=31-Jul-2019%2023:59"
wget  -O Au2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-Aug-2019%2000:00&dateto=31-Aug-2019%2023:59"
wget  -O Se2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-Sep-2019%2000:00&dateto=30-Sep-2019%2023:59"
wget  -O Oc2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-Oct-2019%2000:00&dateto=31-Oct-2019%2023:59"
wget  -O No2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-Nov-2019%2000:00&dateto=30-Nov-2019%2023:59"
wget  -O De2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-Dec-2019%2000:00&dateto=31-Dec-2019%2023:59"
wget  -O Ja2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-Jan-2020%2000:00&dateto=31-Jan-2020%2023:59"
wget  -O Fe2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-Feb-2020%2000:00&dateto=28-Feb-2020%2023:59"
wget  -O Ma2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-Mar-2020%2000:00&dateto=31-Mar-2020%2023:59"
csvstack *202*.csv > demand.csv
rm -rf *202*.csv


wget  -O Ap2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-Apr-2019%2000:00&dateto=30-Apr-2019%2023:59"
wget  -O Ma2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-May-2019%2000:00&dateto=31-May-2019%2023:59"
wget  -O Ju2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-Jun-2019%2000:00&dateto=30-Jun-2019%2023:59"
wget  -O Jy2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-Jul-2019%2000:00&dateto=31-Jul-2019%2023:59"
wget  -O Au2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-Aug-2019%2000:00&dateto=31-Aug-2019%2023:59"
wget  -O Se2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-Sep-2019%2000:00&dateto=30-Sep-2019%2023:59"
wget  -O Oc2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-Oct-2019%2000:00&dateto=31-Oct-2019%2023:59"
wget  -O No2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-Nov-2019%2000:00&dateto=30-Nov-2019%2023:59"
wget  -O De2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-Dec-2019%2000:00&dateto=31-Dec-2019%2023:59"
wget  -O Ja2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-Jan-2020%2000:00&dateto=31-Jan-2020%2023:59"
wget  -O Fe2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-Feb-2020%2000:00&dateto=28-Feb-2020%2023:59"
wget  -O Ma2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-Mar-2020%2000:00&dateto=31-Mar-2020%2023:59"
csvstack *202*.csv > generation.csv
rm -rf *202*.csv



wget  -O Ap2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-Apr-2019%2000:00&dateto=30-Apr-2019%2023:59"
wget  -O Ma2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-May-2019%2000:00&dateto=31-May-2019%2023:59"
wget  -O Ju2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-Jun-2019%2000:00&dateto=30-Jun-2019%2023:59"
wget  -O Jy2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-Jul-2019%2000:00&dateto=31-Jul-2019%2023:59"
wget  -O Au2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-Aug-2019%2000:00&dateto=31-Aug-2019%2023:59"
wget  -O Se2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-Sep-2019%2000:00&dateto=30-Sep-2019%2023:59"
wget  -O Oc2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-Oct-2019%2000:00&dateto=31-Oct-2019%2023:59"
wget  -O No2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-Nov-2019%2000:00&dateto=30-Nov-2019%2023:59"
wget  -O De2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-Dec-2019%2000:00&dateto=31-Dec-2019%2023:59"
wget  -O Ja2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-Jan-2020%2000:00&dateto=31-Jan-2020%2023:59"
wget  -O Fe2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-Feb-2020%2000:00&dateto=28-Feb-2020%2023:59"
wget  -O Ma2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-Mar-2020%2000:00&dateto=31-Mar-2020%2023:59"
csvstack *202*.csv > interconnection.csv
rm -rf *202*.csv



