create user ali identified by ali;

create table employees(
    emp_id varchar(255) not null primary key,
    emp_name varchar(255),
    salary int,
    constraint salary_range check (salary > 20000),
    dept_id varchar(255)
);

alter table employees 