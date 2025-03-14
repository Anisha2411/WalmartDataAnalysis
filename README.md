Walmart Data Analysis

About

This project analyzes Walmart sales data to identify the best-performing branches and products, track sales trends, and understand customer behavior. The goal is to find ways to improve and optimize sales strategies. The dataset comes from the Kaggle Walmart Sales Forecasting Competition.

We have performed an analysis on the data to understand the insights of the data. We have solved challenging questions which cater the needs of a business. We have identified the top selling product, which day of the week has the most demand, which time of a day we have peak sales etc. These outcomes enable us to forecast future sales and make business associated decisions. We can manage our inventory, advertise our key products based on the analysis outcomes. 

Purposes Of The Project

The major aim of thie project is to gain insight into the sales data of Walmart to understand the different factors that affect sales of the different branches.
About Data. The dataset was obtained from the Kaggle Walmart Sales Forecasting Competition. This dataset contains sales transactions from a three different branches of Walmart, respectively located in Mandalay, Yangon and Naypyitaw. The data contains 17 columns and 995 rows:

Column	Description	Data Type-
invoice_id	Invoice of the sales made	VARCHAR(30)
branch	Branch at which sales were made	VARCHAR(5)
city	The location of the branch	VARCHAR(30)
customer_type	The type of the customer	VARCHAR(30)
gender	Gender of the customer making purchase	VARCHAR(10)
product_line	Product line of the product solf	VARCHAR(100)
unit_price	The price of each product	DECIMAL(10, 2)
quantity	The amount of the product sold	INT
VAT	The amount of tax on the purchase	FLOAT(6, 4)
total	The total cost of the purchase	DECIMAL(10, 2)
date	The date on which the purchase was made	DATE
time	The time at which the purchase was made	TIMESTAMP
payment_method	The total amount paid	DECIMAL(10, 2)
cogs	Cost Of Goods sold	DECIMAL(10, 2)
gross_margin_percentage	Gross margin percentage	FLOAT(11, 9)
gross_income	Gross Income	DECIMAL(10, 2)
rating	Rating	FLOAT(2, 1)

Analysis List-
1.	Product Analysis
Conduct analysis on the data to understand the different product lines, the products lines performing best and the product lines that need to be improved.
2.	Sales Analysis
This analysis aims to answer the question of the sales trends of product. The result of this can help use measure the effectiveness of each sales strategy the business applies and what modificatoins are needed to gain more sales.
3.	Customer Analysis
This analysis aims to uncover the different customers segments, purchase trends and the profitability of each customer segment.



# WalmartDataAnalysis
METHODS
1.	Data Wrangling: This is the first step where inspection of data primarily used for data cleaning, enriching and transforming the data. In this step, we make sure NULL values and missing values are detected and data replacement methods are used to replace, missing or NULL values.
•	Build a database
•	Create table and insert the data.
•	Select columns with null values in them. There are no null values in our database as in creating the tables, we set NOT NULL for each field, hence null values are filtered out.
2.	Feature Engineering:  It helps to generate some new columns from existing ones for target based analysis. 

•	Add a new column named time_of_day to give insight of sales in the Morning, Afternoon and Evening. This will help answer the question on which part of the day most sales are made.
•	Add a new column named day_name that contains the extracted days of the week on which the given transaction took place (Mon, Tue, Wed, Thur, Fri). This will help answer the question on which week of the day each branch is busiest.
•	Add a new column named month_name that contains the extracted months of the year on which the given transaction took place (Jan, Feb, Mar). Help determine which month of the year has the most sales and profit.

3.	Exploratory Data Analysis (EDA): Exploratory data analysis is done to answer the listed questions and aims of this project.
4.	Conclusion: To analyze the data and answer the research questions to make business driven informed decisions. 

Business research questions

Research on product
1.	What are the various product categories we offer?
2.	What cities are we shipping our products? 
3.	Total gross margin from each product category 
4.	Gross income generated from each product category? 
5.	 Average rating of each product category for further quality checks 
6.	Total revenue  of each month
7.	Most sold product line in all the months
8.	What month had the largest cogs?
9.	Fetch each product line and add a column to those product line showing "Good", "Bad". Good if its greater than average sales
10.	Which branch sold more products than average product sold?
11.	What product line had the largest revenue?
12.	What is the city with the largest revenue?


Research on Customer 
1.	How many unique customer types does the data have?
2.	How many unique payment methods does the data have?
3.	What is the most common customer type?
4.	Which customer type buys the most?
5.	Which gender buys the most from us ?
6.	Out of all customers, how many customers are our prime members?
7.	Which time of the day do customers give most ratings?
8.	Which time of the day do customers give most ratings per branch?
9.	Which day fo the week has the best avg ratings?
10.	 Which day of the week has the best average ratings per branch?
11.	How many customers are our prime members and how many are non-prime 
12.	What is the city with the largest revenue?

Researrch on Sales
1.	Number of sales made in each time of the day per weekday.
2.	Which of the customer types brings the most revenue?
3.	Which city has the largest tax percent/ VAT (Value Added Tax)?
4.	Total revenue incurred by each product line to identify the hero product 
5.	Revenue bifurcation identification between genders based on product category for gender-specific marketing

