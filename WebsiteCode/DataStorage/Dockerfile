# Use the official PostgreSQL image as the base image
FROM postgres:latest

# Set environment variables for PostgreSQL
ENV POSTGRES_USER postgres
ENV POSTGRES_PASSWORD something 
ENV POSTGRES_DB load_forecasting

# Expose the default PostgreSQL port
EXPOSE 5432

# Copy initialization scripts or SQL files (if needed)
# COPY ./init.sql /docker-entrypoint-initdb.d/ 

# The default PostgreSQL image handles the database server startup