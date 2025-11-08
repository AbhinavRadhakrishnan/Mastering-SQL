SELECT *
FROM parks_and_recreation.employee_demographics;



SELECT first_name,
last_name,
birth_date,
age,
(age+10)*10+11
FROM parks_and_recreation.employee_demographics;
# PEMDAS : PARANTHESIS,EXPONENTIAL,MULTIPLY,DIVIDE,ADD,SUB


SELECT DISTINCT first_name
FROM parks_and_recreation.employee_demographics;

SELECT DISTINCT gender
FROM parks_and_recreation.employee_demographics;

SELECT DISTINCT first_name,gender
FROM parks_and_recreation.employee_demographics; #HERE NAMES ARE UNIQUE FOR THE GENDER EX: THERE IS ONLY 1 TOM WHO IS A MALE 

