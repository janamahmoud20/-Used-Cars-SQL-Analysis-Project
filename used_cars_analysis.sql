-- Used Cars SQL Analysis Project

-- 1. Total Cars by Brand
SELECT 
    Brand,
    COUNT(*) AS TotalCars
FROM Cars
GROUP BY Brand
ORDER BY TotalCars DESC;


-- 2. Average Price by Brand
SELECT 
    Brand,
    ROUND(AVG(Price), 2) AS AveragePrice
FROM Cars
GROUP BY Brand
ORDER BY AveragePrice DESC;


-- 3. Most Common Car Models
SELECT TOP 10
    Brand,
    Model,
    COUNT(*) AS TotalCars
FROM Cars
GROUP BY Brand, Model
ORDER BY TotalCars DESC;


-- 4. Fuel Type Analysis
SELECT 
    FuelType,
    COUNT(*) AS TotalCars,
    ROUND(AVG(Price), 2) AS AveragePrice
FROM Cars
GROUP BY FuelType
ORDER BY TotalCars DESC;


-- 5. Transmission Analysis
SELECT 
    Transmission,
    COUNT(*) AS TotalCars,
    ROUND(AVG(Price), 2) AS AveragePrice
FROM Cars
GROUP BY Transmission
ORDER BY AveragePrice DESC;


-- 6. Car Condition Analysis
SELECT 
    CarCondition,
    COUNT(*) AS TotalCars,
    ROUND(AVG(Price), 2) AS AveragePrice
FROM Cars
GROUP BY CarCondition
ORDER BY AveragePrice DESC;


-- 7. Top 10 Most Expensive Cars
SELECT TOP 10
    Brand,
    Model,
    Year,
    Mileage,
    Price
FROM Cars
ORDER BY Price DESC;


-- 8. Average Price by Year
SELECT TOP 10
    Year,
    COUNT(*) AS TotalCars,
    ROUND(AVG(Price), 2) AS AveragePrice
FROM Cars
GROUP BY Year
ORDER BY Year DESC;