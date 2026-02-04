-- Stored Procedures
select * 
from employee_salary
where salary >= 50000;


create procedure large_salaries()
select * 
from employee_salary
where salary >= 50000;

call large_salaries();

-- best practice

delimiter $$
create procedure large_values2()
begin
	select * 
    from employee_salary
    where salary >= 50000;
    select * 
    from employee_salary
    where salary >= 10000;

end $$
delimiter ;
call large_values2();

delimiter $$
create procedure large_values6(employee_id_para INT)
begin
	select salary
    from employee_salary
    where employee_id = employee_id_para;
end $$
delimiter ;
call large_values6(1)