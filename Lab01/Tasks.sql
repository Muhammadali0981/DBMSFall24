-- Q1
SELECT *
FROM employees
WHERE department_id &lt;&gt; 100;
-- Q2
SELECT *
FROM employees
WHERE salary IN (10000, 12000, 15000);
-- Q3
SELECT first_name, salary
FROM employees
WHERE salary &lt;= 25000;
-- Q4
SELECT *
FROM employees
WHERE department_id &lt;&gt; 60;
-- Q5
SELECT *
FROM employees
WHERE department_id BETWEEN 60 AND 80;
-- Q6
SELECT *
FROM departments;
-- Q7
SELECT *
FROM employees
WHERE first_name = &#39;Steven&#39;;
-- Q8
SELECT *
FROM employees
WHERE salary BETWEEN 15000 AND 25000
AND department_id = 80;
-- Q9
SELECT *
FROM employees
WHERE salary &lt; ANY (SELECT salary

FROM employees
WHERE department_id = 100);
-- Q10
SELECT *
FROM employees e
WHERE department_id IN (
SELECT department_id
FROM employees
GROUP BY department_id
HAVING COUNT(*) = 1
);
-- Q11
SELECT *
FROM employees
WHERE hire_date BETWEEN DATE &#39;2005-01-01&#39; AND DATE &#39;2006-12-31&#39;;
-- Q12
SELECT *
FROM employees
WHERE manager_id IS NULL;
-- Q13
SELECT *
FROM employees
WHERE salary &lt; ALL (SELECT salary
FROM employees
WHERE salary &gt; 8000);
-- Q14
SELECT *
FROM employees
WHERE salary &gt; ANY (SELECT salary
FROM employees
WHERE department_id = 90);
-- Q15
SELECT *
FROM departments d
WHERE EXISTS (SELECT 1
FROM employees e
WHERE e.department_id = d.department_id);

-- Q16
SELECT *
FROM departments d
WHERE NOT EXISTS (SELECT 1
FROM employees e
WHERE e.department_id = d.department_id);
-- Q17
SELECT *
FROM employees
WHERE salary NOT BETWEEN 5000 AND 15000;
-- Q18
SELECT *
FROM employees
WHERE department_id IN (10, 20, 30)
AND department_id &lt;&gt; 40;
-- Q19
SELECT *
FROM employees
WHERE salary &lt; (SELECT MIN(salary)
FROM employees
WHERE department_id = 50);
-- Q20
SELECT *
FROM employees
WHERE salary &gt; (SELECT MAX(salary)
FROM employees
WHERE department_id = 90);
