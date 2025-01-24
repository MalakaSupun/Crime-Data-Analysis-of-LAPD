
# Operations Performed in the Code Notebook 📝

#
<p align="center">
  <img width="1024" src='../Images/LAPD_IMG_07.png' alt="Logo_01">
</p>

---

## Data Analysis 📊
This section is dedicated to analyzing the data and understanding its structure and contents.

## GPU Memory Management 🖥️
This code block is designed to manage GPU memory usage in TensorFlow. It lists the available physical GPUs, sets a memory limit for each GPU to avoid OOM errors, and optionally enables memory growth. It then lists the logical GPUs and prints the number of physical and logical GPUs. If any errors occur during this process, they are caught and printed.

## Python Libraries 📚
Import other Python libraries to the code.

```python
import pandas as pd
import numpy as np
```

## Load CSV 📂
Load the dataset from a CSV file into a pandas DataFrame.

```python
df = pd.read_csv(r'/home/malaka/Projects/CV_Projects/Crime_Data_Analysis_of_LAPD/Data_sets/Ready_dataset.csv')
df.head()
```

## Drop NaN Columns 🗑️
In this step, we will remove the columns:
1. 'Sunshine total(min)'
2. 'Wind Gust (km/h)'
3. 'Snow depth(mm)'

These columns are not required for our analysis and contain NaN values. Dropping them will help in reducing the complexity of the dataset.

```python
df = df.drop(['Sunshine total(min)', 'Wind Gust (km/h)', 'Snow depth(mm)'], axis=1)
df.sample(5)
```

## Add Rainy Day Column 🌧️
Add a new column 'Rainy Day' to the DataFrame based on the 'Precipitation (mm)' column. If the precipitation is greater than 0, it is considered a rainy day.

```python
df['Rainy Day'] = df['Precipitation (mm)'].apply(lambda x: 1 if x > 0 else 0)
df["Rainy Day"]
```

## Display Sample Data 📋
Display a sample of the DataFrame to verify the changes.

```python
df.sample(5)
```

## Column Names 📑
Extract and store the column names of the DataFrame.

```python
column_names = df.columns.tolist()
```

## DataFrame Information ℹ️
Print the information about the DataFrame, including the number of non-null entries and data types of each column.

```python
print(df.info())
```

## Specific Column Data 📊
Display the data of a specific column 'Premis Desc'.

```python
df['Premis Desc']
```

## All Columns 📋
Display a table with all the columns, their non-null count, and data types.

| No  | Column                    | Non-Null Count         | Dtype   |
| --- | -------------------------- | ---------------------- | ------- |
| 0   | DR_NO                      | 989329 non-null        | int64   |
| 1   | Date Rptd                  | 989329 non-null        | object  |
| 2   | DATE OCC                   | 989329 non-null        | object  |
| 3   | TIME OCC                   | 989329 non-null        | object  |
| 4   | AREA                       | 989329 non-null        | int64   |
| 5   | AREA NAME                  | 989329 non-null        | object  |
| 6   | Rpt Dist No                | 989329 non-null        | int64   |
| 7   | Part 1-2                   | 989329 non-null        | int64   |
| 8   | Crm Cd                     | 989329 non-null        | int64   |
| 9   | Crm Cd Desc                | 989329 non-null        | object  |
| 10  | Mocodes                    | 840950 non-null        | object  |
| 11  | Vict Age                   | 989329 non-null        | int64   |
| 12  | Vict Sex                   | 989329 non-null        | float64 |
| 13  | Vict Descent               | 847756 non-null        | object  |
| 14  | Premis Cd                  | 989313 non-null        | float64 |
| 15  | Premis Desc                | 988761 non-null        | object  |
| 16  | Weapon Used Cd             | 324301 non-null        | float64 |
| 17  | Weapon Desc                | 324301 non-null        | object  |
| 18  | Status                     | 989328 non-null        | object  |
| 19  | Status Desc                | 989329 non-null        | object  |
| 20  | Crm Cd 1                   | 989318 non-null        | float64 |
| 21  | Crm Cd 2                   | 68823 non-null         | float64 |
| 22  | Crm Cd 3                   | 2312 non-null          | float64 |
| 23  | Crm Cd 4                   | 61 non-null            | float64 |
| 24  | LOCATION                   | 989329 non-null        | object  |
| 25  | Cross Street               | 151168 non-null        | object  |
| 26  | LAT                        | 989329 non-null        | float64 |
| 27  | LON                        | 989329 non-null        | float64 |
| 28  | Year                       | 989329 non-null        | int64   |
| 29  | Month                      | 989329 non-null        | int64   |
| 30  | Date/Time                  | 989329 non-null        | object  |
| 31  | Temperature (°C)           | 989329 non-null        | float64 |
| 32  | Dew point (°C)             | 989329 non-null        | float64 |
| 33  | Humidity (%)               | 989329 non-null        | float64 |
| 34  | Precipitation (mm)         | 989329 non-null        | float64 |
| 35  | Wind Direction(degrees°)   | 989329 non-null        | float64 |
| 36  | Windspeed (km/h)           | 989329 non-null        | float64 |
| 37  | Air pressure (hPa)         | 989329 non-null        | float64 |
| 38  | Rainy Day                  | 989329 non-null        | int64   |

