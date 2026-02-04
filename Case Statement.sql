SELECT first_name,last_name,
CASE
	WHEN age <= 30 THEN "Young"
    WHEN age BETWEEN 31 and 50 THEN "old"
    WHEN age > 50 THEN "BYE"
END AS Age_STAtus
FROM employee_demographics;

-- pay Increase and Bonus
-- < 50000 = 5%
-- > 50000 = 7%
-- Finance = 10% Bonus

SELECT first_name,last_name,salary,
CASE
	WHEN salary < 50000 THEN salary + (salary*0.05)
    WHEN salary > 50000 THEN salary + (salary*0.07)
END AS NEWsalary,
CASE
	WHEN dept_id = 6 THEN salary * .10
END AS BONUS_FOR_finance 
FROM employee_salary;


