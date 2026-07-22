/*
=============================================================
Project      : AdventureWorks SQL Data Analysis
Analysis     : Product Performance Analysis
Author       : Rajesh Kumar
Database     : AdventureWorks
SQL Engine   : MySQL

Objective:
Evaluate product, category, and subcategory performance
to identify the highest revenue-generating products and
their contribution to overall business growth.


-- ==========================================================
-- Business Question 1
-- Identify the top revenue-generating products.
-- ==========================================================

SELECT
    p.ProductID,
    p.Name AS Product_Name,
    ROUND(SUM(sod.LineTotal),2) AS Total_Revenue,
    SUM(sod.OrderQty) AS Quantity_Sold
FROM SalesOrderDetail sod
JOIN Product p
ON sod.ProductID = p.ProductID
GROUP BY p.ProductID, p.Name
ORDER BY Total_Revenue DESC
LIMIT 10;

-- ==========================================================
-- Key Finding
-- ==========================================================

-- Highest Revenue Product:
-- Mountain-200 Black, 38

-- Business Insight:
-- Premium bicycle models generated the highest revenue,
-- indicating strong customer demand for high-value products.
-- The top-selling products are dominated by bicycle models,
-- making them the primary contributors to business revenue.


-- ==========================================================
-- Business Question 2
-- Analyze sales performance by product category.
-- ==========================================================

SELECT
    pc.Name AS Category_Name,
    ROUND(SUM(sod.LineTotal),2) AS Total_Revenue,
    SUM(sod.OrderQty) AS Quantity_Sold,
    COUNT(DISTINCT p.ProductID) AS Total_Products
FROM SalesOrderDetail sod
JOIN Product p
    ON sod.ProductID = p.ProductID
JOIN ProductSubcategory ps
    ON p.ProductSubcategoryID = ps.ProductSubcategoryID
JOIN ProductCategory pc
    ON ps.ProductCategoryID = pc.ProductCategoryID
GROUP BY pc.Name
ORDER BY Total_Revenue DESC;

-- ==========================================================
-- Key Finding
-- ==========================================================

-- Bikes        : $94.65 Million
-- Components   : $11.80 Million
-- Clothing     : $2.12 Million
-- Accessories  : $1.27 Million

-- Business Insight:
-- The Bikes category generated approximately 67% of total
-- revenue, making it the primary revenue driver of the
-- business. Components contributed moderate revenue, while
-- Clothing and Accessories played a supporting role.

-- ==========================================================
-- Category Summary
-- ==========================================================

-- ✔ Bikes is the highest-performing product category.
--
-- ✔ Components represent the second-largest revenue source.
--
-- ✔ Clothing and Accessories contribute relatively smaller
--   revenue but support product diversification.
--
-- Recommendation:
-- Continue investing in the Bikes category while exploring
-- opportunities to increase revenue from Clothing and
-- Accessories through cross-selling and promotional campaigns.

-- ==========================================================
-- Business Question 3
-- Analyze revenue performance by product subcategory.
-- ==========================================================

SELECT
    ps.Name AS Subcategory_Name,
    pc.Name AS Category_Name,
    ROUND(SUM(sod.LineTotal),2) AS Total_Revenue,
    SUM(sod.OrderQty) AS Quantity_Sold,
    COUNT(DISTINCT p.ProductID) AS Total_Products
FROM SalesOrderDetail sod
JOIN Product p
    ON sod.ProductID = p.ProductID
JOIN ProductSubcategory ps
    ON p.ProductSubcategoryID = ps.ProductSubcategoryID
JOIN ProductCategory pc
    ON ps.ProductCategoryID = pc.ProductCategoryID
GROUP BY ps.Name, pc.Name
ORDER BY Total_Revenue DESC;

-- ==========================================================
-- Key Finding
-- ==========================================================

-- Highest Revenue Subcategories:
--
-- 1. Road Bikes
-- 2. Mountain Bikes
-- 3. Touring Bikes
--
-- Business Insight:
-- Bicycle-related subcategories dominate overall sales,
-- indicating that the company's core revenue is generated
-- from finished bicycle products rather than accessories
-- or components.

-- ==========================================================
-- Product Performance Summary
-- ==========================================================

-- ✔ Premium bicycle models generated the highest revenue.
--
-- ✔ Bikes is the largest product category, contributing
--   approximately 67% of total revenue.
--
-- ✔ Road Bikes and Mountain Bikes are the strongest
--   performing subcategories.
--
-- ✔ Components provide additional business revenue,
--   while Clothing and Accessories support product diversity.
--
-- Business Recommendation:
-- Focus on expanding high-performing bicycle product lines
-- while increasing the visibility of complementary products
-- through bundled offers and cross-selling strategies.



