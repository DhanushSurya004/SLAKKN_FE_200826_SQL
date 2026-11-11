use college_db;
-- TASK 6
create table customers(
customer_ID int primary key auto_increment,
name varchar(30) not null,
email varchar(30) unique,
city varchar(30) default 'Chennai',
age int,
registration_date date default (current_date)
);

insert into customers (name,email,age) values ("Dhanush","ds1@gamil.com",23),("Dhanush","ds2@gamil.com",23),("Dhanush","ds3@gamil.com",23),("Dhanush","ds4@gamil.com",23),("Dhanush","ds5@gamil.com",23),("Dhanush","ds6@gamil.com",23),("Dhanush","ds7@gamil.com",23),("Dhanush","ds8@gamil.com",23),("Dhanush","ds9@gamil.com",23),("Dhanush","ds10@gamil.com",23);
insert into customers (name,email,age) values ("Dhanush","ds11@gamil.com",23),("Dhanush","ds12@gamil.com",23);
insert into customers (name,age) values ("Dhanush",23);


-- TASK 7
create table staff (
staff_ID int primary key auto_increment,
name varchar(30) not null,
department varchar(30),
salary int,
city varchar(30)
);

insert into staff(name,department,salary,city) values ("DS","IT",25000,"Chennai"),("Sarjeet","HR",65000,"Chennai"),("Dhinesh","IT",25000,"Tirupur"),("Arun","IT",45000,"Coimbatore"),("Bala","HR",65000,"Trichy"),("Dhanush","IT",30000,"Chennai"),("Surya","IT",35000,"Chennai"),("Kumar","HR",45000,"Kanchipuram");
update staff set salary = 45000 where staff_ID = 3;
update staff set department = "IT" where staff_ID = 5;
select * from staff where department = "HR";
update staff set salary = salary + 5000 where department = "HR";
SET SQL_SAFE_UPDATES = 1;
update staff set city = "Chennai" where salary > 30000;

-- TASK 8

create table orders(
order_ID int primary key auto_increment,
customer_name varchar(30) not null,
product_name varchar(30) not null,
quantity int,
price decimal(10,2),
order_date date default (current_date)
);

insert into orders(customer_name,product_name,quantity,price,order_date) values
("Dhanush","Keyboard",1,1500.00,"2026-01-05"),
("Sarjeet","Mouse",3,450.00,"2026-01-12"),
("Dhinesh","Monitor",2,8500.00,"2026-02-03"),
("Arun","Headphones",5,2200.00,"2026-02-18"),
("Bala","USB Cable",4,150.00,"2026-03-07"),
("Surya","Laptop Stand",1,900.00,"2026-03-21"),
("Kumar","Webcam",6,3200.00,"2026-04-02"),
("Dhanush","Pen Drive",10,400.00,"2026-04-15"),
("Sarjeet","Router",2,2800.00,"2026-05-09"),
("Arun","Power Bank",3,1200.00,"2026-05-25");



delete from orders where order_ID = 4;

delete from orders where quantity < 2;

delete from orders where price < 500 and quantity < 5;

select * from orders;