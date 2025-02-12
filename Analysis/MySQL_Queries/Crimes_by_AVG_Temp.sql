USE LAPD_Crime_Data;
SELECT 
    Crm_Cd_Desc AS `Crime Type`,
    AVG(Temperature_C) AS `Avg Temperature (°C)`,
    COUNT(*) AS `Crime Count`
FROM 
    crime_data
WHERE 
    Temperature_C IS NOT NULL 
    AND Crm_Cd_Desc IS NOT NULL
GROUP BY 
    Crm_Cd_Desc
ORDER BY 
    `Crime Count` DESC;  -- Orders by most common crimes
