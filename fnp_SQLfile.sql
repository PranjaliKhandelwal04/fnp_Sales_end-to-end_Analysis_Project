#Creating the database
CREATE DATABASE ecommerce;
#Using the database
USE ecommerce;

#Creating the table in the database
CREATE TABLE fnp_sales(
Order_ID  VARCHAR(50),
Order_Date  DATE,
Customer_ID  VARCHAR(50),
Product_ID  VARCHAR(50),
Category    VARCHAR(100),
Quantity    INT,
UnitPrice   INT,
TotalAmount  INT,
City         VARCHAR(100)
);

#After importing the data from the csv file
#Checking if the data is import correctly or not
SELECT * 
FROM fnp_sales
LIMIT 3;

#Generating the key insights by querying
#Getting total revenue
SELECT SUM(TotalAmount) AS total_revenue
FROM fnp_sales;

#Getting the number of total orders and total customers
SELECT 
COUNT(DISTINCT Order_ID) AS total_orders,
COUNT(DISTINCT Customer_ID) AS total_customers
FROM fnp_sales;

#Getting Average Order values
SELECT
SUM(TotalAmount)/NULLIF(COUNT(DISTINCT Order_ID),0) AS avg_order_values
FROM fnp_sales;

#Getting top 10 products by revenue
SELECT Product_ID,Category,SUM(TotalAmount) AS revenue,SUM(Quantity) AS qty_sold
FROM fnp_sales
GROUP BY Product_ID,Category
ORDER BY revenue DESC
LIMIT 10;

#Getting sales by Category
SELECT Category,SUM(TotalAmount) AS revenue,SUM(Quantity) AS qty_sold
FROM fnp_sales
GROUP BY Category
ORDER BY revenue DESC;

#Getting top cities
SELECT City,SUM(TotalAmount) AS revenue,SUM(Quantity) AS qty_sold
FROM fnp_sales
GROUP BY City
ORDER BY revenue DESC
LIMIT 20;









