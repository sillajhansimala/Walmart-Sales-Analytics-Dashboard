USE WalmartSalesDB;

-- 1. Preview data
SELECT TOP 10 * FROM walmartSales1;

-- 2. Total Sales Amount
SELECT SUM(CAST(Purchase AS BIGINT)) AS Total_Sales
FROM walmartSales1;

-- 3. Sales by Gender
SELECT Gender, SUM(CAST(Purchase AS BIGINT)) AS Sales
FROM walmartSales1
GROUP BY Gender;

-- 4. Top 5 Age Groups by Revenue
SELECT TOP 5 Age, SUM(CAST(Purchase AS BIGINT)) AS Total_Spent
FROM walmartSales1
GROUP BY Age
ORDER BY Total_Spent DESC;

-- 5. Top 5 Product Categories
SELECT TOP 5 Product_Category, SUM(CAST(Purchase AS BIGINT)) AS Revenue
FROM walmartSales1
GROUP BY Product_Category
ORDER BY Revenue DESC;

-- 6. Revenue by City Category
SELECT City_Category, SUM(CAST(Purchase AS BIGINT)) AS Revenue
FROM walmartSales1
GROUP BY City_Category;

-- 7. Marital Status vs Revenue
SELECT Marital_Status, SUM(CAST(Purchase AS BIGINT)) AS Revenue
FROM walmartSales1
GROUP BY Marital_Status;

-- 8. Occupation vs Revenue
SELECT Occupation, SUM(CAST(Purchase AS BIGINT)) AS Revenue
FROM walmartSales1
GROUP BY Occupation
ORDER BY Revenue DESC;

-- 9. Stay Duration vs Revenue
SELECT Stay_In_Current_City_Years, SUM(CAST(Purchase AS BIGINT)) AS Revenue
FROM walmartSales1
GROUP BY Stay_In_Current_City_Years
ORDER BY Revenue DESC;
