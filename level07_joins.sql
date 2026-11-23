-- Level 7: Joins
-- This is one of the most important sections of your project.
-- INNER JOIN
-- 77.Display customer names along with their orderIDs.
select c.customer_name, o.order_id
from customers c 
join orders O
on c.customer_id = o.customer_id;
-- 78.Display product names along with their category names.
select p.product_name, c.category_name
from Products p
join Categories c
on p.category_id = c.category_id;
-- 79.Display order IDs along with customer
-- names and order dates.
select o.order_id, c.customer_name
from orders o 
join customers c 
on o.customer_id = c.customer_id;
-- 80.Display order details with product names and 
--quantities.
select o.order_detail_id, p.product_name, o.quantity
from order_details o 
join products p
on o.product_id = p.product_id;
-- LEFT JOIN
-- 81.Display all customers, including customers 
--who have never placed an order.
SELECT c.*, o.order_id
FROM Customers c
LEFT JOIN Orders o
ON c.customer_id = o.customer_id;
-- 82.Display all categories, including categories that have no products.
select c.*, p.product_name
from Categories c
left join Products p
on c.category_id = p.category_id
-- 83.Find customers who have not placed any orders.
select c.*, o.order_id
from customers c
left join orders O
on c.customer_id = o.customer_id
where o.order_id is null;

-- RIGHT JOIN
-- 84. Display all products along with their 
--category names, including products without
-- matching categories in a test dataset.
select p.*, c.category_name
from categories c
right join products p
on p.category_id = c.category_id;

-- FULL OUTER JOIN
-- 85. Display all customers and orders, 
--including unmatched records from both tables.
-- Note: MySQL does not directly support FULL OUTER 
-- JOIN. If you use MySQL, practise
-- this using UNION with LEFT JOIN and RIGHT JOIN.
SELECT c.*, o.*
FROM Customers c
LEFT JOIN Orders o
ON c.customer_id = o.customer_id
UNION ALL
SELECT c.*, o.*
FROM Customers c
RIGHT JOIN Orders o
ON c.customer_id = o.customer_id
WHERE c.customer_id IS NULL;

-- CROSS JOIN
-- 86. Generate all possible combinations
 --of customers and categories.
select * from customers
cross join categories;
-- SELF JOIN
-- 87.Display employee names along with their 
--manager names.
SELECT 
    e.employee_name AS Employee,
    m.employee_name AS Manager
FROM Employees e
LEFT JOIN Employees m
ON e.manager_id = m.employee_id;
-- 88.Find employees who work under the same 
--manager.
SELECT
    e1.employee_name AS Employee1,
    e2.employee_name AS Employee2,
    e1.manager_id
FROM Employees e1
JOIN Employees e2
ON e1.manager_id = e2.manager_id
WHERE e1.employee_id < e2.employee_id;
-- NATURAL JOIN
-- 89. Display products with their category names 
--using NATURAL JOIN
SELECT *
FROM Products
NATURAL JOIN Categories;