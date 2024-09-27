# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the Python script into the container at /app
COPY pullWeatherForecast.py .

# Install any necessary Python dependencies
RUN pip install requests

# Install cron
RUN apt-get update && apt-get install -y cron

# Copy the cron job to the container
COPY mycron /etc/cron.d/mycron

# Give execution rights to the cron job
RUN chmod 0644 /etc/cron.d/mycron

# Apply cron job
RUN crontab /etc/cron.d/mycron

# Start cron and the Python script
CMD cron && python ./pullWeatherForecast.py
