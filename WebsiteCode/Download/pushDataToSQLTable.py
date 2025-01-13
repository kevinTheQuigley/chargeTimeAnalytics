import os
import requests
import xml.etree.ElementTree as ET
import csv
import pandas as pd
from sqlalchemy import create_engine, inspect  # Import inspect
from datetime import datetime

# PostgreSQL credentials (you might want to use environment variables here for better security)
db_user = os.getenv("DB_USER", "postgres")
db_password = os.getenv("DB_PASSWORD", "something")
db_host = os.getenv("DB_HOST", "load_forecasting_db")  # Or the service name of your database container if using Docker Compose
db_port = os.getenv("DB_PORT", "5432")
db_name = os.getenv("DB_NAME", "load_forecasting")

# Create a connection to PostgreSQL
engine = create_engine(f'postgresql://{db_user}:{db_password}@{db_host}:{db_port}/{db_name}')
inspector = inspect(engine) 

# --- Function to load data to the database ---
def load_data_to_db(data, table_name):
    """Loads data into the specified table, creating the table if it doesn't exist."""
    if table_name not in inspector.get_table_names():  # Use inspector to get table names  <-- Change here
        print(f"Creating table '{table_name}'...")
        data.to_sql(table_name, engine, if_exists='replace', index=False)
    else:
        print(f"Appending data to table '{table_name}'...")
        data.to_sql(table_name, engine, if_exists='append', index=False)
    print(f"Data successfully loaded into the '{table_name}' table.\n")

def process_and_load(base_dir, file_name, table_name, date_columns=[]):
    """Processes a CSV file and loads it into the database."""
    file_path = os.path.join(base_dir, file_name)

    try:
        print(f"Reading data from {file_path}...")
        df = pd.read_csv(file_path)

        print(f"Processing data for {table_name}...")
        for col in date_columns:
            df[col] = pd.to_datetime(df[col])

        print(f"Loading data into the '{table_name}' table...")
        load_data_to_db(df, table_name)

    except FileNotFoundError:
        print(f"Error: File not found - {file_path}")
    except Exception as e:
        print(f"Error processing and loading {file_name}: {e}")


# --- Main execution ---

# Define file paths
imbalance_base_dir = "WebsiteCode/DataStorage/RawData/Semo/ImbalanceForecast"
load_forecast_base_dir = "WebsiteCode/DataStorage/RawData/Semo/LoadForecasting"

# Get today's date and format it as YYYY-MM-DD
today = datetime.today().strftime('%Y-%m-%d')

# Imbalance Forecast File
imbalance_file_name = f"HourlyImbalanceForecast_{today}.csv"
imbalance_table_name = "hourly_imbalance_forecast"

# Load Forecast File
load_forecast_file_name = f"LoadForecast_{today}.csv"
load_forecast_table_name = "load_forecast"

# Process and load the Imbalance Forecast data
process_and_load(
    imbalance_base_dir, 
    imbalance_file_name, 
    imbalance_table_name, 
    date_columns=['TradeDate', 'StartTime', 'EndTime']
)

# Process and load the Load Forecast data
process_and_load(
    load_forecast_base_dir, 
    load_forecast_file_name, 
    load_forecast_table_name, 
    date_columns=['DeliveryDate', 'TradeDate', 'StartTime', 'EndTime']
)