USE LAPD_Crime_Data;
SELECT 
     Status_Desc AS Current_Crime_Investigation_Type,
     COUNT(*) AS Crime_Type_Count
FROM 
	crime_data
GROUP BY Current_Crime_Investigation_Type
ORDER BY Crime_Type_Count DESC