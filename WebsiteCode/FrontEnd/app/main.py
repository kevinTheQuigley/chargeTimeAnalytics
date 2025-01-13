from flask import Flask, render_template
from sqlalchemy import create_engine

app = Flask(__name__)

# Database credentials (consider using environment variables for security)
db_user = "postgres"
db_password = "something" 
db_host = "load_forecasting_db"  
db_port = "5432"
db_name = "load_forecasting"

# Create a connection to PostgreSQL
engine = create_engine(f'postgresql://{db_user}:{db_password}@{db_host}:{db_port}/{db_name}')

@app.route("/")
def home():
    return render_template("index.html")

@app.route("/about/")
def about():
    return render_template("about.html")

@app.route("/dashboard/")
def dashboard():
    # Fetch data from PostgreSQL
    with engine.connect() as connection:
        result = connection.execute("SELECT * FROM your_table_name")  # Replace with your actual table name
        data = [dict(row) for row in result]  # Convert to a list of dictionaries

    return render_template("dashboard.html", data=data)

if __name__ == "__main__":
    app.run(debug=True)