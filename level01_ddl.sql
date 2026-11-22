use OnlineShoppingManagementSystem;
create table Customers(customer_id int primary key,
customer_name varchar(50),
email varchar(50) UNIQUE,
phone varchar(50),
city varchar(50),
age int,
registration_date date);
create table Categories(
    category_id int primary key,
    category_name varchar(50) UNIQUE
);
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category_id INT,
    price DECIMAL(10,2),
    stock INT,
    discount DECIMAL(10,2),
    FOREIGN KEY (category_id)
    REFERENCES Categories(category_id)
);
create table Orders(
    order_id int primary key,
    customer_id int,
    order_date date,
    order_Status varchar(50),
    total_amount decimal(10,2),
    foreign key (customer_id) 
    references Customers(customer_id)
);
create table Order_Details(
    order_detail_id int primary key,
    order_id int,
    product_id int,
    quantity int,
    unit_price decimal(10,2),
    foreign key(order_id) 
    references Orders(order_id),
    foreign key(product_id)
    references Products(product_id)
);
create table Payments(
    payment_id int primary key,
    order_id int,
    payment_date date,
    payment_method varchar(50),
    payment_status varchar(50),
    amount decimal(10,2),
    foreign key(order_id)
    references Orders(order_id)
);
create table Employees(
    employee_id int primary key,
    employee_name varchar(50),
    manager_id int,
    salary decimal(10,2),
    department varchar(50),
    joining_date date
);
-- 3. NOT NULL on customer_name
ALTER table Customers
modify customer_name varchar(50) not null;
-- 4. Add a UNIQUE constraint to customer email
--5. Add a CHECK constraint to ensure customer 
-- age is greater than or equal to 18
Alter table Customers ADD constraint 
chk_customer_age check(age>=18);
--6. DEFAULT 'Pending' for order_status
Alter table Orders alter
column order_status SET DEFAULT 'Pending';
--7. Add a CHECK constraint to ensure 
-- product price is greater than zero.
Alter table Products ADD constraint 
chk_product_price check(price>0);
--8. add address column
alter table Customers add column
address varchar(100);
--9. modify size of the product_name column
alter table Products 
Modify product_name varchar(100);
--10. rename column phone to mobile_number
alter table Customers 
RENAME column phone to mobile_name;
--11. create a new table called suppliers
create table Suppliers(
    sup_id int,
    sup_name varchar(50)
);
--12. delete the suppliers table using drop
drop table Suppliers;
--13. practice truncate on a test table
create table students(
    id int,
    name_stu varchar(40)
);
truncate table students;