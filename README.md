# Monday Coffee SQL Analysis

## 📌 Project Overview

This project focuses on analyzing sales and customer data for **Monday Coffee** using SQL.

The goal of this project is to analyze sales performance, customer behavior, product performance, city-wise revenue, monthly sales growth, and market potential to support business decision-making.

The analysis was performed using a relational database containing city, customer, product, and sales information.

---

## 🗂️ Database Schema

The project contains four main tables:

* **City** – Contains city information such as population, estimated rent, and city ranking.
* **Customers** – Contains customer details and their respective city.
* **Products** – Contains coffee product details and prices.
* **Sales** – Contains sales transactions, dates, products, customers, revenue, and ratings.

### Table Relationships

```text
City
  │
  └── Customers
        │
        └── Sales ─── Products
```

Primary keys and foreign keys are used to establish relationships between the tables.

---

## 🔍 Business Questions Analyzed

The project answers the following business questions:

1. **Coffee Consumers Count**
   Estimated the number of coffee consumers in each city assuming 25% of the population consumes coffee.

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

8. **Impact of Estimated Rent on Sales**
   Compared estimated city rent with sales and customer-related metrics.

9. **Monthly Sales Growth**
   Calculated month-over-month sales growth using `CTE` and the `LAG()` window function.

10. **Market Potential Analysis**
    Identified the top cities based on sales performance and analyzed their customer base, estimated coffee consumers, and other business metrics.

---

## 🛠️ SQL Concepts Used

This project demonstrates practical use of:

* SELECT statements
* WHERE clause
* JOINs
* LEFT JOIN
* GROUP BY
* ORDER BY
* Aggregate Functions

  * `SUM()`
  * `COUNT()`
* `COUNT(DISTINCT)`
* Date Functions

  * `YEAR()`
  * `MONTH()`
  * `QUARTER()`
* Common Table Expressions (`CTE`)
* Window Functions

  * `DENSE_RANK()`
  * `LAG()`
  * `PARTITION BY`
* Percentage Growth Calculation
* Primary Keys
* Foreign Keys
* Relational Database Design

---

## 📁 Project Structure

```text
monday-coffee-sql-analysis/
│
├── PROJECT.sql
├── Schemas.sql
└── README.md
```

### `Schemas.sql`

Contains the database structure, table creation statements, primary keys, and foreign key relationships.

### `PROJECT.sql`

Contains the SQL queries used to perform the business analysis.

---

## 💡 Key Skills Demonstrated

Through this project, I practiced:

* Writing SQL queries for business problems
* Working with relational databases
* Joining multiple tables
* Performing sales and customer analysis
* Using advanced SQL window functions
* Calculating monthly sales growth
* Ranking products by city
* Translating business questions into SQL queries

---

## 💻 Tools & Technologies

* **MySQL**
* **SQL**
* **GitHub**

---

## 👤 Author

**Salman Morol**

Aspiring Data Analyst | SQL | Power BI | Excel
