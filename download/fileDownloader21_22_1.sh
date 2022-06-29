#!/bin/bash

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
wget  -O Ap2022.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-Apr-2022%2000:00&dateto=31-Apr-2022%2023:59"
wget  -O My2022.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-May-2022%2000:00&dateto=31-May-2022%2023:59"
wget  -O Ju2022.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=windActual&region=ALL&datefrom=01-Jun-2022%2000:00&dateto=28-Jun-2022%2023:59"
csvstack *202*.csv > wind22.csv
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
wget  -O Ap2022.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-Apr-2022%2000:00&dateto=30-Apr-2022%2023:59"
wget  -O Ma2022.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-May-2022%2000:00&dateto=31-May-2022%2023:59"
wget  -O Ju2022.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=demandActual&region=ALL&datefrom=01-Jun-2022%2000:00&dateto=28-Jun-2022%2023:59"
csvstack *202*.csv > demand22.csv
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
wget  -O Ap2022.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-Apr-2022%2000:00&dateto=30-Apr-2022%2023:59"
wget  -O May2022.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-May-2022%2000:00&dateto=31-May-2022%2023:59"
wget  -O Ju2022.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=generationActual&region=ALL&datefrom=01-Jun-2022%2000:00&dateto=28-Jun-2022%2023:59"
csvstack *202*.csv > generation22.csv
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
wget  -O Ap2022.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-Apr-2022%2000:00&dateto=30-Apr-2022%2023:59"
wget  -O May2022.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-May-2022%2000:00&dateto=31-May-2022%2023:59"
wget  -O Ju2022.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=interconnection&region=ALL&datefrom=01-Jun-2022%2000:00&dateto=28-Jun-2022%2023:59"
csvstack *202*.csv > interconnection22.csv
rm -rf *202*.csv
