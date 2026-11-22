-- -- Level 4: SQL operators
-- -- Topics: Arithmetic, comparison, 
-- logical, IN, BETWEEN, LIKE, IS NULL.
-- -- 38.Find products whose price 
-- is between 1,000 and 10,000.
select*from Products WHERE
price between 1000 and 10000;
-- -- 39.Find products belonging 
-- to category IDs 1, 2 and 3 using IN.
select*from Categories
where category_id in (1,2,3);
-- -- 40.Find products with price
--  greater than 5,000 AND stock greater than 10.
select*from products
where price > 5000 and stock>10;
-- -- 41.Find customers from 
-- Hyderabad OR Bangalore.
select*from Customers WHERE
city = 'Hyderabad' or city = 'Bangalore';
-- -- 42.Find products that are NOT in category ID 2.
select*from Products WHERE
category_id not in (2);
-- -- 43.Calculate the discounted price of 
--every product using arithmetic operators.
SELECT product_id, product_name, price, discount,
       price - (price * discount / 100) AS discounted_price
FROM products;
-- -- 44.Calculate the total price of each order 
--detail using quantity × unit_price.
SELECT
    order_id,
    quantity,
    unit_price,
    quantity * unit_price AS total_price
FROM order_details;
-- -- 45.Find employees whose salary is greater
 --than 30,000 and less than 80,000.
 select*from Employees WHERE
 salary>30000 and salary<80000;
-- -- 46.Find customers whose names end with 'a'.
select*from Customers WHERE
customer_name like 'a%';
-- -- 47.Find products whose names contain 'phone'
select*from products WHERE
product_name like '%phone%';