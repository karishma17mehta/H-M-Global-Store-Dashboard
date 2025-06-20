-- 2. Calculate Actual Hours Open on Sat + Sun (using STR_TO_DATE)
SELECT 
    loc.City,
    loc.CountryCode,
    COUNT(DISTINCT loc.StoreCode) AS StoreCount,
    ROUND(AVG(
        TIME_TO_SEC(
            TIMEDIFF(
                STR_TO_DATE(SUBSTRING_INDEX(oh.Sat_Open_Hours, '-', -1), '%H:%i'),
                STR_TO_DATE(SUBSTRING_INDEX(oh.Sat_Open_Hours, '-', 1), '%H:%i')
            )
        ) +
        TIME_TO_SEC(
            TIMEDIFF(
                STR_TO_DATE(SUBSTRING_INDEX(oh.Sun_Open_Hours, '-', -1), '%H:%i'),
                STR_TO_DATE(SUBSTRING_INDEX(oh.Sun_Open_Hours, '-', 1), '%H:%i')
            )
        )
    ) / 3600, 2) AS AvgWeekendHoursPerStore
FROM Location loc
JOIN OpeningHours oh ON loc.StoreCode = oh.StoreCode
WHERE oh.Sat_Open_Hours IS NOT NULL AND oh.Sun_Open_Hours IS NOT NULL
GROUP BY loc.City, loc.CountryCode
ORDER BY AvgWeekendHoursPerStore DESC
LIMIT 20;

