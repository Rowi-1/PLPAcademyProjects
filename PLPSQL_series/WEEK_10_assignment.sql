/*Dataset: Sales Orders

Sample Dataset:
```
| OrderID | CustomerName  | OrderDate  | TotalAmount |
|---------|---------------|------------|-------------|
| 1       | John Doe      | 2023-05-10 | 150.00      |
| 2       | Jane Smith    | 2023-05-12 | 200.00      |
| 3       | Alice Johnson | 2023-05-11 | 100.00      |
```*/

/*SQL Query: sql 
Purpose: To sort sales orders based on the order date in ascending order.
 Step 1: Selecting all columns from the Sales Orders table and sorting the data based on the OrderDate column in ascending order.
SELECT * FROM SalesOrders
ORDER BY OrderDate ASC;
Explanation: The ORDER BY clause is used to sort the data retrieved from the Sales Orders table. By specifying "OrderDate ASC", the query sorts the sales orders in chronological order, from the earliest to the latest order date.
--This SQL query sorts the sales orders based on the order date in ascending order, allowing users to view the orders chronologically. It's useful for tracking the order history and analyzing sales trends over time. --
*/
-- Purpose: To sort sales orders based on the order date in ascending order.

-- Step 1: Selecting all columns from the Sales Orders table and sorting the data based on the OrderDate column in ascending order.
SELECT * FROM SalesOrders
ORDER BY OrderDate ASC;

-- Explanation: The ORDER BY clause is used to sort the data retrieved from the Sales Orders table. By specifying "OrderDate ASC", the query sorts the sales orders in chronological order, from the earliest to the latest order date.


