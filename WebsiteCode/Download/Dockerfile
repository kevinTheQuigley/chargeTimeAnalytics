# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the Python script into the container at /app
COPY ./* /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    libpq-dev gcc

RUN apt-get update && apt-get install -y procps

# Install any dependencies (optional)
RUN pip install requests  # Include necessary packages here
RUN pip install sqlalchemy
RUN pip install psycopg2
RUN pip install pytz
RUN pip install requests
RUN pip install pandas


# Install cron and other dependencies
RUN apt-get update && apt-get install -y cron && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

COPY mycron /etc/cron.d/mycron
RUN chmod 0644 /etc/cron.d/mycron
RUN crontab /etc/cron.d/mycron

# Install rsyslog
RUN apt-get update && apt-get install -y rsyslog && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Create a symlink for 'python' pointing to 'python3'
RUN ln -s /usr/local/bin/python3 /usr/bin/python

# Start rsyslog alongside cron
CMD service rsyslog start && cron -f

