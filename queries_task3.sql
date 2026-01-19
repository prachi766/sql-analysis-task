-- Verify data count
SELECT COUNT(*) FROM SampleSuperstore;

-- Filter Technology category
SELECT *
FROM SampleSuperstore
WHERE c8 = 'Technology'
LIMIT 5;

-- Top sales items
SELECT *
FROM SampleSuperstore
ORDER BY c10 DESC
LIMIT 10;

-- Total sales by category
SELECT c8 AS Category, SUM(c10) AS Total_Sales
FROM SampleSuperstore
GROUP BY c8;

-- Total sales by region
SELECT c2 AS Region, SUM(c10) AS Total_Sales
FROM SampleSuperstore
GROUP BY c2;

-- Categories with high sales
SELECT c8 AS Category, SUM(c10) AS Total_Sales
FROM SampleSuperstore
GROUP BY c8
HAVING SUM(c10) > 100000;

-- Date range query
SELECT *
FROM SampleSuperstore
WHERE c4 BETWEEN '2017-01-01' AND '2017-01-31';

-- Pattern search
SELECT *
FROM SampleSuperstore
WHERE c6 LIKE '%Smith%';

-- Top 5 customers by total spend
SELECT c6 AS Customer_Name, SUM(c10) AS Total_Spent
FROM SampleSuperstore
GROUP BY c6
ORDER BY Total_Spent DESC
LIMIT 5;
