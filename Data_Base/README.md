### Operations of Cleaning Data and adding more parameters:

<p align="center">
  <img width="1024" src='../Images/LAPD_IMG_06.png' alt="Logo_01">
</p>

---

1. **Data Cleaning 🧹:**
    - Loaded the original dataset (`Org_data.csv`).
    - Handled missing values by dropping rows with missing latitude or longitude.
    - Filtered out rows where both latitude and longitude are zero.

2. **Data Standardization 📏:**
    - Converted date columns (`Date Rptd` and `DATE OCC`) to datetime format.
    - Ensured numerical fields are properly formatted (e.g., `Vict Age`).

3. **Feature Engineering 🛠️:**
    - Extracted year and month from the `DATE OCC` column.
    - Encoded categorical variables (e.g., `Vict Sex`).

4. **Data Deduplication 🗑️:**
    - Checked for and removed duplicate rows.

5. **Datetime Handling 🕒:**
    - Combined `DATE OCC` and `TIME OCC` into a single datetime column.

6. **Weather Data Integration 🌦️:**
    - Defined the location (Los Angeles) and time range based on the dataset.
    - Fetched hourly weather data using the Meteostat library.
    - Merged the weather data with the crime dataset.

7. **Missing Data Handling 🚫:**
    - Filled missing weather data using forward fill method.

8. **Data Saving 💾:**
    - Saved the enriched dataset with crime and weather data for further analysis.

9. **Data Visualization 📊:**
    - Plotted crime distribution by day of the week.
    - Created a scatter plot to visualize the relationship between temperature and crime type.

10. **Additional Operations 🔍:**
    - Loaded a new dataset (`Ready_dataset.csv`) for testing.
    - Checked for missing values and ensured data consistency.
    - Visualized the distribution of crimes over different days of the week.
    - Analyzed the correlation between weather conditions and crime occurrences.

    ---