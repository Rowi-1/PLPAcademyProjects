-- Purpose: To sort sales orders based on the order date in ascending order.

-- Step 1: Selecting all columns from the Sales Orders table and sorting the data based on the OrderDate column in ascending order.
SELECT * FROM SalesOrders
ORDER BY OrderDate ASC;

-- Explanation: The ORDER BY clause is used to sort the data retrieved from the Sales Orders table. By specifying "OrderDate ASC", the query sorts the sales orders in chronological order, from the earliest to the latest order date.
