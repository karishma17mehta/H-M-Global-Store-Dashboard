-- 2. Top Cities by Weekend Operational Hours
SELECT 
    loc.City,
    loc.CountryCode,
    SUM(
        LENGTH(IFNULL(oh.Sat_Open_Hours, '')) +
        LENGTH(IFNULL(oh.Sun_Open_Hours, ''))
    ) AS TotalWeekendHours,
    COUNT(DISTINCT loc.StoreCode) AS StoreCount,
    ROUND(SUM(
        LENGTH(IFNULL(oh.Sat_Open_Hours, '')) +
        LENGTH(IFNULL(oh.Sun_Open_Hours, ''))
    ) / COUNT(DISTINCT loc.StoreCode), 2) AS AvgWeekendHoursPerStore
FROM Location loc
JOIN OpeningHours oh ON loc.StoreCode = oh.StoreCode
GROUP BY loc.City, loc.CountryCode
ORDER BY AvgWeekendHoursPerStore DESC
LIMIT 20;