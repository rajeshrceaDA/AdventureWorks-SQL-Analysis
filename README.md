# AdventureWorks SQL Data Analysis

## Project Overview

This project presents an end-to-end SQL-based business analysis of the AdventureWorks database using MySQL. The objective is to transform raw transactional data into meaningful business insights through structured SQL queries and analytical thinking.

The analysis covers key business areas including sales performance, customer behavior, product performance, regional sales, and salesperson effectiveness. Each analysis is designed to answer real business questions, validate data quality, and support data-driven decision-making.

The project follows a practical analytics workflow used by data analysts in real business environments, beginning with data exploration and progressing through KPI analysis, trend analysis, product performance, customer analysis, territory performance, and sales performance reporting.

---

## Business Problem

Organizations generate large volumes of transactional data every day, but raw data alone cannot support effective business decisions. Business stakeholders require clear insights into sales performance, customer behavior, product demand, and regional performance to improve profitability and optimize business operations.

This project demonstrates how SQL can be used to convert raw business data into actionable insights by answering real-world business questions related to sales, customers, products, territories, and sales performance.

---

## Project Objectives

- Explore and understand the AdventureWorks database structure.
- Perform data quality validation before analysis.
- Analyze overall business performance using key business KPIs.
- Identify monthly and yearly sales trends.
- Evaluate product, category, and subcategory performance.
- Analyze customer purchasing behavior.
- Compare sales performance across different territories.
- Evaluate salesperson performance using business KPIs.
- Generate business insights to support decision-making.
- Demonstrate practical SQL skills used in real-world business analysis.

## Dataset Overview

AdventureWorks is a Microsoft sample database that simulates the operations of a bicycle manufacturing and retail company. The database contains interconnected business data across sales, customers, products, purchasing, inventory, employees, and territories.

This project focuses on the Sales domain to analyze business performance using SQL and answer practical business questions commonly encountered by data analysts.

## Entity Relationship

The analysis primarily focuses on the sales domain of the AdventureWorks database. The following business tables were used to answer analytical questions and generate business insights.

```text
SalesOrderHeader
│
├── SalesOrderDetail
│       │
│       └── Product
│               │
│               ├── ProductSubcategory
│               │        │
│               │        └── ProductCategory
│
├── Customer
│
├── SalesPerson
│
└── SalesTerritory
```

### Primary Tables Used

| Table | Purpose |
|--------|---------|
| SalesOrderHeader | Stores sales transactions, customer information, order dates, territory, and salespersons. |
| SalesOrderDetail | Stores product-level sales information for each order. |
| Product | Contains product information including price and product attributes. |
| ProductSubcategory | Groups products into business subcategories. |
| ProductCategory | Groups products into high-level business categories. |
| Customer | Stores customer information for customer-level analysis. |
| SalesTerritory | Stores sales region information for territory analysis. |
| SalesPerson | Stores salesperson information for sales performance analysis. |

### Database Summary

| Item | Details |
|------|---------|
| Database | AdventureWorks |
| Database Type | Relational Database |
| SQL Engine | MySQL |
| Analysis Domain | Sales Analytics |
| Analysis Period | July 2001 – July 2004 |
| Total Orders | 31,465 |
| Total Customers | 19,119 |
| Products Sold | 266 |
| Total Products | 504 |
| Product Categories | 4 |
| Product Subcategories | 37 |
| Total Revenue | $140,707,584.82 |
| Average Order Value | $4,471.88 |

## Tools & Technologies

| Tool / Technology | Purpose |
|-------------------|---------|
| MySQL | Data extraction, querying, aggregation, and business analysis |
| SQL | Data exploration, cleaning, KPI calculation, joins, aggregations, and business reporting |
| Git & GitHub | Version control, project documentation, and portfolio management |
| Markdown | Documentation and project presentation |


## Business KPIs

The following KPIs were calculated from the AdventureWorks sales data to evaluate overall business performance.

| KPI | Value |
|------|-------:|
| Total Revenue | $140,707,584.82 |
| Total Orders | 31,465 |
| Total Customers | 19,119 |
| Average Order Value | $4,471.88 |
| Products Sold | 266 |
| Analysis Period | July 2001 – July 2004 |

