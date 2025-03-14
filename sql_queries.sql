Code
For the rest of the code, check the SQL_queries.sql file
-- Create database
CREATE DATABASE IF NOT EXISTS walmartSales;

-- Create table
CREATE TABLE IF NOT EXISTS sales(
	invoice_id VARCHAR(30) NOT NULL PRIMARY KEY,
    branch VARCHAR(5) NOT NULL,
    city VARCHAR(30) NOT NULL,
    customer_type VARCHAR(30) NOT NULL,
    gender VARCHAR(30) NOT NULL,
    product_line VARCHAR(100) NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL,
    quantity INT NOT NULL,
    tax_pct FLOAT(6,4) NOT NULL,
    total DECIMAL(12, 4) NOT NULL,
    date DATETIME NOT NULL,
    time TIME NOT NULL,
    payment_method VARCHAR(15) NOT NULL,
    cogs DECIMAL(10,2) NOT NULL,
    gross_margin_pct FLOAT(11,9),
    gross_income DECIMAL(12, 4),
    rating FLOAT(2, 1)
);



SELECT * FROM salesdatawalmart.sales;
use salesdatawalmart;
--dayname 
select date, dayname(date) as day_name from sales;

alter table sales add column day_name varchar(10);
SET SQL_SAFE_UPDATES = 0;
UPDATE sales
SET day_name = DAYNAME(date);

select day_name from sales;
--monthname 
select date, MONTHNAME(date) as month_name from sales;
alter table sales add column month_name varchar(10);

update sales 
set month_name= MONTHNAME(date);

select month_name from sales;
--product-1 
select product_line, count(product_line) from sales group by product_line;
--product-2
select city, count(distinct city) from sales group by city;
--product-3
select product_line, SUM(gross_margin_pct) as pgm from sales group by product_line;
--product-4
select product_line, SUM(gross_inc) as gi from sales group by product_line;
product-5
select product_line, AVG(rating) as avgrating from sales group by product_line;
select * from sales;
produt-6
select month_name, SUM(total) from sales group by month_name;

--product-7 
select month_name, max(product_line) from sales group by month_name;

--product-8 
SELECT
	month_name AS month,
	SUM(cogs) AS cogs
FROM sales
GROUP BY month_name 
ORDER BY cogs;
product-9
select product_line, case 
when avg(quantity)>4 then "Good" 
else "Bad" 
end as remark  from sales
group by product_line order by avg(quantity);

product-10
select branch, sum(quantity) from sales group by branch
HAVING SUM(quantity) > (SELECT AVG(quantity) FROM sales);

--product-11
select product_line, sum(total) as total from sales group by product_line order by total DESC;  

--product-12 
select city, sum(total) as total from sales group by city order by total DESC;


-------------------------

--customer-1
select DISTINCT customer_type from sales;
cus-2
select DISTINCT payment_method from sales;

--cus-3 
SELECT
	customer_type,
	count(*) as count
FROM sales
GROUP BY customer_type
ORDER BY count DESC;

cus-4
select DISTINCT customer_type, sum(total) as total
from sales 
group by customer_type 
order by DESC;

cus-5
select gender, count(gender) from sales group by gender order by DESC;
cus-6 
select customer_type, count(customer_type) as cc from sales group by customer_type order by cc DESC;

cus-7 
select time, max(rating) as r from sales group by time order by r DESC;
SELECT
	time_of_day,
	avg(rating) AS avg_rating
FROM sales
GROUP BY time_of_day
ORDER BY avg_rating DESC;

cus-8 
select time_of_day, avg(rating) as r from sales where branch="A" group by time_of_day order by r DESC;
select time_of_day, avg(rating) as r from sales where branch="B" group by time_of_day order by r DESC;
select time_of_day, avg(rating) as r from sales where branch="C" group by time_of_day order by r DESC;

 cus-9 
 select day_name, avg(rating) as r from sales group by day_name order by r DESC;
 
 cus-10 
 select day_name, avg(rating) as r from sales where branch="A" group by day_name order by r DESC;
  select day_name, avg(rating) as r from sales where branch="B" group by day_name order by r DESC;
  select day_name, avg(rating) as r from sales where branch="C" group by day_name order by r DESC;
  
  cus-11
  select customer_type, count(customer_type) as ct from sales group by customer_type order by ct DESC;
  
  cus-12
  select city, sum(total) revenue from sales group by city order by revenue DESC;
  
  sales-1 
  SELECT
	time_of_day,
	COUNT(total) AS total_sales
FROM sales
WHERE day_name = "Sunday"
GROUP BY time_of_day 
ORDER BY total_sales DESC;

sales-2 
select customer_type, sum(total) as total from sales group by customer_type order by total DESC;

sales-3 
select city, sum(VAT) tvat from sales group by city order by tvat DESC;

sales-4 
select product_line, sum(total) as tsales from sales group by product_line order by tsales DESC;

sales-5 
select gender, sum(total) as tsales from sales group by gender order by tsales DESC;

