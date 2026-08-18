# Monday Coffee SQL Analysis

## 📌 Project Overview

This project analyzes sales, customer, product, and city-level data for **Monday Coffee** using SQL.

The objective is to evaluate sales performance, customer demand, product performance, monthly sales growth, and city-wise market potential for coffee shop expansion.

## 🗂️ Database Schema

The project contains four main tables:

- **City** – Population, estimated rent, and city ranking
- **Customers** – Customer details and city information
- **Products** – Coffee products and prices
- **Sales** – Sales transactions, dates, customers, products, revenue, and ratings

The tables are connected using primary keys and foreign keys.

**Relationships:** City → Customers → Sales ← Products

## 🔍 Business Questions

1. **Coffee Consumers Count**  
   Estimated coffee consumers in each city assuming 25% of the population consumes coffee.

2. **Total Revenue from Coffee Sales**  
   Analyzed city-wise revenue generated during Q4 2023.

3. **Sales Count for Each Product**  
   Identified the number of sales/orders for each coffee product.

4. **Average Sales Amount per City**  
   Calculated total revenue, unique customers, and average sales per customer for each city.

5. **City Population and Coffee Consumers**  
   Compared estimated coffee consumers with the number of unique customers in each city.

6. **Top Selling Products by City**  
   Ranked products within each city based on sales volume using the `DENSE_RANK()` window function.

7. **Unique Coffee Customers by City**  
   Analyzed the number of unique customers purchasing coffee products in each city.

8. **Estimated Rent vs Sales**  
   Compared estimated city rent with sales and customer-related metrics.

9. **Monthly Sales Growth**  
   Calculated month-over-month sales growth using a CTE and the `LAG()` window function.

10. **Market Potential Analysis**  
    Identified top-performing cities based on sales, customer count, estimated coffee consumers, and city-level metrics.

## 🛠️ SQL Concepts Used

- SELECT, WHERE, GROUP BY, ORDER BY
- INNER JOIN and LEFT JOIN
- Aggregate Functions (`SUM`, `COUNT`)
- `COUNT(DISTINCT)`
- Common Table Expressions (CTEs)
- Window Functions (`DENSE_RANK`, `LAG`)
- `PARTITION BY`
- Date Functions (`YEAR`, `MONTH`, `QUARTER`)
- Percentage Growth Calculation
- Primary Keys and Foreign Keys
- Relational Database Design

## 📁 Project Structure

- **Schemas.sql** – Database tables, primary keys, and foreign keys
- **analysis_queries.sql** – SQL queries used for the business analysis
- **README.md** – Project documentation

## 💻 Tools & Technologies

- **MySQL**
- **SQL**
- **GitHub**

## 👤 Author

**Salman Morol**

Aspiring Data Analyst | SQL | Power BI | Excel
