--14.15 customers
INSERT INTO Customers
(customer_id, customer_name, email, mobile_name, city, age, registration_date)
VALUES
(1,  'Ravi Kumar',      'ravi.kumar@mail.com',      '9876543210', 'Hyderabad',  28, '2024-01-10'),
(2,  'Sravanthi B',     'sravanthi.b@mail.com',     '9876543211', 'Hyderabad',  24, '2024-01-15'),
(3,  'Anil Reddy',      'anil.reddy@mail.com',      '9876543212', 'Warangal',   35, '2024-02-03'),
(4,  'Priya Sharma',    'priya.sharma@mail.com',    '9876543213', 'Bengaluru',  27, '2024-02-18'),
(5,  'Kiran Rao',       'kiran.rao@mail.com',       '9876543214', 'Chennai',    31, '2024-03-05'),
(6,  'Meena Iyer',      'meena.iyer@mail.com',      '9876543215', 'Chennai',    42, '2024-03-21'),
(7,  'Suresh Naidu',    'suresh.naidu@mail.com',    '9876543216', 'Vijayawada', 39, '2024-04-07'),
(8,  'Lakshmi Devi',    'lakshmi.devi@mail.com',    '9876543217', 'Guntur',     45, '2024-04-25'),
(9,  'Arjun Verma',     'arjun.verma@mail.com',     '9876543218', 'Delhi',      22, '2024-05-12'),
(10, 'Neha Gupta',      'neha.gupta@mail.com',      '9876543219', 'Mumbai',     29, '2024-05-30'),
(11, 'Vikram Singh',    'vikram.singh@mail.com',    '9876543220', 'Pune',       33, '2024-06-14'),
(12, 'Divya Menon',     'divya.menon@mail.com',     '9876543221', 'Kochi',      26, '2024-07-02'),
(13, 'Rahul Das',       'rahul.das@mail.com',       '9876543222', 'Kolkata',    37, '2024-07-19'),
(14, 'Anjali Patel',    'anjali.patel@mail.com',    '9876543223', 'Ahmedabad',  30, '2024-08-08'),
(15, 'Mohammed Imran',  'imran.m@mail.com',         '9876543224', 'Hyderabad',  34, '2024-08-27');
select*from Customers;
--15.5 product categories
INSERT INTO Categories (category_id, category_name)
VALUES
(1, 'Electronics'),
(2, 'Clothing'),
(3, 'Home & Kitchen'),
(4, 'Books'),
(5, 'Sports & Fitness'),
(6, 'Beauty & Personal Care');
select*from categories;
--16. 20 products
INSERT INTO Products (product_id, product_name, category_id, price, stock, discount)
VALUES
(1,  'Smartphone X 128GB',        1, 15999.00, 50,  10.00),
(2,  'Bluetooth Headphones',      1,  2499.00, 120,  5.00),
(3,  'Laptop Pro 14',             1, 54999.00, 25,   8.00),
(4,  'Smart Watch',               1,  3999.00, 80,  12.00),
(5,  'Men''s Cotton T-Shirt',     2,   499.00, 200, 15.00),
(6,  'Women''s Kurti',            2,   799.00, 150, 10.00),
(7,  'Denim Jeans',               2,  1499.00, 100, 20.00),
(8,  'Running Shoes',             5,  2999.00, 90,  10.00),
(9,  'Mixer Grinder',             3,  3499.00, 60,   5.00),
(10, 'Non-stick Cookware Set',    3,  2199.00, 70,  10.00),
(11, 'Electric Kettle',           3,   899.00, 110,  0.00),
(12, 'Bed Sheet Set',             3,  1299.00, 85,   5.00),
(13, 'SQL Basics Book',           4,   399.00, 300,  0.00),
(14, 'Python Programming Book',   4,   599.00, 250,  5.00),
(15, 'Telugu Novel Collection',   4,   349.00, 180,  0.00),
(16, 'Yoga Mat',                  5,   699.00, 140, 10.00),
(17, 'Dumbbell Set 10kg',         5,  1999.00, 65,   5.00),
(18, 'Badminton Racket',          5,  1199.00, 95,   8.00),
(19, 'Face Wash',                 6,   249.00, 300,  0.00),
(20, 'Moisturizing Cream',        6,   449.00, 220,  5.00);
select*from Products;
--17. 15 orders
INSERT INTO Orders (order_id, customer_id, order_date, order_status, total_amount)
VALUES
(1,  1,  '2024-09-01', 'Delivered', 15999.00),
(2,  2,  '2024-09-03', 'Delivered',  2997.00),
(3,  3,  '2024-09-05', 'Pending',    2996.00),
(4,  4,  '2024-09-08', 'Delivered',  3499.00),
(5,  5,  '2024-09-10', 'Shipped',   54999.00),
(6,  6,  '2024-09-12', 'Pending',    1397.00),
(7,  7,  '2024-09-15', 'Delivered',  3698.00),
(8,  8,  '2024-09-18', 'Cancelled',  2199.00),
(9,  9,  '2024-09-20', 'Delivered',  3999.00),
(10, 10, '2024-09-22', 'Shipped',    2047.00),
(11, 1,  '2024-09-25', 'Pending',    3397.00),
(12, 2,  '2024-09-28', 'Delivered',  2198.00),
(13, 3,  '2024-10-02', 'Delivered',  2398.00),
(14, 5,  '2024-10-05', 'Pending',    1446.00),
(15, 7,  '2024-10-08', 'Shipped',    4998.00);
select*from Orders;
--18.order details for all orders
INSERT INTO Order_Details (order_detail_id, order_id, product_id, quantity, unit_price)
VALUES
(1,  1,  1,  1, 15999.00),
(2,  2,  2,  1,  2499.00),
(3,  2,  19, 2,   249.00),
(4,  3,  5,  3,   499.00),
(5,  3,  7,  1,  1499.00),
(6,  4,  9,  1,  3499.00),
(7,  5,  3,  1, 54999.00),
(8,  6,  13, 2,   399.00),
(9,  6,  14, 1,   599.00),
(10, 7,  8,  1,  2999.00),
(11, 7,  16, 1,   699.00),
(12, 8,  10, 1,  2199.00),
(13, 9,  4,  1,  3999.00),
(14, 10, 6,  2,   799.00),
(15, 10, 20, 1,   449.00),
(16, 11, 17, 1,  1999.00),
(17, 11, 16, 2,   699.00),
(18, 12, 11, 1,   899.00),
(19, 12, 12, 1,  1299.00),
(20, 13, 18, 2,  1199.00),
(21, 14, 15, 3,   349.00),
(22, 14, 13, 1,   399.00),
(23, 15, 2,  2,  2499.00);
select*from Order_Details;
--19. insert payment information
INSERT INTO Payments (payment_id, order_id, payment_date, payment_method, payment_status, amount)
VALUES
(1,  1,  '2024-09-01', 'UPI',              'Paid',     15999.00),
(2,  2,  '2024-09-03', 'Credit Card',      'Paid',      2997.00),
(3,  3,  '2024-09-05', 'Cash on Delivery', 'Pending',   2996.00),
(4,  4,  '2024-09-08', 'Debit Card',       'Paid',      3499.00),
(5,  5,  '2024-09-10', 'Net Banking',      'Paid',     54999.00),
(6,  6,  '2024-09-12', 'Cash on Delivery', 'Pending',   1397.00),
(7,  7,  '2024-09-15', 'UPI',              'Paid',      3698.00),
(8,  8,  '2024-09-18', 'Credit Card',      'Refunded',  2199.00),
(9,  9,  '2024-09-20', 'UPI',              'Paid',      3999.00),
(10, 10, '2024-09-22', 'Debit Card',       'Paid',      2047.00),
(11, 11, '2024-09-25', 'Cash on Delivery', 'Pending',   3397.00),
(12, 12, '2024-09-28', 'UPI',              'Paid',      2198.00),
(13, 13, '2024-10-02', 'Credit Card',      'Paid',      2398.00),
(14, 14, '2024-10-05', 'Cash on Delivery', 'Pending',   1446.00),
(15, 15, '2024-10-08', 'Net Banking',      'Paid',      4998.00);
select*from Payments;
--20. update the price of a particular product

