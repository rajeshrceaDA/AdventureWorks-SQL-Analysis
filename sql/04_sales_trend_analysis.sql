/*
=============================================================
Project      : AdventureWorks SQL Data Analysis
Analysis     : Sales Trend Analysis
Author       : Rajesh Kumar
Database     : AdventureWorks
SQL Engine   : MySQL

Objective:
Analyze monthly and yearly sales trends to identify
business growth patterns and seasonality.

=============================================================
*/

-- ==========================================================
-- Business Question 1
-- Analyze monthly sales performance.
-- ==========================================================

SELECT
    YEAR(OrderDate) AS Order_Year,
    MONTH(OrderDate) AS Order_Month,
    COUNT(DISTINCT SalesOrderID) AS Total_Orders,
    ROUND(SUM(TotalDue),2) AS Total_Revenue,
    ROUND(AVG(TotalDue),2) AS Average_Order_Value
FROM SalesOrderHeader
GROUP BY YEAR(OrderDate), MONTH(OrderDate)
ORDER BY Order_Year, Order_Month;

-- ==========================================================
-- Key Finding
-- ==========================================================

-- • Monthly sales generally increased from 2001 to 2004.
-- • Order volume grew significantly during 2003.
-- • July 2004 contains partial-month data and should not be
--   compared directly with previous full months.
--
-- Business Insight:
-- The business experienced sustained sales growth over the
-- analysis period. Partial data for July 2004 should be
-- interpreted separately to avoid misleading conclusions.


-- ==========================================================
-- Business Question 2
-- Analyze yearly sales performance.
-- ==========================================================

SELECT
    YEAR(OrderDate) AS Order_Year,
    COUNT(DISTINCT SalesOrderID) AS Total_Orders,
    COUNT(DISTINCT CustomerID) AS Total_Customers,
    ROUND(SUM(TotalDue),2) AS Total_Revenue,
    ROUND(AVG(TotalDue),2) AS Average_Order_Value
FROM SalesOrderHeader
GROUP BY YEAR(OrderDate)
ORDER BY Order_Year;

-- ==========================================================
-- Key Finding
-- ==========================================================

-- 2001 Revenue : $14.33 Million
-- 2002 Revenue : $39.88 Million
-- 2003 Revenue : $54.31 Million
-- 2004 Revenue : $32.20 Million (January–July)

-- Business Insight:
-- Revenue increased consistently between 2001 and 2003,
-- indicating strong business growth. The 2004 dataset
-- contains only seven months of transactions and should
-- not be directly compared with previous full years

-- ==========================================================
-- Sales Trend Summary
-- ==========================================================

-- ✔ Sales performance improved significantly between
--   2001 and 2003.
--
-- ✔ Customer orders increased year over year.
--
-- ✔ Average Order Value declined as order volume increased,
--   suggesting a shift toward higher transaction frequency
--   with relatively lower order values.
--
-- ✔ The sales trend provides evidence of business expansion
--   during the analysis period.
