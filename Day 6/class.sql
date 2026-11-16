
create database hospital;
use hospital;

create table patients(
p_id int auto_increment,
p_name varchar(30),
dis_id int,
dob date,
gender varchar(20),
pat_status varchar(30),
primary key(p_id)
);

create table department(
dep_id int auto_increment,
dep_name varchar(50),
primary key(dep_id)
);

create table doctor(
doc_id int auto_increment,
doc_name varchar(30),
dep_id int,
primary key(doc_id)
);

create table nurses(
nurse_id int auto_increment,
nurse_name varchar(30),
dep_id int,
primary key(nurse_id)
);

create table payments(
pay_id int auto_increment,
payment_type varchar(30),
amount decimal(10,2),
payment_status varchar(30),
primary key(pay_id)
);

create table patient_management(
pm_id int auto_increment,
p_id int,
dis_id int,
doc_id int,
nurse_id int,
dep_id int,
pay_id int,
primary key(pm_id),

foreign key(p_id) references patients(p_id),
foreign key(doc_id) references doctor(doc_id),
foreign key(nurse_id) references nurses(nurse_id),
foreign key(dep_id) references department(dep_id),
foreign key(pay_id) references payments(pay_id)
);

insert into department(dep_name)
values
('cardiology'),
('neurology'),
('orthopedics');

insert into doctor(doc_name,dep_id)
values
('dr. arun',1),
('dr. kumar',2),
('dr. ravi',3);

insert into nurses(nurse_name,dep_id)
values
('priya',1),
('divya',2),
('anu',3);

insert into payments(payment_type,amount,payment_status)
values
('cash',5000,'paid'),
('upi',3000,'pending'),
('card',7000,'paid');

insert into patients
(p_name,dis_id,dob,gender,pat_status)
values
('surya',101,'2002-05-10','male','admitted'),
('arun',102,'2001-08-15','male','discharged'),
('priya',103,'2003-02-20','female','admitted');

insert into patient_management
(p_id,dis_id,doc_id,nurse_id,dep_id,pay_id)
values
(1,101,1,1,1,1),
(2,102,2,2,2,2),
(3,103,3,3,3,3);



select *
from patient_management as pm
inner join patients as p
on pm.p_id = p.p_id
inner join doctor as d
on pm.doc_id = d.doc_id
inner join nurses as n
on pm.nurse_id = n.nurse_id
inner join department as dep
on pm.dep_id = dep.dep_id
inner join payments as pay
on pm.pay_id = pay.pay_id;


