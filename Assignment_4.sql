-- Q-1. Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’.

select replace(name, 'a', 'A') from Dummy_emp

-- Q-2. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME 
-- Ascending and DEPARTMENT Descending.

SELECT * FROM Worker ORDER BY FIRST_NAME ASC , DEPARTMENT DESC

--Q-3. Write an SQL query to fetch the names of workers who earn the highest salary.
-- Note- Here I have used Employees table from Human_Resources DB
select 
first_name,
cp.current_salary
from 
Employees emp inner join
Current_Personnel cp on emp.sid_Employee = cp.sid_Employee
where 
current_salary = (SELECT Max(current_salary) FROM Current_Personnel)

