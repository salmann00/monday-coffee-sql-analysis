# Monday Coffee SQL Analysis

## 📌 Project Overview

This project analyzes sales, customer, product, and city-level data for **Monday Coffee** using SQL.

The main objective is to evaluate sales performance, customer demand, product performance, monthly sales growth, and city-wise market potential to identify cities with strong potential for coffee shop expansion.

The analysis was performed using a relational database containing city, customer, product, and sales information.

---

## 🗂️ Database Schema

The project contains four main tables:

- **City** – Contains city information such as population, estimated rent, and city ranking.
- **Customers** – Contains customer details and their respective city.
- **Products** – Contains coffee product details and prices.
- **Sales** – Contains sales transactions, dates, products, customers, revenue, and ratings.

### Table Relationships

```text
City
  │
  └── Customers
        │
        └── Sales ─── Products

🔍 Business Questions Analyzed
Coffee Consumers Count
Estimated the number of coffee consumers in each city assuming 25% of the population consumes coffee.
Total Revenue from Coffee Sales
Analyzed city-wise revenue generated during Q4 2023.
Sales Count for Each Product
Identified the number of sales/orders for each coffee product.
Average Sales Amount per City
Calculated total revenue, unique customers, and average sales per customer for each city.
City Population and Coffee Consumers
Compared estimated coffee consumers with the number of unique customers in each city.
Top Selling Products by City
Ranked products within each city based on sales volume using the DENSE_RANK() window function.
Unique Coffee Customers by City
Analyzed the number of unique customers purchasing coffee products in each city.
Estimated Rent vs Sales
Compared estimated city rent with sales and customer-related metrics.
Monthly Sales Growth
Calculated month-over-month sales growth using a CTE and the LAG() window function.
Market Potential Analysis
Identified top-performing cities based on sales, customer count, estimated coffee consumers, and city-level metrics.
🛠️ SQL Concepts Used
SELECT, WHERE, GROUP BY, ORDER BY
INNER JOIN and LEFT JOIN
Aggregate Functions: SUM(), COUNT()
COUNT(DISTINCT)
Date Functions: YEAR(), MONTH(), QUARTER()
Common Table Expressions (CTEs)
Window Functions:
DENSE_RANK()
LAG()
PARTITION BY
Percentage Growth Calculation
Primary Keys and Foreign Keys
Relational Database Design
📁 Project Structure
monday-coffee-sql-analysis/
│
├── PROJECT.sql
├── Schemas.sql
└── README.md
Schemas.sql

Contains the database structure, table creation statements, primary keys, and foreign key relationships.

analysis_queries.sql

Contains the SQL queries used to perform the business analysis.

💡 Key Skills Demonstrated
Translating business questions into SQL queries
Working with relational databases
Joining multiple tables
Performing sales, customer, product, and city-level analysis
Using SQL window functions for ranking and trend analysis
Calculating monthly sales growth
Analyzing market potential using multiple business metrics
💻 Tools & Technologies
MySQL
SQL
GitHub
👤 Author

Salman Morol

Aspiring Data Analyst | SQL | Power BI | Excel
