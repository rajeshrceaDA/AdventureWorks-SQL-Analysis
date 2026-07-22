/*
=============================================================
Project      : AdventureWorks SQL Data Analysis
Analysis     : Salesperson Performance Analysis
Author       : Rajesh Kumar
Database     : AdventureWorks
SQL Engine   : MySQL

Objective:
Evaluate salesperson performance based on revenue,
orders, customer acquisition, and average order value
to identify top-performing sales representatives.

=============================================================
*/

-- ==========================================================
-- Business Question 1
-- Analyze salesperson performance.
-- ==========================================================

SELECT
    SalesPersonID,
    COUNT(DISTINCT SalesOrderID) AS Total_Orders,
    COUNT(DISTINCT CustomerID) AS Total_Customers,
    ROUND(SUM(TotalDue),2) AS Total_Revenue,
    ROUND(AVG(TotalDue),2) AS Average_Order_Value
FROM SalesOrderHeader
WHERE SalesPersonID IS NOT NULL
GROUP BY SalesPersonID
ORDER BY Total_Revenue DESC;

-- ==========================================================
-- Key Findings
-- ==========================================================

-- Highest Revenue Salesperson : 276
-- Total Revenue               : $13.98 Million
-- Total Orders                : 418
-- Total Customers             : 69

-- Business Insight:
-- Salesperson 276 generated the highest overall revenue,
-- demonstrating strong sales performance and effective
-- customer relationship management.


-- ==========================================================
-- Salesperson Performance Summary
-- ==========================================================

-- ✔ Sales performance varies significantly among salespeople.
--
-- ✔ Top-performing salespeople contribute a large share of
--   total business revenue.
--
-- ✔ Average Order Value differs across salespeople,
--   indicating differences in customer portfolio and
--   selling effectiveness.

-- ==========================================================
-- Business Recommendations
-- ==========================================================

-- 1. Recognize and reward top-performing salespeople.
--
-- 2. Analyze the sales strategies of high performers and
--    share best practices across the sales team.
--
-- 3. Provide additional coaching and support to improve
--    the performance of lower-performing salespeople.
--
-- 4. Monitor revenue, customer count, and average order
--    value regularly to evaluate salesperson performance.

-- ==========================================================
-- Executive Conclusion
-- ==========================================================

-- Salesperson analysis highlights significant differences
-- in individual performance. Monitoring key sales metrics
-- helps management recognize top talent, improve team
-- performance, and support data-driven sales decisions.
