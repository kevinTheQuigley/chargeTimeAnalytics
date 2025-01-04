import os
import pandas as pd
from sqlalchemy import create_engine

# Database connection details
db_user = "postgres"
db_password = "something"
db_host = "localhost"
db_port = "5432"
db_name = "load_forecasting"



# File path and date-specific file selection
base_dir = "WebsiteCode/DataStorage/RawData/Semo/ImbalanceForecast"
file_date = "2025-01-04"  # Adjust this date as needed
file_name = f"HourlyImbalanceForecast_{file_date}.csv"
file_path = os.path.join(base_dir, file_name)

# Check if the file exists
if not os.path.exists(file_path):
    raise FileNotFoundError(f"The file {file_name} does not exist in the directory {base_dir}.")

# Define the database table name
table_name = "hourly_imbalance_forecast"

# Read the CSV file into a pandas DataFrame
print(f"Reading data from {file_path}...")
data = pd.read_csv(file_path)

# Clean and prepare the data if necessary
# For example, converting date-time columns to proper datetime format
print("Processing data...")
data['TradeDate'] = pd.to_datetime(data['TradeDate'])
data['StartTime'] = pd.to_datetime(data['StartTime'])
data['EndTime'] = pd.to_datetime(data['EndTime'])

# Establish a connection to the PostgreSQL database
engine = create_engine(f"postgresql+psycopg2://{db_user}:{db_password}@{db_host}:{db_port}/{db_name}")

# Load the data into the database
print("Loading data into the database...")
data.to_sql(table_name, engine, if_exists='replace', index=False)

print(f"Data successfully loaded into the '{table_name}' table in the '{db_name}' database.")