UPDATE Products SET price = 16999.00 WHERE product_id = 1;
SELECT product_id, product_name, price FROM Products
WHERE product_id = 1;

--21.Increase IT salaries by 10%
INSERT INTO Employees (employee_id, employee_name, manager_id, salary, department, joining_date)
VALUES
(1, 'Ramesh Babu',  NULL, 90000.00, 'IT',      '2020-01-15'),
(2, 'Sneha Reddy',  1,    60000.00, 'IT',      '2021-03-10'),
(3, 'Karthik N',    1,    55000.00, 'IT',      '2022-06-01'),
(4, 'Pooja Singh',  1,    50000.00, 'HR',      '2021-09-20'),
(5, 'Anand Kumar',  1,    45000.00, 'Sales',   '2022-11-05'),
(6, 'Deepa Nair',   1,    48000.00, 'Finance', '2023-02-14'),
(7, 'Imran Khan',   2,    52000.00, 'IT',      '2023-07-01');

UPDATE Employees SET salary = salary * 1.10 WHERE department = 'IT';
SELECT * FROM Employees;   -- IT salaries are now 99000, 66000, 60500, 57200
--22. update the order status from pending  to delivered 
-- for a particular order
update Orders set order_status = 'Delivered'
where order_id = 14 and order_status = 'Pending'; 

-- 23. Delete a customer who has no orders
-- Customers with no orders (expect 11 to 15)
SELECT c.customer_id, c.customer_name
FROM Customers c
WHERE NOT EXISTS (SELECT 1 FROM Orders o 
WHERE o.customer_id = c.customer_id);

-- Delete one of them
DELETE FROM Customers
WHERE customer_id = 15
  AND NOT EXISTS (SELECT 1 
  FROM Orders WHERE customer_id = 15);

-- 24. reduce the stock quantity of a particular product
UPDATE Products SET stock = stock - 5 WHERE product_id = 2 AND stock >= 5;
SELECT product_id, product_name, stock FROM Products WHERE product_id = 2;   -- 115