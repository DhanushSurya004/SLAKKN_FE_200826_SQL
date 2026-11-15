use taskday3;
select * from employees;

select department,avg(salary) as avg_salary, count(*) as employeecount from employees group by department having avg(salary) >= 30000;
select department,min(salary) as min_salary,count(*) as employeecount from employees group by department having min(salary) >= 30000;
select * from students where age between 25 and 30 order by age asc;

select department,avg(salary) as avg_salary from employees group by department order by avg(salary) desc;


