/*
=============================================================
Project      : AdventureWorks SQL Data Analysis
Analysis     : Database Exploration
Author       : Rajesh Kumar
Database     : AdventureWorks
SQL Engine   : MySQL

Objective:
Explore the AdventureWorks database structure and identify
the key business tables required for sales analysis.

=============================================================
*/

-- ==========================================================
-- Business Question 1
-- Explore all available tables in the AdventureWorks database.
-- ==========================================================

SHOW TABLES;

-- ==========================================================
-- Business Question 2
-- Examine the structure of the SalesOrderHeader table.
-- ==========================================================

DESCRIBE SalesOrderHeader;

-- ==========================================================
-- Business Question 4
-- Examine the structure of the Product table.
-- ==========================================================

DESCRIBE Product;

-- ==========================================================
-- Key Business Tables Used in This Project
-- ==========================================================
-- SalesOrderHeader      : Order-level information
-- SalesOrderDetail      : Product-level sales details
-- Product               : Product information
-- ProductSubcategory    : Product subcategories
-- ProductCategory       : Product categories
-- Customer              : Customer information
-- SalesTerritory        : Sales region information
-- SalesPerson           : Salesperson performance

-- ==========================================================
-- Project Scope
-- ==========================================================
-- This project focuses on the Sales domain of the
-- AdventureWorks database.
--
-- The analysis includes:
-- 1. Database Exploration
-- 2. Data Quality Validation
-- 3. Business KPI Analysis
-- 4. Sales Trend Analysis
-- 5. Product Performance Analysis
-- 6. Customer Analysis
-- 7. Territory Analysis
-- 8. Salesperson Performance Analysis

-- ==========================================================
-- Key Observations
-- ==========================================================
-- • AdventureWorks contains multiple business modules.
-- • Sales-related tables are connected through primary and
--   foreign key relationships.
-- • SalesOrderHeader and SalesOrderDetail are the core
--   transactional tables.
-- • Product hierarchy is organized into Categories and
--   Subcategories.
-- • These tables provide the foundation for business analysis.
