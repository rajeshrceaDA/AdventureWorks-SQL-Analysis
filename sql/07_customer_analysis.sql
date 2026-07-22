/*
=============================================================
Project      : AdventureWorks SQL Data Analysis
Analysis     : Customer Performance Analysis
Author       : Rajesh Kumar
Database     : AdventureWorks
SQL Engine   : MySQL

Objective:
Analyze customer purchasing behavior to identify
high-value customers, repeat purchase patterns,
and opportunities for customer retention.

=============================================================
*/

-- ==========================================================
-- Business Question 1
-- Identify the highest revenue-generating customers.
-- ==========================================================

SELECT
    CustomerID,
    COUNT(DISTINCT SalesOrderID) AS Total_Orders,
    ROUND(SUM(TotalDue),2) AS Total_Revenue,
    ROUND(AVG(TotalDue),2) AS Average_Order_Value
FROM SalesOrderHeader
GROUP BY CustomerID
ORDER BY Total_Revenue DESC
LIMIT 10;

-- ==========================================================
-- Key Finding
-- ==========================================================

-- Highest Revenue Customer : CustomerID 276
-- Total Revenue            : $13.98 Million
-- Total Orders             : 418

-- Business Insight:
-- A small group of customers contributes a significant
-- share of total business revenue. Identifying and
-- retaining these high-value customers can improve
-- long-term business growth and customer lifetime value.


-- ==========================================================
-- Business Question 2
-- Identify customers with the highest purchase frequency.
-- ==========================================================

SELECT
    CustomerID,
    COUNT(DISTINCT SalesOrderID) AS Total_Orders,
    ROUND(SUM(TotalDue),2) AS Total_Revenue,
    ROUND(AVG(TotalDue),2) AS Average_Order_Value
FROM SalesOrderHeader
GROUP BY CustomerID
HAVING COUNT(DISTINCT SalesOrderID) > 1
ORDER BY Total_Orders DESC
LIMIT 10;

-- ==========================================================
-- Key Finding
-- ==========================================================

-- Highest Purchase Frequency : CustomerID 277
-- Total Orders               : 473
-- Total Revenue              : $13.43 Million

-- Business Insight:
-- Customers with frequent purchases represent loyal
-- customers and contribute significantly to business
-- revenue. Retaining these customers should be a key
-- business priority.


-- ==========================================================
-- Customer Analysis Summary
-- ==========================================================

-- ✔ Total Customers Analysed : 19,119
--
-- ✔ CustomerID 276 generated the highest revenue.
--
-- ✔ CustomerID 277 placed the highest number of orders.
--
-- ✔ A small group of customers contributes a significant
--   portion of overall sales revenue.
--
-- ✔ Customer purchasing behavior varies considerably,
--   indicating the presence of both high-value and
--   occasional buyers.


-- ==========================================================
-- Business Recommendations
-- ==========================================================

-- 1. Retain high-value customers through loyalty programs.
--
-- 2. Reward repeat customers with exclusive offers.
--
-- 3. Identify purchasing patterns of top customers and
--    replicate successful sales strategies.
--
-- 4. Encourage low-frequency customers to make repeat
--    purchases using personalized promotions.

-- ==========================================================
-- Executive Conclusion
-- ==========================================================

-- Customer analysis reveals that business revenue is driven
-- by a relatively small segment of high-value customers.
--
-- Strengthening customer retention strategies and increasing
-- repeat purchases can significantly improve long-term
-- revenue and customer lifetime value.
