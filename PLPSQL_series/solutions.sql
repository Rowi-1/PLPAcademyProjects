--Question 1 -Imagine you have a table named "Customers" with columns for "customer_id" (number), "name" (text), and "city" (text). See the pre-populated Table found in the database above-named 8Week.sql. Write an SQL statement to add a new customer named "Alice Smith" living in "New York City" to the table.--
INSERT INTO `customers` (`customer_id`, `name`, `city`) VALUES (4, 'Alice Smith', 'New York City');

--Question 2 -There's a mistake in the "Customers" table. John Doe's city is listed as "New Yory City" instead of "New York City". How can you fix this mistake using an SQL statement?--
UPDATE `customers` SET `city` = 'New York City' WHERE `name` = 'John Doe';

--Question 3 - Search for Customers: Write an SQL statement to find all customers who live in "Chicago".--
SELECT * FROM `customers` WHERE `city` = 'Chicago';

--Question 4 -Delete a Customer: While deleting data should be done with caution, let's practice removing a customer. Write an SQL statement to remove the customer with customer ID 1 (Bob Jones) from the table. Remember, deleting data is permanent.--
DELETE FROM `customers` WHERE `customer_id` = 1;