## Business Analysis Workflow

The project follows a structured business analysis approach, starting with data exploration and progressing through business-focused analyses to generate actionable insights.

```text
Database Exploration
        │
        ▼
Data Quality Validation
        │
        ▼
Business KPI Analysis
        │
        ▼
Sales Trend Analysis
        │
        ▼
Product Performance Analysis
        │
        ▼
Category & Subcategory Analysis
        │
        ▼
Customer Analysis
        │
        ▼
Territory Analysis
        │
        ▼
Salesperson Performance Analysis
        │
        ▼
Business Insights & Recommendations
```

## Key Business Insights

- Generated **$140.71M** in total revenue from **31,465** sales orders between **July 2001 and July 2004**.

- Sales showed strong year-over-year growth from **2001 to 2003**, while **2004 contains partial-year data**, making direct yearly comparison inappropriate.

- The **Bikes** category was the primary revenue driver, contributing the largest share of total sales.

- **Road Bikes** and **Mountain Bikes** were the highest-performing product subcategories based on total revenue.

- The **Southwest (US)** territory generated the highest total revenue, while **Canada** delivered strong revenue with a comparatively smaller customer base.

- Most high-value customers placed multiple orders, indicating that repeat customers contributed significantly to overall revenue.

- Salesperson performance varied considerably, with the highest-performing salesperson generating nearly **$14 million** in revenue.

- Data quality validation confirmed that the core sales tables contained no missing values in key business fields, providing a reliable foundation for analysis.

## Business Recommendations

Based on the analysis, the following business actions are recommended:

1. **Strengthen the Bikes product category**, as it contributes the largest share of total revenue and remains the primary business driver.

2. **Increase investment in high-performing territories**, particularly Southwest (US) and Canada, while reviewing growth opportunities in lower-performing regions.

3. **Improve customer retention strategies** by focusing on repeat customers, who contribute significantly to overall revenue.

4. **Identify and replicate the sales practices of top-performing salespersons** to improve overall team performance and establish best-practice sales strategies.

5. **Continue routine data quality validation** before business reporting to ensure accurate and reliable decision-making.

6. **Monitor product category performance regularly** to identify changes in customer demand and support inventory and sales planning.


## SQL Skills Demonstrated

| SQL Concept | Business Application |
|-------------|----------------------|
| SELECT & WHERE | Retrieved and filtered business data for analysis |
| Aggregate Functions (SUM, COUNT, AVG) | Calculated business KPIs and performance metrics |
| GROUP BY | Summarized sales, customer, product, and territory performance |
| INNER JOIN | Combined multiple business tables for integrated analysis |
| ORDER BY | Ranked business entities based on performance |
| CASE WHEN | Applied business logic for conditional analysis |
| Window Functions (RANK) | Ranked salespersons based on total revenue |
| Date Functions | Performed monthly and yearly sales trend analysis |
| Data Quality Validation | Identified missing values and validated business data before analysis |

---

## How to Run

1. Clone this repository.
2. Import the AdventureWorks database into MySQL.
3. Open the SQL files from the `sql/` folder.
4. Execute the SQL scripts in numerical order.
5. Review the generated outputs and business insights documented in the project.

```
Execution Order

01_database_exploration.sql
        ↓
02_data_quality_validation.sql
        ↓
03_business_kpis.sql
        ↓
04_sales_trend_analysis.sql
        ↓
05_product_analysis.sql
        ↓
06_category_analysis.sql
        ↓
07_subcategory_analysis.sql
        ↓
08_territory_analysis.sql
        ↓
09_customer_analysis.sql
        ↓
10_salesperson_analysis.sql
```

## About me
>Author    : Rajesh Kumar, 
>Analysis  : Product Performance Analysis, 
>Project   : AdventureWorks SQL Data Analysis, 
>Database  : AdventureWorks, 
>SQL Engine: MySQL

Objective:
>Evaluate product performance using revenue,
>order quantity, and business metrics.

