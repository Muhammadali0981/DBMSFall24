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

-- Q6
create table customer (
    customer_id int primary key,
    customer_name varchar(100)
);

create table orders (
    order_id int primary key,
    customer_id int,
    order_date date,
    foreign key (customer_id) references customer(customer_id)
);

insert into customer values (1, 'Ahmed');
insert into customer values (2, 'Ayesha');
insert into customer values (3, 'Fatima');

insert into orders values (101, 1, to_date('2025-09-01', 'YYYY-MM-DD'));
insert into orders values (102, 2, to_date('2025-09-02', 'YYYY-MM-DD'));

select c.customer_name, o.order_id, o.order_date
from customer c
left join orders o on c.customer_id = o.customer_id;

-- Q7
select d.dpt_name, e.emp_name
from department d
left join employee e on d.dpt_id = e.dpt_id;

-- Q8
create table teacher (
    teacher_id int primary key,
    teacher_name varchar(100)
);

create table subject (
    subject_id int primary key,
    subject_name varchar(100)
);

insert into teacher values (1, 'Dr. Khan');
insert into teacher values (2, 'Prof. Malik');

insert into subject values (1, 'Math');
insert into subject values (2, 'Science');

select t.teacher_name, s.subject_name
from teacher t
cross join subject s;

-- Q9
select d.dpt_name, count(e.emp_id) as total_employees
from department d
left join employee e ON d.dpt_id = e.dpt_id
group by d.dpt_name;

-- Q10
alter table course add (teacher_id int, foreign key (teacher_id) references teacher(teacher_id));

insert into student values (1, 'Sara');
insert into student values (2, 'Zain');

insert into teacher values (1, 'Dr. Tariq');
insert into teacher values (2, 'Prof. Qureshi');

insert into course values (1, 'Math', 1);
insert into course values (2, 'Science', 2);

update student set crs_id = 1 where student_id = 1;
update student set crs_id = 2 where student_id = 2;

select s.student_name, c.crs_name, t.teacher_name
from student s
inner join course c on s.crs_id = c.crs_id
inner join teacher t on c.teacher_id = t.teacher_id;









