-- Level 9: IF clause and CASE
-- 99. Display product availability using IF:
-- ● Stock greater than 0 → Available
-- ● Stock equal to 0 → Out of Stock
select product_name,stock, 
IF(stock>0,'Available','Out of stock')
from products;
--using case
select product_name,stock,
case
    when stock>0 then 'Available'
    when stock = 0 then 'Out of stock'
end as availability
from Products;
-- 100. Display customer age groups using CASE:
-- ● Age below 25 → Young
-- ● Age between 25 and 40 → Adult
-- ● Age above 40 → Senior
select customer_name, Age,
      CASE 
        when age < 25 then "Young"
        when age>=25 and age<=40 then 'Adult'
        else 'Senior'
      End as CustomerAge
from Customers
        
-- 101. Display product price categories:
-- ● Price below 1,000 → Budget
-- ● Price between 1,000 and 10,000 → Medium
-- ● Price above 10,000 → Premium
Select Product_name, price, category_id,
case
when price<1000 then "Budget"
when price>=1000 and price<=10000 then "medium"
when price> 10000 then "Premium"
end as ProductPriceFOrCAtegories
from products

-- 102. Display order status based on total amount:
-- ● Above 10,000 → High Value
-- ● Otherwise → Normal
select order_id,Order_status,
case
    when total_amount > 10000 then "High value"
    else "Normal"
end as "ORDER STATUS BASED"
 from Orders