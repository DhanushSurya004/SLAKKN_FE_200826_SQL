
create database company_db;
use company_db;


create table employees (
    emp_id int primary key,
    emp_name varchar(50),
    age int,
    gender varchar(10),
    department varchar(30),
    salary decimal(10,2),
    city varchar(30),
    joining_date date
);

alter table employees add email varchar(100);
alter table employees add phone_number varchar(20);
alter table employees modify emp_name varchar(100);
rename table employees to staff;
rename table staff to employees;


insert into employees (emp_id, emp_name, age, gender, department, salary, city, joining_date) values
(1, 'Arun', 24, 'Male', 'IT', 45000, 'Chennai', '2023-01-15'),
(2, 'Bala', 26, 'Male', 'HR', 35000, 'Bangalore', '2022-05-10'),
(3, 'Divya', 23, 'Female', 'IT', 50000, 'Chennai', '2024-02-20'),
(4, 'Karthik', 29, 'Male', 'Sales', 30000, 'Hyderabad', '2021-08-12'),
(5, 'Priya', 25, 'Female', 'HR', 42000, 'Chennai', '2023-06-18'),
(6, 'Rahul', 28, 'Male', 'Finance', 55000, 'Mumbai', '2020-11-25'),
(7, 'Sneha', 22, 'Female', 'IT', 28000, 'Bangalore', '2025-01-05'),
(8, 'Vijay', 31, 'Male', 'Sales', 60000, 'Chennai', '2019-03-14'),
(9, 'Nithya', 27, 'Female', 'Finance', 48000, 'Hyderabad', '2022-09-30'),
(10, 'Manoj', 24, 'Male', 'IT', 32000, 'Mumbai', '2024-07-22');


insert into employees (emp_id, emp_name, age, gender, department, salary, city, joining_date)
values (14, 'Kiran', 24, 'Male', 'Support', 29000, 'Chennai', '2025-04-10');


insert into employees (emp_id, emp_name, age, gender, department, salary, city, joining_date) values
(11, 'Anitha', 26, 'Female', 'HR', 28000, 'Bangalore', '2024-05-15'),
(12, 'Suresh', 30, 'Male', 'Support', 39000, 'Hyderabad', '2022-12-01');


update employees set salary = 48000 where emp_name = 'Arun';
update employees set department = 'IT' where emp_name = 'Bala';
update employees set salary = salary + 5000 where department = 'IT';
update employees set city = 'Chennai' where department = 'Sales';
update employees set email = 'priya@example.com' where emp_name = 'Priya';
delete from employees where emp_id = 14;
delete from employees where salary < 30000;


select * from employees;
select emp_name, salary from employees;
select emp_name, department, city from employees;
select distinct department from employees;
select * from employees limit 5;
select emp_name as employee_name from employees;


select * from employees where salary > 40000;
select * from employees where age < 25;
select * from employees where department = 'IT';
select * from employees where salary between 30000 and 50000;
select * from employees where department = 'IT' or department = 'HR';
select * from employees where salary > 30000 and age < 28;
select * from employees where department <> 'IT';
select * from employees where emp_name like 'A%';
select * from employees where emp_name like '%a';
select * from employees where joining_date > '2023-01-01';


select count(*) as total_employees from employees;
select sum(salary) as total_salary from employees;
select avg(salary) as average_salary from employees;
select max(salary) as highest_salary from employees;
select min(salary) as lowest_salary from employees;
select count(*) as chennai_employee_count from employees where city = 'Chennai';


select department, count(*) as employee_count from employees group by department;
select department, avg(salary) as average_salary from employees group by department;
select department, sum(salary) as total_salary from employees group by department;
select department, max(salary) as highest_salary from employees group by department;
select city, count(*) as employee_count from employees group by city;


select department, count(*) as employee_count from employees group by department having count(*) > 2;
select department, avg(salary) as average_salary from employees group by department having avg(salary) > 40000;
select department, sum(salary) as total_salary from employees group by department having sum(salary) > 80000;


select * from employees order by salary asc;
select * from employees order by salary desc;
select * from employees order by emp_name asc;
select * from employees order by department asc, salary desc;


select * from employees where salary > 30000 order by salary desc;

select department, count(*) as employee_count from employees group by department having count(*) > 2;

select department, avg(salary) as average_salary from employees where salary > 30000 group by department having avg(salary) > 40000;

select city, sum(salary) as total_salary from employees group by city having sum(salary) > 80000 order by total_salary desc;

select department, count(*) as employee_count, avg(salary) as average_salary, sum(salary) as total_salary from employees where age > 23 group by department having avg(salary) > 35000 order by average_salary desc;
