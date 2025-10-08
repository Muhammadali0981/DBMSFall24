create table employees(
    emp_id varchar(255) not null primary key,
    emp_name varchar(255),
    salary int,
    constraint salary_range check (salary > 20000),
    dept_id varchar(255)
);
Alter table employees rename column emp_name TO full_name;
Alter table employees drop constraint salary_range;
Insert into employees values ('k19', 'Ali', 50000, 'd12'); 

create table department{
    dep_id varchar(255) not null primary key,
    

};
