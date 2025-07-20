SELECT * FROM merged_data

-------------------------------------------------------------------------------
-- Checking for null values in each column

SELECT
SUM(CASE WHEN ProductID IS NULL THEN 1 ELSE 0 END) AS ProductID_null,
SUM(CASE WHEN CustomerID IS NULL THEN 1 ELSE 0 END) AS CustomerID_null,
SUM(CASE WHEN FirstName IS NULL THEN 1 ELSE 0 END) AS FirstName_null,
SUM(CASE WHEN LastName IS NULL THEN 1 ELSE 0 END) AS LastName_null,
SUM(CASE WHEN Email IS NULL THEN 1 ELSE 0 END) AS Email_null,
SUM(CASE WHEN City IS NULL THEN 1 ELSE 0 END) AS City_null,
SUM(CASE WHEN Country IS NULL THEN 1 ELSE 0 END) AS Country_null,
SUM(CASE WHEN Category IS NULL THEN 1 ELSE 0 END) AS Category_null,
SUM(CASE WHEN Price IS NULL THEN 1 ELSE 0 END) AS Price_null,
SUM(CASE WHEN Quantity IS NULL THEN 1 ELSE 0 END) AS Quantity_null,
SUM(CASE WHEN Timestamp IS NULL THEN 1 ELSE 0 END) AS Timestamp_null
FROM merged_data


-- 181695 timestamps null
-------------------------------------------------------------------------------
-- 

Update merged_data
SET Price = ROUND(Price, 2)

EXEC sp_rename "merged_data.Category", "ProductCategory"

ALTER TABLE merged_data
ADD  Sales int

UPDATE merged_data
SET Sales = Price * Quantity

-------------------------------------------------------------------------------
-- Analysis

--1. Top 10 Customers 

SELECT  TOP 10 FirstName, LastName, SUM(Sales) as revenue
FROM merged_data
GROUP BY FirstName, LastName
ORDER BY revenue DESC


-- Top 10 cities by revenue

SELECT TOP 10 City, SUM(Sales) as revenue
FROM merged_data
GROUP BY City
ORDER BY revenue DESC

-- Top 10 countries by revenue

SELECT TOP 10 Country, SUM(Sales) as revenue
FROM merged_data
GROUP BY Country
ORDER BY revenue DESC

-- Revenue by Product Category

SELECT ProductCategory, Sum(Sales) as revenue
FROM merged_data
GROUP BY ProductCategory
ORDER BY revenue DESC

-- Most frequent Buyers

SELECT TOP 10 CustomerID, FirstName, LastName, COUNT(*) AS PurchaseCount
FROM merged_data
GROUP BY CustomerID, FirstName, LastName
ORDER BY PurchaseCount DESC




