-- TASK 9

create database library_db;
use library_db;

create table books(
book_ID int primary key auto_increment,
book_name varchar(50) not null,
author varchar(30) not null,
price decimal(8,2),
published_date date
);

insert into books(book_name,author,price,published_date) values
("Wings of Fire","A.P.J. Abdul Kalam",350.00,"1999-01-01"),
("The Alchemist","Paulo Coelho",299.00,"1988-04-15"),
("Ponniyin Selvan","Kalki",550.00,"1955-10-29"),
("Clean Code","Robert C. Martin",899.00,"2008-08-01"),
("Head First Java","Kathy Sierra",750.00,"2005-02-09");

select * from books;

truncate table books;

select * from books;



-- TASK 10

create database company_db;
use company_db;

create table departments(
department_ID int primary key auto_increment,
department_name varchar(30) not null,
location varchar(30),
manager varchar(30)
);

create table employees(
employee_ID int primary key auto_increment,
name varchar(30) not null,
department_ID int,
salary int,
city varchar(30),
joining_date date
);

insert into departments(department_name,location,manager) values
("IT","Chennai","Arun"),
("HR","Coimbatore","Sarjeet"),
("Finance","Trichy","Bala"),
("Sales","Chennai","Kumar"),
("Support","Tirupur","Surya");

insert into employees(name,department_ID,salary,city,joining_date) values
("Dhanush",1,30000,"Chennai","2025-06-01"),
("Dhinesh",1,25000,"Tirupur","2025-07-15"),
("Sarjeet",2,65000,"Chennai","2024-03-10"),
("Bala",3,45000,"Trichy","2024-09-20"),
("Kumar",4,35000,"Kanchipuram","2025-01-05");

select * from departments;
select * from employees;

drop table departments;

show tables;

drop database company_db;

show databases;