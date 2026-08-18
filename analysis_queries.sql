-- Monday Coffee -- Data Analysis 



-- 	Q1. Coffee Consumers Count 
-- How many people in each city are estimated to consume coffee, given that 25% of the population does?


SELECT city_name, ROUND(population*0.25/1000000,2) as coffee_consumers_in_millions,
city_rank 
FROM city
ORDER BY population DESC;

-- Q2. Total Revenue from Coffee Sales
-- What is the total revenue generated from coffee sales across all cities in the last quarter (Q4) of 2023?


SELECT ci.city_name, sum(s.total) as total_revenue 
FROM sales as s 
JOIN customers as c 
ON c.customer_id= s.customer_id
JOIN city as ci 
ON ci.city_id = c.city_id
WHERE YEAR(s.sales_date) = 2023
AND QUARTER(s.sales_date)= 4 
GROUP BY ci.city_name
ORDER BY total_revenue DESC;

-- Q3 Sales Count for Each Product 
-- How many units of each coffee product have been sold?

SELECT p.product_name, count(s.sales_id) as total_orders
FROM products p
LEFT JOIN sales s 
	ON s.product_id=p.product_id 
GROUP BY p.product_name 
ORDER BY total_orders DESC ;

-- Q4 Average Sales Amount per City
 -- What is the average sales amount per customer in each city?
 

 SELECT ci.city_name, sum(s.total) as total_revenue, count(DISTINCT s.customer_id) as total_customer,
 ROUND(sum(s.total)/count(DISTINCT s.customer_id),2) as avg_sale_per_customer
FROM sales as s 
JOIN customers as c 
ON c.customer_id= s.customer_id
JOIN city as ci 
ON ci.city_id = c.city_id
GROUP BY ci.city_name 
ORDER BY total_revenue DESC;

-- Q5 City Population and Coffee Consumers 25%
-- Provide a list of cities along with their populations and estimated coffee consumers.
-- return city name, coffee consumer, customer  
SELECT 
    ci.city_name, 
    ROUND((ci.population * 0.25) / 1000000, 2) AS coffee_consumer_in_millions,
    COUNT(DISTINCT s.customer_id) AS unique_customer
FROM city ci
JOIN customers c 
ON ci.city_id = c.city_id
JOIN sales s 
ON s.customer_id = c.customer_id
GROUP BY ci.city_name, ci.population
ORDER BY unique_customer DESC;

-- Q6 Top Selling Products by City
-- What are the top 3 selling products in each city based on sales volume?

SELECT ci.city_name, p.product_name, count(s.sales_id) as total_sales,
DENSE_RANK() OVER(PARTITION BY ci.city_name ORDER BY  count(s.sales_id) DESC) as ranking
FROM sales s 
JOIN customers c
ON c.customer_id = s.customer_id
JOIN products p
	ON p.product_id=s.product_id
    JOIN city ci
    ON c.city_id=ci.city_id 
    GROUP BY ci.city_name, p.product_name
    LIMIT 3;

-- Q7 Customer Segmentation by City
-- How many unique customers are there in each city who have purchased coffee products?

SELECT ci.city_name,COUNT(DISTINCT c.customer_id) as unique_customer
FROM customers c 
JOIN city ci
ON c.city_id=ci.city_id
JOIN sales s 
ON s.customer_id = c.customer_id 
WHERE s.product_id BETWEEN 1 and 14
GROUP BY 1;

-- Q8 Impact of estimated rent on sales:
-- Find each city and their average sale per customer and avg rent per customer

SELECT ci.city_name, 
estimated_rent, COUNT(DISTINCT s.customer_id) as total_customer,
ROUND(SUM(s.total)/ COUNT(DISTINCT s.customer_id), 2) as avg_sale_per_customer, 
ROUND(ci.estimated_rent/ COUNT(DISTINCT s.customer_id), 2) as avg_rent_per_customer
FROM sales s 
JOIN customers c
ON c.customer_id=s.customer_id
JOIN city ci
ON ci.city_id=c.city_id
GROUP BY ci.city_name, ci.estimated_rent
 ORDER BY avg_sale_per_customer desc;
 

-- Q9 Monthly Sales Growth
-- Sales growth rate: Calculate the percentage growth (or decline) in sales over different time periods (monthly)

WITH monthly_sales AS (
SELECT ci.city_name, 
MONTH(s.sales_date) AS months, 
YEAR(s.sales_date) AS years,
SUM(s.total) as cr_month_sale
FROM sales s 
JOIN customers c 
ON c.customer_id=s.customer_id
JOIN city ci 
ON ci.city_id=c.city_id 
GROUP BY 1,2,3),

growth_data AS (
SELECT city_name, months, years, cr_month_sale,
LAG(cr_month_sale) OVER (PARTITION BY city_name ORDER BY years, months) as last_month_sale
FROM monthly_sales)

SELECT *,
ROUND(((cr_month_sale-last_month_sale)/last_month_sale) * 100, 2)  as growth_ratio
FROM growth_data;


-- Q10 Market Potential Analysis
-- Identify top 3 city based on highest sales, return city name, total sale, total rent, total customers, estimated coffee consumer.

SELECT ci.city_name, SUM(s.total) as total_sales, 
COUNT(DISTINCT c.customer_id) as total_customer,
ROUND(ci.estimated_rent/COUNT(DISTINCT s.customer_id),2) as avg_rent_per_customer,
ROUND(SUM(s.total) /COUNT(DISTINCT s.customer_id), 2) as avg_sale_per_customer,
ROUND((ci.population * 0.25)/1000000,3) as estimated_coffee_consumers 
FROM sales s 
JOIN customers c
ON s.customer_id=c.customer_id
JOIN city ci
ON c.city_id=ci.city_id
GROUP BY city_name, ci.estimated_rent, ci.population
ORDER BY total_sales DESC 
LIMIT 3;































