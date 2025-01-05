-- creating E-commerce database____________
/*E-commerce Database.....
E-commerce (product,categories,customers,order,payment)
Products(Product_ID, Product_Name, Description, Price, StockQuantity, Category_ID)
categories(categories_id,categories_name)
Customers (Customer_ID, FirstName, LastName, Email, Phone, Address)
Orders( Order_ID, Customer_ID, OrderDate, TotalAmount, PaymentStatus)
Payments (Payment_ID, Order_ID, Payment_Date, Amount, PaymentMethod)*/
 create database E_commerce;
 use E_commerce;
 drop database E_commerce;
 create table Products(Product_ID int primary key not null, Product_Name varchar(50), Description varchar(50), Price  int, StockQuantity int, Category_ID int );
 select * from products;
 insert into products
 values(1,'buicutes','food',10,100,20),
 (2,'chips','food',10,100,30),
 (3,'sankcs','food',10,100,20),
 (4,'sweets','food',10,100,20),
 (5,'oats','food',10,100,20),
 (6,'maggie','food',10,100,20),
 (7,'buicutes','food',10,100,20),
 (8,'coldrink','drink',10,100,20),
 (9,'fruites','food',10,100,20),
 (10,'vegetbles','food',10,100,20);
-- create table categories-----
create table Categories( Category_ID int primary key not null, Category_Name varchar(50));
select *from categories;
insert into categories values
(1,'food'),
(2,'food'),
(3,'vegetable'),
(4,'frueits'),
(5,'food'),
(6,'food'),
(7,'food'),
(8,'coldrinks'),
(9,'juices'),
(10,'snacks');
-- create table customer--------
create table Customers (Customer_ID int primary key not null, FirstName varchar(50), LastName varchar(50),  Phone_number varchar(30), Address varchar(50));
select  *from customers; 
insert into customers 
values 
(1,'anjali','bilade','234456','airoli'),
(2,'mansi','patil','234457','airoli'),
(3,'jayshri','mali','2344578','panvel'),
(4,'yash','sharma','236789','airoli'),
(5,'aakansha','mavle','23456789','badlapur'),
(6,'aniket','patil','234123','kalyan'),
(7,'priyanka','pandey','234679','mumbai'),
(8,'rahul','bolade','234789','airoli'),
(9,'pranjali','shelkar','234789','amalner'),
(10,'sayali','mali','234689','thane');

create table  Orders( Order_ID int primary key not null, Customer_ID  int , OrderDate DATE , TotalAmount int  , PaymentStatus varchar(50));
select * from orders;
insert into orders
values  (1,011,'2025/3/4',50000,'paid'),
		(2,012,'2025/3/4',70000,'unpaid'),
        (3,013,'2025/3/4',50000,'paid'),
        (4,041,'2025/3/4',120000,'unpaid'),
        (5,022,'2025/3/4',150000,'unpaid'),
        (6,011,'2025/3/4',50000,'paid'),
        (7,021,'2025/3/4',600000,'unpaid'),
        (8,061,'2025/3/4',150000,'paid'),
        (9,055,'2025/3/4',240000,'paid'),
        (10,017,'2025/3/4',950000,'unpaid');
        
        create table Payments (Payment_ID int primary key not null, Order_ID int, Payment_Date DATE , Amount int , PaymentMethod varchar(50));
        select* from payments;
        insert into payments
        values  (01,110,'2025/7/1',50000,'online'),
				(03,140,'2025/7/1',60000,'cash'),
                (02,190,'2025/7/1',120000,'online'),
                (04,180,'2025/7/1',90000,'cash'),
                (05,170,'2025/7/1',80000,'cash'),
                (06,160,'2025/7/1',560000,'cash'),
                (07,150,'2025/7/1',150000,'cash'),
                (08,140,'2025/7/1',50000,'online'),
                (09,130,'2025/7/1',50000,'online'),
                (010,120,'2025/7/1',40000,'cash');
                drop table payments;