/*
Create a simple view named vw_employee_details that displays the first name, last name, and 
department name of employees. 
*/

create view vw_employee_details as
SELECT e.first_name as first_name,  e.last_name as last_name,  d.department_name as department_name
from  employees e
join  departments d
on 
 e.department_id = d.department_id;

 select * from vw_employee_details;


/*
Create a view named vw_high_status_suppliers to display all suppliers with a status greater 
than 15, and ensure that any updates or inserts through the view still meet the status condition. 
*/
create view vw_high_status_suppliers as
select *
from suppliers
where status > 15
with check option;

