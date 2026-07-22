/*
=============================================================
Project      : AdventureWorks SQL Data Analysis
Analysis     : Data Quality Validation
Author       : Rajesh Kumar
Database     : AdventureWorks
SQL Engine   : MySQL

Objective:
Validate the quality of business data before performing
sales analysis to ensure accurate and reliable insights.

=============================================================
*/

-- ==========================================================
-- Business Question 1
-- Check missing values in the Product table.
-- ==========================================================

SELECT
COUNT(*) AS Total_Product,
SUM(ProductSubcategoryID IS NULL) AS Missing_Subcategory,
SUM(ListPrice IS NULL) AS Missing_ListPrice,
SUM(StandardCost IS NULL) AS Missing_Cost
FROM Product;

-- ==========================================================
-- Key Finding
-- ==========================================================
-- Total Products           : 504
-- Missing Subcategory      : 209
-- Missing List Price       : 0
-- Missing Standard Cost    : 0

-- Business Insight:
-- Products without a subcategory are primarily raw materials,
-- components, or non-finished goods and are expected records,
-- not data quality issues.

-- ==========================================================
-- Business Question 2
-- Validate whether products without a subcategory are
-- expected business records.
-- ==========================================================

SELECT
ProductID,
Name,
ProductNumber,
FinishedGoodsFlag,
ProductSubcategoryID,
SellStartDate,
DiscontinuedDate
FROM Product
WHERE ProductSubcategoryID IS NULL
LIMIT 20;

-- ==========================================================
-- Key Finding
-- ==========================================================
-- Observation:
-- The sampled records have FinishedGoodsFlag = 0.
--
-- Business Insight:
-- These products represent manufacturing components or
-- raw materials that are not sold as finished goods.
-- Therefore, the NULL ProductSubcategoryID values are
-- expected and do not indicate poor data quality.


-- ==========================================================
-- Data Quality Summary
-- ==========================================================

-- ✔ Total Products Analysed      : 504
-- ✔ Missing Product Subcategory  : 209 (Expected Business Records)
-- ✔ Missing List Price           : 0
-- ✔ Missing Standard Cost        : 0
--
-- Conclusion:
-- The AdventureWorks sales dataset is suitable for business
-- analysis. No critical data quality issues were identified
-- in the Product table.


