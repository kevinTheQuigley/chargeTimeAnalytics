import subprocess

import subprocess

# Start the three subprocesses concurrently
process1 = subprocess.Popen(["python", "./WebsiteCode/Download/pullWeatherForecast.py"])
process2 = subprocess.Popen(["python", "./WebsiteCode/Download/semoLoadForecastSingle.py"])
process3 = subprocess.Popen(["python", "./WebsiteCode/Download/semoImbalanceForecastSingle.py"])

# Wait for all three to finish
process1.wait()
process2.wait()
process3.wait()

# Now run the pushDataToSQLTable.py script after the first three have completed
subprocess.run(["python", "./WebsiteCode/Download/pushDataToSQLTable.py"])
