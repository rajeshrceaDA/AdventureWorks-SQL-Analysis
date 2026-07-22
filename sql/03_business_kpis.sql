/*
=============================================================
Project      : AdventureWorks SQL Data Analysis
Analysis     : Business KPI Analysis
Author       : Rajesh Kumar
Database     : AdventureWorks
SQL Engine   : MySQL

Objective:
Calculate key business performance indicators (KPIs)
to evaluate the overall sales performance of AdventureWorks.

=============================================================
*/

-- ==========================================================
-- Business Question 1
-- Calculate overall business KPIs.
-- ==========================================================

SELECT
    COUNT(DISTINCT soh.SalesOrderID) AS Total_Orders,
    COUNT(DISTINCT soh.CustomerID) AS Total_Customers,
    COUNT(DISTINCT sod.ProductID) AS Products_Sold,
    ROUND(SUM(soh.TotalDue),2) AS Total_Revenue,
    ROUND(AVG(soh.TotalDue),2) AS Average_Order_Value
FROM SalesOrderHeader soh
JOIN SalesOrderDetail sod
ON soh.SalesOrderID = sod.SalesOrderID;

-- ==========================================================
-- Key Finding
-- ==========================================================

-- Total Orders         : 31,465
-- Total Customers      : 19,119
-- Products Sold        : 266
-- Total Revenue        : $140,707,584.82
-- Average Order Value  : $4,471.88

-- ==========================================================
-- Business Question 2
-- Identify the sales analysis period.
-- ==========================================================


SELECT
    MIN(OrderDate) AS Analysis_Start_Date,
    MAX(OrderDate) AS Analysis_End_Date
FROM SalesOrderHeader;

-- ==========================================================
-- Key Finding
-- ==========================================================
-- Analysis Start Date : 2001-07-01
-- Analysis End Date   : 2004-07-31
--
-- Business Insight:
-- The sales dataset covers approximately three years of
-- business transactions, enabling both trend and performance
-- analysis over multiple periods.


-- ==========================================================
-- Business Question 3
-- Calculate the overall product portfolio summary.
-- ==========================================================

SELECT
    COUNT(*) AS Total_Products,
    COUNT(DISTINCT ProductCategoryID) AS Total_Categories,
    COUNT(DISTINCT ProductSubcategoryID) AS Total_Subcategories
FROM Product p
LEFT JOIN ProductSubcategory ps
    ON p.ProductSubcategoryID = ps.ProductSubcategoryID;

-- ==========================================================
-- Key Finding
-- ==========================================================
-- Total Products       : 504
-- Product Categories   : 4
-- Product Subcategories: 37
--
-- Business Insight:
-- AdventureWorks offers a diverse product portfolio across
-- multiple categories and subcategories, supporting broad
-- market coverage.


-- ==========================================================
-- Executive Business Summary
-- ==========================================================

-- ✔ Analysis Period        : July 2001 – July 2004
-- ✔ Total Revenue          : $140.71 Million
-- ✔ Total Orders           : 31,465
-- ✔ Total Customers        : 19,119
-- ✔ Products Sold          : 266
-- ✔ Average Order Value    : $4,471.88
--
-- Conclusion:
-- AdventureWorks achieved strong sales performance across
-- multiple product categories, customer segments, and sales
-- territories, providing a solid foundation for deeper
-- business analysis.
