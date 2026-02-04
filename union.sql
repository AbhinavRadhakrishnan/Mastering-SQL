SELECT first_name,last_name
FROM employee_demographics
UNION ALL
SELECT first_name,last_name
FROM employee_salary
;

SELECT first_name,last_name , 'OLD MAN' AS Label
FROM employee_demographics
WHERE age>40 AND gender = 'Male'
UNION
SELECT first_name,last_name , 'OLD Lady' AS Label
FROM employee_demographics
WHERE age>40 and gender = 'Female'
UNION 
SELECT first_name,last_name , 'Highly  paid employee' AS Label
FROM employee_salary
WHERE salary > 70000
ORDER BY first_name,last_name
;

-- String Functions

SELECT LENGTH('skyfall');

SELECT first_name,Length(first_name)
FROM employee_demographics
order by 2;


SELECT UPPER('abhi');

SELECT LOWER("ABHI");

SELECT first_name, UPPER(first_name)
FROM employee_demographics;


SELECT TRIM("    sky    ");

SELECT first_name, 
LEFT(first_name, 4) AS shortName,
SUBSTRING(first_name,3,2),
birth_date,
SUBSTRING(birth_date,6,2) AS birth_month
FROM employee_demographics;


SELECT first_name,Replace(first_name, 'A','z')
FROM employee_demographics;


SELECT LOCATE('x',"ALEXANDER");

SELECT first_name,LOCATE('an',first_name)
FROM employee_demographics;

SELECT first_name,last_name,
CONCAT(first_name,' ',last_name) AS full_name
FROM employee_demographics;