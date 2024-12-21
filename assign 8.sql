-- Task 1
select *
from employees
where hire_date >= dateadd(day, -30, getdate());


-- task 2

create procedure sp_get_employee_hours(employee_id int)
as
begin
    select e.first_name, e.last_name, sum(w.hours) as total_hours
    from 
        employees e
    join works_on w 
    on e.ssn = w.essn
    where 
        e.ssn = employee_id
    group by 
        e.first_name, e.last_name;
end;


-- task 3
create procedure sp_department_employee_count
as
begin
    select  d.department_id, d.department_id, count(e.employee_id) as employee_count
    from 
        departments d
    join  employees e 
    on d.department_id = e.department_id
    group by 
        d.department_id, d.department_id
    having 
        count(e.employee_id) > 5;
end;
