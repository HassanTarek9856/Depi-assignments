-- 1- basic sql query 
--  Write a SQL query to retrieve all columns from a table named employees. 

select * from employees

--Write a SQL query to retrieve the emp_id, emp_name, and dept_id from the employees table, where the location is 'Cairo'. 

select e.employee_id , (e.first_name+' '+e.last_name ) as employee_name, e.department_id from employees e
join departments d on e.department_id = d.department_id 
join locations l on d.location_id = l.location_id
where l.city = 'Cairo';

select * from locations


--  Write a SQL query that displays distinct dept_id values from the employees table. 
select distinct department_id as dept_id
from employees;


/*Write a SQL query to create a table students with the following columns: ID 
(Primary Key), First_Name (not null), Last_Name (default 'Unknown'), 
Address (default 'N/A'), City (default 'N/A'), and Birth_Date. */
create table students (
    id int primary key identity(1,1),
    first_name varchar(50) not null,
    last_name varchar(50) default 'unknown',
    address varchar(100) default 'n/a',
    city varchar(50) default 'n/a',
    birth_date date
);

-- Write a SQL query to drop the students table.

drop table students;

/*
Write a SQL query to insert the following values into the students table: 
('Ahmed', 'Ali', 'Downtown', 'Cairo', '1995-01-01'). 
*/
insert into students (first_name, last_name, address, city, birth_date)
values ('ahmed', 'ali', 'downtown', 'cairo', '1995-01-01');

/*
Write a SQL query to update the Address of the student with Last_Name = 
'Ahmed' to 'Garden City'. 
*/
 -- there is no last_name = ahmed so i added new row and has last name = ahmed or i could change to first name but i didn't
insert into students (first_name, last_name, address, city, birth_date)
values ('mohamed', 'ahmed', 'mansoura', 'dakahlia', '1995-01-01');

update students
set address = 'garden city'
where last_name = 'ahmed';

select * from students

/*
Write a SQL query to delete the rows from the students table where City is 
'Cairo', and then rollback the transaction.
*/

begin transaction;

delete from students
where city = 'cairo';

rollback;
