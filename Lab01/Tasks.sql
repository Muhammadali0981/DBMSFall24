-- In Lab
select * from employees where department_id <> 100;
select * from employees where salary in (10000, 12000, 15000);
select first_name, salary from employees where salary <= 25000;
select * from employees where department_id <> 60;
select * from employees where department_id between 60 and 80;
select * from departments;
select * from employees where first_name = 'steven';
select * from employees where salary between 15000 and 25000 and department_id = 80;
select * from employees where salary < any (select salary from employees where department_id = 100);
select * from employees e where department_id in (select department_id from employees group by department_id having count(*) = 1 );

-- Post Lab
select * from employees where hire_date between date '2005-01-01' and date '2006-12-31';
select * from employees where manager_id is null;
select * from employees where salary < all (select salary from employees where salary > 8000);
select * from employees where salary > any (select salary from employees where department_id = 90);
select * from departments d where exists (select 1 from employees e where e.department_id = d.department_id);
select * from departments d where not exists (select 1 from employees e where e.department_id = d.department_id);
select * from employees where salary not between 5000 and 15000;
select * from employees where department_id in (10, 20, 30) and department_id <> 40;
select * from employees where salary > (select min(salary) from employees where department_id = 50);
select * from employees where salary < (select max(salary) from employees where department_id = 90);
