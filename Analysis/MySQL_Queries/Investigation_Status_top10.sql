USE LAPD_Crime_Data;

WITH HourlyCrime AS (
    SELECT 
        CONCAT(
            LPAD(HOUR(Time_OCC), 2, '0'), ':', '00'
        ) AS Hour,
        Crm_Cd_Desc AS CrimeType,
        COUNT(*) AS CrimeCount
    FROM crime_data
    GROUP BY CONCAT(LPAD(HOUR(Time_OCC), 2, '0'), ':', '00'), CrimeType
), CrimeTotals AS (
    SELECT 
        CONCAT(
            LPAD(HOUR(Time_OCC), 2, '0'), ':', '00'
        ) AS Hour,
        COUNT(*) AS TotalCrimes
    FROM crime_data
    GROUP BY CONCAT(LPAD(HOUR(Time_OCC), 2, '0'), ':', '00')
), RankedCrimes AS (
    SELECT 
        h.Hour,
        c.TotalCrimes,
        h.CrimeType,
        h.CrimeCount,
        RANK() OVER (PARTITION BY h.Hour ORDER BY h.CrimeCount DESC) AS ranks
    FROM HourlyCrime h
    JOIN CrimeTotals c ON h.Hour = c.Hour
)
SELECT 
    Hour,
    TotalCrimes AS `Total Crime Happened`,
    CrimeType AS `Mostly Happened Crimes`,
    CrimeCount AS `Amount`
FROM RankedCrimes
WHERE ranks <= 5
ORDER BY Hour, ranks
LIMIT 1000000;
