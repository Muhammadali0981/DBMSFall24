create table employees(
    id int primary key,
    name varchar(20),
    email varchar(255),
    age int,
    salary int,
    city varchar(255)
);

create table department(
    id int primary key,
    name varchar(255)
);

insert into department values(1,'Fianance');
insert into department values(2,'HR');
insert into department values(3,'Accounts');
insert into department values(4,'Production');
insert into department values(5,'Managemnet');

select * from department;
select * from employees;

alter table employees add(d_id int,constraint fke Foreign Key(d_id) references department(id));

insert into employees values(7,'Ali','Ali@gmail.com','20','500000','Multan',3);
insert into employees values(9,'Umar','Umar@gmail.com','21','50000','karachi',2);
insert into employees values(11,'Talha','Talha@gmail.com','19','200000','Shahdadpur',3);
insert into employees values(13,'Abdul Rahman','AR@gmail.com','20','100000','Karachi',1);
insert into employees values(23,'Fasih','fhk@gmail.com','20','1000','Tonk',1);
insert into employees values(3,'Owais','owai@gmail.com','20','3000','Karachi',2);

select * from department;
select * from employees;

alter table employees add manager varchar(255);

update EMPLOYEES set manager = 'Ahmed' where id = 9;
update EMPLOYEES set manager = 'Anas' where id = 11;
update EMPLOYEES set manager = 'Saad' where id = 13;
update EMPLOYEES set manager = 'Usman' where id = 13;
update EMPLOYEES set manager = 'Taha' where id = 3;

alter table employees add project int;

update EMPLOYEES set project = 1 where id = 9;
update EMPLOYEES set project = 1 where id = 11;
update EMPLOYEES set project = 0 where id = 13;
update EMPLOYEES set project = 1 where id = 13;
update EMPLOYEES set project = 0 where id = 3;
update EMPLOYEES set project = 0 where id = 23;

CREATE TABLE student(
    student_id INT PRIMARY KEY,             
    name VARCHAR(100),                      
    email VARCHAR(100),                    
    course VARCHAR(255)                     
);

insert into student  values (1, 'Ahmed Khan', 'ahmed.khan@email.com', 'Math 101');
insert into student values (2, 'Fatima Ali', 'fatima.ali@email.com', 'Biology 101');
insert into student values (3, 'Omar Siddiqui', 'omar.siddiqui@email.com', 'History 101');

-- In lab
select e.id, e.name, e.salary, d.name from employees e cross join department d;
select e.id, e.name, e.salary, d.name from department d left join employees e  on e.d_id = d.id;
select name, manager from EMPLOYEES;
select * from employees where project = 0;
select name, course from student;










