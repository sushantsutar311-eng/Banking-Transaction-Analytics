
import pandas as pd
import sqlite3

# Load the CSV dataset
df = pd.read_csv("data/bank_transactions_data_2.csv")

# Create a SQLite database
connection = sqlite3.connect("banking.db")

# Store the dataset in a database table
df.to_sql("transactions", connection, if_exists="replace", index=False)

# Verify the imported data
count = pd.read_sql_query(
    "SELECT COUNT(*) AS total_transactions FROM transactions",
    connection
)

print(count)

connection.close()
print("Database created successfully!")