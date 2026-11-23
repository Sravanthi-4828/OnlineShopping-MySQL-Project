-- Level 8: Subqueries
-- 90.Find products whose price is greater than 
--the average product price.
select product_name,price from Products 
where price >(select avg(price) from Products);
-- 91.Find the second-highest product price using 
--a subquery.
select max(price) as 'highestPrice' from Products
where price < (select max(price) from Products);
-- 92.Find customers who have placed at least 
--one order.
select * from customers c
where exists(
    select 1 
    from Orders o where
    c.customer_id = o.customer_id
    )
-- 93.Find customers who have never placed an 
--order using NOT IN or NOT EXISTS.
select * from customers c
where not exists(
    select* from orders o
    where c.customer_id = o.customer_id
)
--also using not in
select*from customers c
where customer_id not in(
    select customer_id
    from Orders
)
-- 94.Find products that cost more than the most 
--expensive product in category 1.
select * from products
where price>(select max(price) from Products 
where category_id = 1);
-- 95.Find employees whose salary is greater than 
--the average salary.
select*from Employees 
where salary>(select avg(salary) from Employees);
-- 96.Find customers who placed orders with a 
--total amount greater than the average order amount.
select Distinct c.*
from customers c
join orders o
on c.customer_id = o.customer_id
where o.total_amount >(
    select avg(total_amount)
    from orders
)
----also
select*from Orders
where total_amount >
 (select avg(total_amount) from orders);

-- 97.Find the customer who placed the 
--highest-value order.
select*from customers c
where (select customer_id
       from orders
       where total_amount = (
        select max(total_amount)
        from orders
       )
)
---
select*from customers c
where (select max(total_amount)
 from orders o
 where c.customer_id = o.customer_id
)
-- 98.Find categories whose average product price is greater than the overall average
-- product price.
--this is wong
select*from categories c
join products p
on c.category_id = p.category_id
where price = (
    select avg(p.price)
    from products
)
--- correct one's down
select c.category_id,
c.category_name,
avg(p.price) as avg_category_price
from categories c 
join products p
on c.category_id = p.category_id
group by c.category_id,c.category_name
having avg(p.price)>(
    select avg(price)
    from products

)