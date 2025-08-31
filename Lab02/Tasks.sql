-- In Lab
select sum(salary) as total_salary from employees;
select avg(salary) as avg_salary from employees;
select count(*) as num_employees, manager_id from employees group by manager_id;
select * from employees where salary = (select min(salary) from employees);
select sysdate from dual;
select to_char(sysdate, 'day, monthyyyy') as todays_date from dual;
select * from employees where to_char(hire_date, 'day') like 'wed%';
select months_between('01-JAN-2025', '01-OCT-2024') as months from dual;
select e.*,round(months_between(sysdate,hire_date)) as months_worked from EMPLOYEES e;
select substr(first_name, 0, 3) from employees;

-- Post Lab
select lpad(first_name, 15, '*') from employees;
select ltrim(' Oracle', ' ') from dual;
select initcap(first_name) from employees;
select next_day('20-AUG-2022','Monday') from dual;
select to_char(to_date('25-DEC-2023', 'DD-MM-YYYY'), 'MM-YYYY') from dual;
select distinct salary from employees order by(salary) asc; 
select trunc(salary, -2) from employees;
select department_id from employees group by department_id having count(*) = (select max(cnt) from (select count(*) as cnt from employees group by department_id));
select department_id, sum(salary) as total_salary from employees group by department_id order by total_salary;
select department_id from employees group by department_id having count(*) = (select max(cnt) from (select count(*) as cnt from employees group by department_id));











