-- 1. Store Format Penetration by Country (Premium vs. Standard)
SELECT 
    Location.CountryCode,
    Store.StoreClass,
    COUNT(Store.StoreCode) AS StoreCount,
    ROUND(100.0 * COUNT(Store.StoreCode) / 
        SUM(COUNT(Store.StoreCode)) OVER (PARTITION BY Location.CountryCode), 2) AS ClassSharePercent
FROM Store
JOIN Location ON Store.StoreCode = Location.StoreCode
GROUP BY Location.CountryCode, Store.StoreClass
ORDER BY Location.CountryCode, ClassSharePercent DESC;