-- Level 10: Window functions
-- Topics: ROW_NUMBER, RANK, DENSE_RANK.
-- 103. Assign a row number to every product based on price.
select Product_id,Product_name,price,
ROW_NUMBER() over(
 order by Price Asc
) as "ROW NUMBER" from Products;

-- 104. Rank products based on their prices using RANK().
select Product_id,product_name,price,
RANK() OVER(order by price desc) as "RANKORDER" from Products;

-- 105. Rank products based on their prices using DENSE_RANK().
select Product_id,product_name,price,
DENSE_RANK() over(order by price ASC) as "DENSERAANK" from products;

-- 106. Find the top 3 most expensive products.
with ProductRanks AS (
    select product_id,product_name,price,
    DENSE_RANK() over(order by price DESC) as price_rank
    from products
)
select * from ProductRanks 
where price_rank<=3;

-- 107. Assign row numbers to orders for each customer.
select customer_id, order_id,
ROW_NUMBER() OVER(partition by customer_id order by order_id) as "Row_number" from Orders;

SELECT
    customer_id,
    order_id,
    ROW_NUMBER() OVER(
        PARTITION BY customer_id 
        --order_id
        ORDER BY order_date
    ) AS "Row_number"
FROM Orders;

-- 108. Rank employees based on salary within each department.
select employee_id,employee_name,department,salary,
Rank() over(partition by department order by Salary Desc) as "SalRank"
from employees;

-- 109. Find the highest-paid employee in each department.
with empRank as(
    select employee_id,
    employee_name,
    department,salary,
    Rank() over(
        partition by department
        order by salary desc
    ) as "salRank"
from employees
)
select*from empRank
where salRank = 1;

-- 110. Rank customers based on their total spending.
select customer_id,sum(total_amount) as "totalAmount",
Rank() over(order by sum(total_amount) Desc) as "totspendingRank"
from Orders group by customer_id;