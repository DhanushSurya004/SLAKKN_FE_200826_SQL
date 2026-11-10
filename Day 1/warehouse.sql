create database warehouse;

create table student_management(
student_id int auto_increment primary key,
student_name varchar(100) not null,
age int check(age >= 18),
email varchar(100) unique,
city varchar(50) default 'Chennai',
admission_date date

);

create table employee_management(
emp_id int auto_increment primary key,
emp_name varchar(100) not null,
email varchar(100) unique,
salary decimal(10,2) check(salary>10000),
department varchar(50) default 'IT',
joining_date date not null,
status varchar(20) default 'Active',
created_at timestamp default current_timestamp
);

create table e_commerce_products(
product_id int auto_increment primary key,
product_name varchar(150) not null,
product_code varchar(30) unique,
category varchar(50) not null,
price decimal(10,2) check(price>0),
stock int default 0,
brand varchar(50) default 'Generic',
manufacture_date date,
expiry_date date,
is_available boolean default true,
created_at timestamp default current_timestamp
);