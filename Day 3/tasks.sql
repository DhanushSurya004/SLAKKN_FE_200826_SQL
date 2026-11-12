create database taskday3;
use taskday3;

create table employees(
employee_ID int primary key auto_increment,
name varchar(30) not null,
department varchar(30),
salary int,
city varchar(30),
joining_date date
);

create table students(
student_ID int primary key auto_increment,
name varchar(30) not null,
age int,
city varchar(30),
course varchar(30)
);

create table products(
product_ID int primary key auto_increment,
product_name varchar(40) not null,
category varchar(30),
price decimal(8,2),
stock int
);

insert into employees(name,department,salary,city,joining_date) values
("Dhanush","IT",45000,"Chennai","2025-06-01"),
("Dhinesh","IT",28000,"Tirupur","2025-07-15"),
("Arun","IT",52000,"Chennai","2024-02-11"),
("Sarjeet","HR",30000,"Coimbatore","2024-03-10"),
("Meena","HR",24000,"Madurai","2025-01-20"),
("Bala","Finance",45000,"Trichy","2024-09-20"),
("Kavin","Finance",60000,"Chennai","2023-05-18"),
("Kumar","Sales",35000,"Kanchipuram","2025-01-05"),
("Priya","Sales",22000,"Chennai","2025-03-12"),
("Surya","Support",26000,"Tirupur","2024-11-02");

insert into students(name,age,city,course) values
("Ravi",20,"Chennai","MCA"),
("Anitha",22,"Madurai","BCA"),
("Karthik",17,"Chennai","BSc"),
("Divya",24,"Coimbatore","MCA"),
("Suresh",19,"Madurai","BCom"),
("Lakshmi",26,"Chennai","MBA"),
("Naveen",25,"Chennai","MCA");

insert into products(product_name,category,price,stock) values
("Laptop","Electronics",55000,15),
("Smartphone","Electronics",20000,40),
("Headphones","Electronics",1500,100),
("Office Chair","Furniture",6500,25),
("Study Table","Furniture",4500,18),
("Notebook","Stationery",50,500),
("Pen Pack","Stationery",120,300);

select * from employees;
select * from students;
select * from products;

select * from employees where department = "IT" and salary > 30000;

select * from students where age between 18 and 25 and city in ("Chennai","Madurai");

select department, count(*) as total_employees from employees group by department;

select category, sum(stock) as total_stock, avg(price) as average_price from products group by category;

select department, avg(salary) as average_salary from employees where salary > 25000 group by department having avg(salary) > 40000;