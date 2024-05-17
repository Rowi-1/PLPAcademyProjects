-- Step 1: Create the table "Sales"
CREATE TABLE IF NOT EXISTS Sales (
    ProductID INT PRIMARY KEY,
    Category VARCHAR(50),
    QuantitySold INT,
    Revenue DECIMAL(10, 2)
);

-- Step 2: Populate the table with sample data
INSERT INTO Sales (ProductID, Category, QuantitySold, Revenue) VALUES
(1, 'Electronics', 100, 1500.00),
(2, 'Clothing', 200, 2500.50),
(3, 'Books', 150, 1800.75),
(4, 'Electronics', 120, 2000.25),
(5, 'Grocery', 300, 1200.00),
(6, 'Clothing', 180, 3000.00),
(7, 'Books', 90, 1500.50),
(8, 'Electronics', 80, 1800.25),
(9, 'Grocery', 250, 1500.75),
(10, 'Clothing', 150, 2200.50);

-- Step 3: Verify the data
SELECT * FROM Sales;

--1. Calculate the total quantity sold and revenue for each product category
SELECT Category, SUM(QuantitySold) AS TotalQuantitySold, SUM(Revenue) AS TotalRevenue
FROM Sales
GROUP BY Category;
--2. Find the average revenue per unit sold for each product category

SELECT Category, AVG(Revenue / QuantitySold) AS AvgRevenuePerUnit
FROM Sales
GROUP BY Category;

-- 3. Identify the product categories with the highest total revenue
--To identify the product categories with the highest total revenue, you can use a subquery to find the maximum revenue, and then select the categories matching this maximum revenue:

SELECT Category, TotalRevenue
FROM (
    SELECT Category, SUM(Revenue) AS TotalRevenue
    FROM Sales
    GROUP BY Category
) AS CategoryRevenue
ORDER BY TotalRevenue DESC
LIMIT 1;