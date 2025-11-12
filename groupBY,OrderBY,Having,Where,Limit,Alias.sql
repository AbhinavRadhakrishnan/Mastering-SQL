# group By

SELECT gender
FROM employee_demographics
GROUP BY gender; #here if we are not doing any aggregate functions the select and groupby statement should be done on same column

SELECT gender , AVG(age)
FROM employee_demographics
GROUP BY gender; 

SELECT gender , AVG(age) , MAX(age) , MIN(age) , COUNT(age)
FROM employee_demographics
GROUP BY gender; 


#ORDER BY
SELECT *
FROM employee_demographics
ORDER BY first_name ;

SELECT *
FROM employee_demographics
ORDER BY first_name DESC;

SELECT *
FROM employee_demographics
ORDER BY gender,age;  #order by gender and then the age


SELECT *
FROM employee_demographics
ORDER BY gender,age DESC;  

SELECT *
FROM employee_demographics
ORDER BY 5, 4 ; # 5 , 4 are the positions of gender and age



#Having and Where 

SELECT gender , AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age)>40; 


SELECT occupation,AVG(salary)
FROM employee_salary
where occupation LIKE '%manager%'
group by occupation
having AVG(salary) > 75000 ; #having  is used to filter out from the aggregate functions


#limit and aliasing
SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 3 ; 

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 2 , 1 ; #positon 2 and 1 indicates the next row to pos 2 which is to be selected


#aliasing

SELECT gender,avg(age) AS avg_Age
from employee_demographics
GROUP BY gender
having avg_Age > 40; 
