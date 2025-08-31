select count(*) as total_employess from EMPLOYEES;
select count(*) as total_employees, manager_id from Employees group by(manager_id);
select distinct manager_id from employees;
select manager_id from EMPLOYEES group by(manager_id);
select sum(salary) as total_salary from EMPLOYEES;
select min(salary) as min_salary from EMPLOYEES;
select max(salary) as max_salary from EMPLOYEES;
select round(AVG(salary)) as Average from EMPLOYEES;
select * from employees where salary = (select max(salary) from employees);
select first_name || salary from EMPLOYEES;
select ALL salary from employees;
select salary from employees order by (salary) desc;
select first_name, hire_date from employees order by(first_name) asc;
select first_name from employees where first_name like 'A__n%';

select abs(90) from DUAL;
select ceil(90.3) from DUAL;
select trunc(955.2334, -2) from DUAL;


select * from EMPLOYEES where to_char(hire_date, 'day') like 'sat%';



