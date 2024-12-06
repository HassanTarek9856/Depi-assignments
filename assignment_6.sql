-- task 1

select employee_id, last_name, salary
from employees
where salary between 2000 and 5000
  and manager_id not in (101, 200);


-- task 2
 select (e.first_name +' '+e.last_name) as employee_name, d.department_name
from employees e
inner join departments d on e.department_id = d.department_id
order by d.department_name asc;


--task 3

select department_id, count(*) as num_employees, avg(salary) as avg_salary
from employees
group by department_id;
