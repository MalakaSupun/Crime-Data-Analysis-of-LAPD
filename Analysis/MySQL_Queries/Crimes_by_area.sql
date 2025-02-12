USE LAPD_Crime_Data;
SELECT 
     AREA_NAME AS Area,
     COUNT(*) AS CrimeCount
FROM 
  crime_data
GROUP BY AREA_NAME
ORDER BY CrimeCount DESC
