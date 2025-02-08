USE LAPD_Crime_Data;
SELECT Time_OCC AS Hour, COUNT(*) AS CrimeCount 
    FROM crime_data 
    GROUP BY Hour 
    ORDER BY Hour