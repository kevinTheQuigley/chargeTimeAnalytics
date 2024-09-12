#!/bin/bash
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
csvstack *202*.csv > frequency2222.csv
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
csvstack *202*.csv > SnspAll22.csv
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
csvstack *202*.csv > co2Intensity22.csv
rm -rf *202*.csv
