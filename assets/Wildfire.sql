-- USE deleting_this_soon

select * FROM wildfires
WHERE POOState = 'US-CA' OR POOState = 'US-WA' OR POOState = 'US-OR'

SELECT convert(DATE,FireDiscoveryDateTime)  FROM wildfires

--substring(FireDiscoveryDateTime, 1,10)

CREATE TABLE #TempFires
(
    X numeric(12,9),
    Y numeric(12,9),
    ID INT,
    FireCause NVARCHAR(100),
    FireDiscoveryDate Date,
    Month int,
    IncidentName NVARCHAR(200),
    IncidentDescription nvarchar(200),
    POOCounty varchar(100),
    POOLandOwnerKind varchar(100),
    POOState varchar(100),
    DailyAcres numeric(8,2),
    DiscoveryAcres numeric(8,2)
)

-- 1. convert datetime to date
-- 2. add month column
-- 3. filter three states

INSERT INTO #TempFires
SELECT X,Y,OBJECTID,FireCause,convert(DATE,FireDiscoveryDateTime), Month(FireDiscoveryDateTime), 
IncidentName, IncidentShortDescription, POOCounty, POOLandownerKind, POOState, DailyAcres, DiscoveryAcres FROM wildfires
WHERE POOState = 'US-CA' OR POOState = 'US-WA' OR POOState = 'US-OR'

WITH CTE_Process_Months AS (
SELECT POOState, MONTH(FireDiscoveryDate) AS MONTHS, SUM(DailyAcres) SumAcres FROM #TempFires
WHERE DailyAcres IS NOT NULL
GROUP BY POOState, MONTH(FireDiscoveryDate)
ORDER BY POOState, MONTH(FireDiscoveryDate), DailyAcres
)
SELECT MONTHS, POOState, SUM(SumAcres) FROM CTE_Process_Months
-- GROUP BY MONTHS, POOState
ORDER BY MONTHS
-- SELECT MONTHS, SUM(SumAcres) FROM CTE_Process_Months
-- GROUP BY MONTHS, SumAcres
-- ORDER BY MONTHS

SELECT MONTH(FireDiscoveryDate) FROM #TempFires
ORDER BY MONTH(FireDiscoveryDate) ASC

SELECT top 100 (DailyAcres) FROM #TempFires
ORDER BY DailyAcres DESC
WHERE DailyAcres IS NULL

SELECT POOState, MONTH(FireDiscoveryDate) AS MONTHS, SUM(DailyAcres) SumAcres FROM #TempFires
WHERE DailyAcres IS NOT NULL
GROUP BY POOState, MONTH(FireDiscoveryDate)
ORDER BY POOState, MONTH(FireDiscoveryDate)

-- DROP TABLE #TempFires


-- Process null values

Update #tempfires
SET DailyAcres = 0
WHERE DailyAcres IS NULL

-- Aggregate daily acre values for each state each month & Present result

SELECT POOState, MONTH(FireDiscoveryDate) AS MONTHS, SUM(DailyAcres) SumAcres FROM #TempFires
GROUP BY POOState, MONTH(FireDiscoveryDate)
ORDER BY POOState, MONTH(FireDiscoveryDate)

