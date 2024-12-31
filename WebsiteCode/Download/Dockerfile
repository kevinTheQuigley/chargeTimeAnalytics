# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the Python script into the container at /app
COPY ./* /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    libpq-dev gcc

# Install any dependencies (optional)
RUN pip install requests  # Include necessary packages here
RUN pip install sqlalchemy
RUN pip install psycopg2
RUN pip install pytz
RUN pip install requests
RUN pip install pandas

# Command to run the script
CMD ["python", "./hourlyForecastPull.py"]

RUN apt-get update && apt-get install -y cron
COPY mycron /etc/cron.d/mycron
RUN chmod 0644 /etc/cron.d/mycron
RUN crontab /etc/cron.d/mycron
CMD cron -f
