CREATE DATABASE ecommerce;
USE ecommerce;
CREATE TABLE sales(
order_id VARCHAR(30),
order_date DATE,
customer_name VARCHAR(100),
region VARCHAR(50),
category VARCHAR(50),
sub_category VARCHAR(50),
sales FLOAT,
quantity INT,
profit FLOAT,
year INT,
month VARCHAR(20)
);

SHOW DATABASES;

SELECT * FROM ecommerce.superstore LIMIT 10;
01)Total sale
SELECT SUM(sales)
FROM superstore;

02)Top 10 customer
SELECT customer_name,
SUM(sales) total_sales
FROM superstore
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;

03)Best selling catagery
SELECT category,
SUM(sales)
FROM superstore
GROUP BY category;

04) highest profit region

SELECT region,
SUM(profit)
FROM superstore
GROUP BY region
ORDER BY SUM(profit) DESC;

05)Monthly sales

SELECT month,
SUM(sales)
FROM superstore
GROUP BY month;

06) average order value

SELECT AVG(sales)
FROM superstore;

07)Top 5 produt

SELECT sub_category,
SUM(sales)
FROM superstore
GROUP BY sub_category
ORDER BY SUM(sales) DESC
LIMIT 5;

07) loss making categories

SELECT category,
SUM(profit)
FROM superstore
GROUP BY category
HAVING SUM(profit)<0;