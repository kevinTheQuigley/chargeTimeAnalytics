import pandas as pd
from sqlalchemy import create_engine
from datetime import datetime

# PostgreSQL credentials
user = 'postgres'
password = 'something'
host = 'localhost'  # Container running PostgreSQL
port = '5432'
database = 'load_forecasting'

# Create a connection to PostgreSQL
engine = create_engine(f'postgresql://{user}:{password}@{host}:{port}/{database}')

# Get today's date and format it as YYYY-MM-DD
today = datetime.today().strftime('%Y-%m-%d')

# Dynamically create the path to the CSV file based on today's date
csv_file_path = f'WebsiteCode/DataStorage/RawData/Semo/LoadForecasting/LoadForecast_{today}.csv'

# Read the CSV file into a DataFrame
df = pd.read_csv(csv_file_path)

# Define the table name where you want to load the data
table_name = 'load_forecasting'

# Load the data into PostgreSQL (replace if the table already exists)
df.to_sql(table_name, engine, if_exists='replace', index=False)

print(f"Data from {csv_file_path} has been loaded into the '{table_name}' table.")
