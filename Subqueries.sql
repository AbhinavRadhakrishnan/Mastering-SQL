-- Subquries
SELECT * 
FROM employee_demographics
WHERE employee_id IN (SELECT employee_id FROM employee_salary WHERE dept_id=1);

SELECT first_name,salary, 
(SELECT AVG(salary)
FROM employee_salary)
FROM employee_salary;

SELECT AVG(max_age)
FROM
(SELECT gender, AVG(age) AS Avg_age , MAX(age) AS max_age, MIN(age) AS min_age,COUNT(age)
FROM employee_demographics
group by gender) as AGG_Table

