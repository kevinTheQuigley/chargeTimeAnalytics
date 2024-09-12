#!/bin/bash
wget  -O Ap2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=frequency&region=ALL&datefrom=01-Apr-2019%2000:00&dateto=30-Apr-2019%2023:59"
wget  -O Ma2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=frequency&region=ALL&datefrom=01-May-2019%2000:00&dateto=31-May-2019%2023:59"
wget  -O Ju2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=frequency&region=ALL&datefrom=01-Jun-2019%2000:00&dateto=30-Jun-2019%2023:59"
wget  -O Jy2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=frequency&region=ALL&datefrom=01-Jul-2019%2000:00&dateto=31-Jul-2019%2023:59"
wget  -O Au2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=frequency&region=ALL&datefrom=01-Aug-2019%2000:00&dateto=31-Aug-2019%2023:59"
wget  -O Se2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=frequency&region=ALL&datefrom=01-Sep-2019%2000:00&dateto=30-Sep-2019%2023:59"
wget  -O Oc2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=frequency&region=ALL&datefrom=01-Oct-2019%2000:00&dateto=31-Oct-2019%2023:59"
wget  -O No2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=frequency&region=ALL&datefrom=01-Nov-2019%2000:00&dateto=30-Nov-2019%2023:59"
wget  -O De2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=frequency&region=ALL&datefrom=01-Dec-2019%2000:00&dateto=31-Dec-2019%2023:59"
wget  -O Ja2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=frequency&region=ALL&datefrom=01-Jan-2020%2000:00&dateto=31-Jan-2020%2023:59"
wget  -O Fe2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=frequency&region=ALL&datefrom=01-Feb-2020%2000:00&dateto=28-Feb-2020%2023:59"
wget  -O Ma2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=frequency&region=ALL&datefrom=01-Mar-2020%2000:00&dateto=31-Mar-2020%2023:59"
csvstack *202*.csv > frequency.csv
rm -rf *202*.csv


wget  -O Ap2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=SnspAll&region=ALL&datefrom=01-Apr-2019%2000:00&dateto=30-Apr-2019%2023:59"
wget  -O Ma2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=SnspAll&region=ALL&datefrom=01-May-2019%2000:00&dateto=31-May-2019%2023:59"
wget  -O Ju2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=SnspAll&region=ALL&datefrom=01-Jun-2019%2000:00&dateto=30-Jun-2019%2023:59"
wget  -O Jy2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=SnspAll&region=ALL&datefrom=01-Jul-2019%2000:00&dateto=31-Jul-2019%2023:59"
wget  -O Au2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=SnspAll&region=ALL&datefrom=01-Aug-2019%2000:00&dateto=31-Aug-2019%2023:59"
wget  -O Se2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=SnspAll&region=ALL&datefrom=01-Sep-2019%2000:00&dateto=30-Sep-2019%2023:59"
wget  -O Oc2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=SnspAll&region=ALL&datefrom=01-Oct-2019%2000:00&dateto=31-Oct-2019%2023:59"
wget  -O No2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=SnspAll&region=ALL&datefrom=01-Nov-2019%2000:00&dateto=30-Nov-2019%2023:59"
wget  -O De2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=SnspAll&region=ALL&datefrom=01-Dec-2019%2000:00&dateto=31-Dec-2019%2023:59"
wget  -O Ja2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=SnspAll&region=ALL&datefrom=01-Jan-2020%2000:00&dateto=31-Jan-2020%2023:59"
wget  -O Fe2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=SnspAll&region=ALL&datefrom=01-Feb-2020%2000:00&dateto=28-Feb-2020%2023:59"
wget  -O Ma2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=SnspAll&region=ALL&datefrom=01-Mar-2020%2000:00&dateto=31-Mar-2020%2023:59"
csvstack *202*.csv > SnspAll.csv
rm -rf *202*.csv


wget  -O Ap2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=co2Intensity&region=ALL&datefrom=01-Apr-2019%2000:00&dateto=30-Apr-2019%2023:59"
wget  -O Ma2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=co2Intensity&region=ALL&datefrom=01-May-2019%2000:00&dateto=31-May-2019%2023:59"
wget  -O Ju2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=co2Intensity&region=ALL&datefrom=01-Jun-2019%2000:00&dateto=30-Jun-2019%2023:59"
wget  -O Jy2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=co2Intensity&region=ALL&datefrom=01-Jul-2019%2000:00&dateto=31-Jul-2019%2023:59"
wget  -O Au2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=co2Intensity&region=ALL&datefrom=01-Aug-2019%2000:00&dateto=31-Aug-2019%2023:59"
wget  -O Se2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=co2Intensity&region=ALL&datefrom=01-Sep-2019%2000:00&dateto=30-Sep-2019%2023:59"
wget  -O Oc2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=co2Intensity&region=ALL&datefrom=01-Oct-2019%2000:00&dateto=31-Oct-2019%2023:59"
wget  -O No2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=co2Intensity&region=ALL&datefrom=01-Nov-2019%2000:00&dateto=30-Nov-2019%2023:59"
wget  -O De2019.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=co2Intensity&region=ALL&datefrom=01-Dec-2019%2000:00&dateto=31-Dec-2019%2023:59"
wget  -O Ja2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=co2Intensity&region=ALL&datefrom=01-Jan-2020%2000:00&dateto=31-Jan-2020%2023:59"
wget  -O Fe2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=co2Intensity&region=ALL&datefrom=01-Feb-2020%2000:00&dateto=28-Feb-2020%2023:59"
wget  -O Ma2020.csv "https://www.smartgriddashboard.com/DashboardService.svc/csv?area=co2Intensity&region=ALL&datefrom=01-Mar-2020%2000:00&dateto=31-Mar-2020%2023:59"
csvstack *202*.csv > co2Intensity.csv
rm -rf *202*.csv
