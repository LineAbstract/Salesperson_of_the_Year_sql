-- Test query & commit
-- SELECT * FROM employees;
-- SELECT * FROM products;
-- SELECT * FROM sales;

-- Problem 1 & 2
-- 1. Using JOINs in a single query, combine data from all three tables (employees, products, sales) to view all sales with complete employee and product information in one table.
-- SELECT * FROM employees 
-- JOIN sales ON employees.EmployeeID = sales.SalesPersonID
-- JOIN products ON sales.ProductID = products.ProductID;

-- 2a. Create a View for the query you made in Problem 1 named "all_sales"
-- NOTE: You'll want to remove any duplicate columns to clean up your view!
-- CREATE VIEW all_sales AS
-- SELECT e.EmployeeID, e.FirstName, e.MiddleInitial, e.LastName, s.SalesID, s.CustomerID, p.ProductID, s.Quantity, p.Name AS ProductName, p.Price FROM employees e
-- JOIN sales s ON e.EmployeeID = s.SalesPersonID
-- JOIN products p ON s.ProductID = p.ProductID;

-- 2b. Test your View by selecting all rows and columns from the View
-- SELECT * FROM all_sales;

-- Problem 3
-- Find the average sale amount for each sales person
-- SELECT 
-- 		DISTINCT EmployeeID, FirstName, LastName,
-- 		CONCAT('$ ', ROUND(SUM(Price * Quantity), 2)) AS TotalSalesAmount, 
-- 		COUNT(EmployeeID) AS NumberofSales, 
-- 		CONCAT('$ ',ROUND((SUM(Price * Quantity)/COUNT(EmployeeID)), 2)) AS AverageSaleAmount
-- 	FROM all_sales
-- GROUP BY EmployeeID
-- ORDER BY EmployeeID ASC;

-- SELECT 
-- 		DISTINCT EmployeeID, FirstName, LastName,
-- 		ROUND(SUM(Price * Quantity), 2) AS TotalSalesAmount, 
-- 		COUNT(EmployeeID) AS NumberofSales, 
-- 		ROUND((SUM(Price * Quantity)/COUNT(EmployeeID)), 2) AS AverageSaleAmount
-- 	FROM all_sales
-- GROUP BY EmployeeID
-- ORDER BY EmployeeID ASC;

-- Problem 4
-- Find the top three sales persons by total sales
-- SELECT 	EmployeeID, FirstName, LastName, 
--         ROUND(SUM(Price * Quantity), 2) AS TotalSalesAmount
-- 	FROM all_sales
-- GROUP BY EmployeeID
-- ORDER BY TotalSalesAmount DESC
-- LIMIT 3;

-- Problem 5
-- Find the product that has the highest price
-- SELECT ProductID, Name, Price FROM products
-- ORDER BY PRICE DESC
-- LIMIT 5;

-- Problem 6
-- Find the product that was sold the most times
-- SELECT ProductID, Name, SUM(Quantity) AS NumberSold FROM all_sales
-- GROUP BY ProductID
-- ORDER BY NumberSold DESC
-- LIMIT 1;

-- Find the product that was sold the least times
-- SELECT ProductID, Name, SUM(Quantity) AS NumberSold FROM all_sales
-- GROUP BY ProductID
-- ORDER BY NumberSold ASC
-- LIMIT 1;

-- Find the product with the highest dollar amount sold
-- SELECT productID, Name, Price, Quantity, 
-- 		ROUND(SUM(Price * Quantity), 2) AS TotalSalesAmount
-- 	FROM all_sales
-- GROUP BY productID
-- ORDER BY TotalSalesAmount DESC;

-- Find the product with the lowest dollar amount sold
-- SELECT productID, Name, Price, Quantity, 
-- 		ROUND(SUM(Price * Quantity), 2) AS TotalSalesAmount
-- 	FROM all_sales
-- GROUP BY productID
-- ORDER BY TotalSalesAmount ASC;

-- Problem 7
-- Using a subquery, find all products that have a price higher than the average price for all products
-- SELECT ProductID, Name, Price FROM products
-- WHERE price > (
-- 	SELECT AVG(Price) FROM products)
-- ORDER BY Price ASC;

-- Problem 8
-- Find the customer who spent the most money in purchased products
-- SELECT CustomerID, 
-- 		ROUND(SUM(Quantity * Price), 2) AS CustomerSpend 
-- 	FROM all_sales
-- GROUP BY CustomerID
-- ORDER BY CustomerSpend DESC;

-- Problem 9
-- Find the total number of sales for each sales person
-- SELECT EmployeeID,
-- 		COUNT(EmployeeID) AS NumberofSales
-- 	FROM all_sales
-- GROUP BY EmployeeID
-- ORDER BY EmployeeID ASC;

-- Problem 10
-- Find the sales person who sold the most to the customer you found in Problem 8
-- customer who spent the most money is CustomerID 18723, so I can simply select for that
-- SELECT DISTINCT EmployeeID, FirstName, LastName FROM all_sales
-- WHERE CustomerID = 18723

-- Extra needed to answer REPORT question
-- Which products, quantities of products and customers did the top salesperson sell? 
-- SELECT FirstName, CustomerID, ProductID, Quantity, Price FROM all_sales
-- WHERE FirstName = 'Dirk';