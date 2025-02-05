USE LAPD_Crime_Data;
SELECT 
     Crm_Cd_Desc AS Crime_Type,
     COUNT(*) AS CrimeCount
FROM 
	crime_data
GROUP BY Crime_type
HAVING CrimeCount <= "1000"
ORDER BY CrimeCount DESC
LIMIT 100
