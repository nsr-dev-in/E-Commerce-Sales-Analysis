-- Q.1 View All Data of Dataset
SELECT * FROM orders;

-- Q.2 Total Number of Orders
SELECT COUNT(*) AS Total_Orders
FROM orders;

-- Q3. Total Sales
SELECT SUM(sales) AS Total_Sales
FROM orders;

-- Q.4 Total Profit
SELECT SUM(profit) AS Total_Profit
FROM orders;

-- Q.5 Average Order Value
SELECT AVG(sales) AS Average_Order_Value
FROM orders;

-- Q.6 Number of Customers
SELECT COUNT(DISTINCT Customer_id) AS Total_Customers
FROM orders;

-- Q.7 Top 10 Products by Sales
SELECT product_name , SUM(sales) AS Total_Sales
FROM orders
GROUP BY product_name
ORDER BY SUM(sales) DESC
LIMIT 10;

-- Q.8 Top 10 Products by Profit
SELECT product_name , SUM(profit) AS Total_Profit
FROM orders
GROUP BY product_name
ORDER BY SUM(profit) DESC
LIMIT 10;

-- Q.9 Top 10 Loss-Making Products
SELECT product_name , SUM(profit) AS Total_Profit
FROM orders
GROUP BY product_name
ORDER BY SUM(profit) ASC
LIMIT 10;

-- Q.10 Sales by Category
SELECT category , SUM(sales) AS Total_Sales
FROM orders
GROUP BY category
ORDER BY SUM(sales) DESC;

-- Q.11 Profit by Category
SELECT category , SUM(profit) AS Total_Profit
FROM orders
GROUP BY category
ORDER BY SUM(profit) DESC;

-- Q.12 Sales by Region
SELECT region , SUM(sales) AS Total_Sales
FROM orders
GROUP BY region
ORDER BY SUM(sales) DESC;


-- Q.13 Profit by Region
SELECT region , SUM(profit) AS Total_Profit
FROM orders
GROUP BY region
ORDER BY SUM(profit) DESC;

-- Q.14 Top Customers by Sales
SELECT customer_name , SUM(sales) AS Total_Sales
FROM orders
GROUP BY customer_name
ORDER BY SUM(sales) DESC
LIMIT 10;

-- Q.15 Top Customers by Profit
SELECT customer_name , SUM(profit) AS Total_Profit
FROM orders
GROUP BY customer_name
ORDER BY SUM(profit) DESC
LIMIT 10;

-- Q.16 Average Discount by Category
SELECT category , AVG(discount) AS Average_Discount
FROM orders
GROUP BY category;

-- Q.17 Category-wise Profit Margin
SELECT category, ROUND((SUM(profit)/SUM(sales)*100)::numeric, 2) AS Profit_Margin
FROM orders
GROUP BY category;

-- Q.18 Customers with More Than 10 Orders
SELECT customer_name , COUNT(order_id) AS Total_Orders
FROM orders
GROUP BY customer_name
HAVING COUNT(order_id) > 10
ORDER BY COUNT(order_id) DESC;

-- Q.19 Categories Having Sales Greater Than 100000
SELECT category ,SUM(sales) AS Total_Sales
FROM orders
GROUP BY category
HAVING SUM(sales) > 100000;

-- Q.20 Top 5 Cities By Sales
SELECT city , SUM(sales) AS Total_Sales
FROM orders
GROUP BY city
ORDER BY SUM(sales) DESC
LIMIT 5;