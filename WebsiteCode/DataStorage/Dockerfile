# Use an official Python runtime as a base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the necessary files to the container
COPY load_csv_to_db.py .
COPY WebsiteCode/DataStorage/RawData/Semo/LoadForecasting/LoadForecast_2024-09-12.csv ./WebsiteCode/DataStorage/RawData/Semo/LoadForecasting/

# Install Python dependencies
RUN pip install pandas sqlalchemy psycopg2

# Run the Python script
CMD ["python", "load_csv_to_db.py"]