## MySQL Connection and Data Insertion 💾
### Connect to MySQL
Establish a connection to the MySQL database.

```python
conn = pymysql.connect(
    host="localhost",
    user="root",
    password="MS@sltc",
    database="LAPD_Crime_Data",
    autocommit=True 
)
print("Successfully connected....")
```

### Check for Duplicates 🔍
Check for duplicate rows in the DataFrame based on the primary key column 'DR_NO'.

```python
duplicates = df[df.duplicated(subset="DR_NO", keep=False)]
print("Duplicate rows:")
print(duplicates)
```

### Batch Insertion Optimization 🚀
#### Batch Size:
The `batch_size` variable (e.g., 1000) determines how many rows are inserted at once. You can adjust it based on your system's resources.

#### executemany:
Used to insert multiple rows in one query.

#### Error Handling in Batches:
Each batch is wrapped in a try-except block to handle errors without halting the entire process.

#### Prepared Data:
The rows are pre-processed into a list of tuples (`rows = [tuple(row) for _, row in data.iterrows()]`), which is compatible with `executemany`.

#### Improved Connection Management:
`conn.ping(reconnect=True)` ensures the connection is active before each operation.

### Benefits of Batch Insertion:
- **Speed**: Reduces the number of queries sent to the database.
- **Error Isolation**: Errors are logged for specific batches rather than individual rows.
- **Efficiency**: Utilizes database resources more effectively.

### Estimation for 1 Million Rows:
With a batch size of 1000, this approach will process approximately 1000 queries (1 million rows ÷ 1000 batch size). Depending on your system, this method should insert 1 million rows in 10–30 minutes.

```python
cursor = conn.cursor()

# Insert data into the table
insert_query = """
INSERT INTO crime_data (
    DR_NO, Date_Rptd, DATE_OCC, TIME_OCC, AREA, AREA_NAME, Rpt_Dist_No, Part_1_2,
    Crm_Cd, Crm_Cd_Desc, Mocodes, Vict_Age, Vict_Sex, Vict_Descent, Premis_Cd,
    Premis_Desc, Weapon_Used_Cd, Weapon_Desc, Status, Status_Desc, Crm_Cd_1,
    Crm_Cd_2, Crm_Cd_3, Crm_Cd_4, LOCATION, Cross_Street, LAT, LON, Year, Month,
    Date_Time, Temperature_C, Dew_point_C, Humidity, Precipitation_mm,
    Wind_Direction, Windspeed_kmh, Air_pressure_hPa, Rainy_Day
) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s,
    %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
"""

data = df.replace({pd.NA: None, np.nan: None})

# Replace NaN with None to handle null values
data = data.where(pd.notnull(df), None)

# Prepare data as a list of tuples
rows = [tuple(row) for _, row in data.iterrows()]

# Set the batch size
batch_size = 1000

try:
    # Insert data in batches with tqdm for progress tracking
    for i in tqdm(range(0, len(rows), batch_size), desc="Inserting Batches", unit="batch"):
        batch = rows[i:i + batch_size]
        try:
            conn.ping(reconnect=True)  # Ensure connection is active
            cursor.executemany(insert_query, batch)  # Batch insert
        except Exception as batch_error:
            print(f"Error inserting batch starting at index {i}: {batch_error}")
            break  # Exit the loop to debug the issue

    # Commit changes
    conn.ping(reconnect=True)  # Ensure connection is active
    conn.commit()
    print("Data inserted successfully!")
except pymysql.InterfaceError as conn_error:
    print("Connection lost. Attempting to reconnect...")
    conn.ping(reconnect=True)
    conn.commit()
except Exception as e:
    print("Unexpected error occurred:", e)
finally:
    cursor.close()
    conn.close()
    print("Complete!!!")
```

## SQL 🗄️
This section is dedicated to SQL operations and queries.

### Export Data set:
Can export the SQL database to a .sql file and upload it to a GitHub repository. This allows to version control your database schema and data, making it easier to share and collaborate with others.

```sql
mysqldump -u username -p database_name > database_dump.sql
```