USE LAPD_Crime_Data;

WITH Ranked_Crimes AS (
    SELECT 
        Status_Desc AS Current_Crime_Investigation_Type,
        Crm_Cd_Desc AS Crime_Type_Description,
        COUNT(*) AS Crime_Count,
        ROW_NUMBER() OVER (
            PARTITION BY Status_Desc 
            ORDER BY COUNT(*) DESC
        ) AS Rank_Position
    FROM 
        crime_data
    GROUP BY 
        Status_Desc, 
        Crm_Cd_Desc
)

SELECT 
    Current_Crime_Investigation_Type,
    Crime_Type_Description,
    Crime_Count
FROM 
    Ranked_Crimes
WHERE 
    Rank_Position <= 10
ORDER BY 
    Current_Crime_Investigation_Type ASC, 
    Crime_Count DESC;
