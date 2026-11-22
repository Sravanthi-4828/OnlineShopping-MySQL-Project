-- Level 3: DQL – Basic SELECT queries
-- Topics: SELECT, WHERE, DISTINCT, LIMIT, ORDER BY.
-- 25.Display all customer details.
select*from Customers;
-- 26.Display only customer names and cities.
select customer_name,city from Customers;
-- 27.Find customers who belong to Hyderabad.
Select*from Customers where city = 'Hyderabad';
-- 28.Display all unique cities from the Customers table.
select distinct(city) from Customers;
-- 29.Find products whose price is greater than 5,000.
select*from Products where price>5000;
-- 30.Display products in ascending order of price.
select*from products 
order by price Asc;
-- 31.Display the 5 most expensive products.
select*from Products 
order by price DESC
Limit 5;
-- 32.Find customers whose age is between 20 and 30.
select*from Customers 
where age between 20 and 30;
-- 33.Find orders placed after a particular date.
SELECT *
FROM orders
WHERE order_date > '2024-09-01';
-- 34.Find products whose names start with 'S'.
select*from Products 
where product_name like 'S%';
-- 35.Find customers whose email contains 'gmail'.
select*from Customers WHERE
email like '%mail%';
-- 36.Find customers whose phone number is NULL.
-- 37.Find products where discount is not NULL.