create database college_db;
use college_db;
-- TASK 1 
create table students(
student_ID int auto_increment primary key,
name varchar(30),
age int,
email varchar(30) unique,
course varchar(30),
fees int,
admission_date date

);
rename table students to student_details;

alter table student_details add mobile_number varchar(20) after email;

-- TASK 2
create table employees(
employee_ID int auto_increment primary key,
name varchar(30),
salary int,
department varchar(30) default 'Tech',
joining_date date,
city varchar(30)
);

alter table employees rename column name to employee_name;

alter table employees modify salary decimal(12,2);

alter table employees add email varchar(30) unique after employee_name;


-- TASK 3

create table products(
product_ID int auto_increment primary key unique,
product_name varchar(30) not null,
price int ,
category varchar(30) default 'Cosmetics',
stock varchar(30) check (stock = true),
manufacturing_date date
);

rename table products to product_details;

alter table product_details rename column price to product_price;

alter table product_details drop column manufacturing_date;

-- TASK 4

create table patients(
patient_ID int primary key auto_increment,
patient_name varchar(30) not null,
age int,
gender varchar(20),
disease varchar(30),
admission_date date,
doctor_name varchar(30)
);

alter table patients rename column disease to diagnosis;
alter table patients add contact_number int after gender;
alter table patients modify patient_name varchar(150);
rename table patients to patient_records;

-- TASK 5

create table courses(
course_ID int primary key auto_increment,
course_name varchar(30) not null,
duration varchar(20) default 3,
fees int check (fees > 0),
trainer_name varchar(30),
start_date date
);

alter table courses add course_status boolean default 1;
alter table courses rename column trainer_name to instructor_name;
alter table courses modify duration int;
alter table courses drop column start_date;






