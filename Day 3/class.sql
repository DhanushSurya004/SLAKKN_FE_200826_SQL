create database dept_db;
use dept_db;
create table department(
department_id int primary key auto_increment,
department_name varchar(30),
department_category varchar(30),
department_count int,
status boolean default true
);

insert into department(department_name,department_category,department_count) values ("Computer Applications","Technology",20),("English","Literature",30),("Physics","Science",25);

select * from department;

select distinct * from department;

select * from department where department_name like "P______";
select * from department order by department_category desc;

select count(*) as "totalrows" from department;


