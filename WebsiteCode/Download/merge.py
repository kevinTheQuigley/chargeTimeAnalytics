import os
import pandas as pd

# Define the folder path where the files are saved
folder_path = "WebsiteCode/DataStorage/RawData/SmartGrid"

# Function to merge CSVs for a given area and year into a single CSV, and delete the old files
def merge_and_cleanup_csv(area, year):
    # List to hold dataframes
    dfs = []
    # List to hold file paths for deletion
    files_to_delete = []
    
    # Loop through all files in the folder
    for filename in os.listdir(folder_path):
        # Check if the filename matches the area and year, and follows the monthly pattern
        if filename.startswith(f"{area}_{year}_") and filename.endswith(".csv"):
            # Create the full file path
            file_path = os.path.join(folder_path, filename)
            
            # Read the CSV into a dataframe
            df = pd.read_csv(file_path)
            
            # Append the dataframe to the list
            dfs.append(df)
            
            # Add the file to the list for deletion
            files_to_delete.append(file_path)
    
    # Concatenate all dataframes into one if any CSVs were found
    if dfs:
        combined_df = pd.concat(dfs)
        
        # Save the combined dataframe to a new CSV file
        output_filename = f"{area}_{year}.csv"
        output_file_path = os.path.join(folder_path, output_filename)
        
        # Check if the combined file already exists and prevent deletion if the merge fails
        if not os.path.exists(output_file_path):
            combined_df.to_csv(output_file_path, index=False)
            print(f"Combined and saved: {output_file_path}")
            
            # Delete the old files after successful merge
            for file_path in files_to_delete:
                os.remove(file_path)
                print(f"Deleted: {file_path}")
        else:
            print(f"Merged file {output_file_path} already exists. No files were deleted.")
    else:
        print(f"No CSV files found for {area} in {year}")

# Example usage
areas = ["windActual", "demandActual", "generationActual", "interconnection"]
years = [2019, 2020, 2021, 2022, 2023, 2024]

# Loop through each area and year, merging the files and deleting the old ones
for area in areas:
    for year in years:
        merge_and_cleanup_csv(area, year)
