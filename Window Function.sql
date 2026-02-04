-- window Functions

SELECT gender, AVG(salary) as avg_salary 
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
group by gender;


SELECT dem.first_name,gender, AVG(salary) OVER(partition by gender) 
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;
    
SELECT dem.first_name,gender,salary,
sum(salary) OVER(partition by gender ORDER BY dem.employee_id) AS Rolling_total
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;
    
SELECT dem.employee_id,dem.first_name,gender,salary,
ROW_NUMBER() OVER(partition by gender order by salary DESC) As row_num,
Rank() OVER (partition by gender order by salary DESC)rank_num,
dense_rank() OVER (partition by gender order by salary DESC)dense_rank_num
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;
    
