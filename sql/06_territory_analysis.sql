/*
=============================================================
Project      : AdventureWorks SQL Data Analysis
Analysis     : Territory Performance Analysis
Author       : Rajesh Kumar
Database     : AdventureWorks
SQL Engine   : MySQL

Objective:
Evaluate sales performance across different sales territories
to identify high-performing regions and support regional
business strategy.

=============================================================
*/

-- ==========================================================
-- Business Question 1
-- Analyze sales performance across sales territories.
-- ==========================================================

SELECT
    st.Name AS Territory_Name,
    st.CountryRegionCode,
    st.`Group` AS Region_Group,
    COUNT(DISTINCT soh.SalesOrderID) AS Total_Orders,
    COUNT(DISTINCT soh.CustomerID) AS Total_Customers,
    ROUND(SUM(soh.TotalDue),2) AS Total_Revenue,
    ROUND(AVG(soh.TotalDue),2) AS Average_Order_Value
FROM SalesOrderHeader soh
JOIN SalesTerritory st
    ON soh.TerritoryID = st.TerritoryID
GROUP BY
    st.Name,
    st.CountryRegionCode,
    st.[Group]
ORDER BY Total_Revenue DESC;

-- Key Finding
-- ==========================================================

-- Highest Revenue Territory : Southwest (US)
-- Second Highest            : Canada
-- Third Highest             : Northwest (US)

-- Business Insight:
-- North American territories generated the majority of
-- business revenue. Southwest (US) was the strongest
-- performing territory, while Canada achieved high revenue
-- with a comparatively smaller customer base, indicating
-- strong customer value

-- ==========================================================
-- Business Recommendations
-- ==========================================================

-- 1. Continue investing in high-performing territories such
--    as Southwest (US) and Canada.
--
-- 2. Analyze successful sales strategies from high-performing
--    regions and apply them to lower-performing territories.
--
-- 3. Monitor Average Order Value across territories to
--    identify high-value customer segments.
--
-- 4. Review marketing and sales initiatives in lower-
--    performing territories to identify growth opportunities.

-- ==========================================================
-- Executive Conclusion
-- ==========================================================

-- Territory analysis shows that revenue distribution varies
-- significantly across regions.
--
-- North American territories are the primary contributors to
-- business revenue, while international markets provide
-- additional growth opportunities.
--
-- Regional performance analysis enables management to make
-- informed decisions regarding sales strategy, resource
-- allocation, and market expansion.
