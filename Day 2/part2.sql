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