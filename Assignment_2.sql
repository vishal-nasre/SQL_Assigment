--Q-1. Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.

SELECT right([first_name],3) FROM [dbo].[Employees]

--Q-2. Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from Worker table.

select CHARINDEX('a',Amitabh) Amitabh from Worker

--Q-3. Write an SQL query to print the name of employees having the highest salary in each department.
-- Here I have use Human_Resources DB from our class data.

SELECT TOP 10 
emp.first_name,
dp.dept_name,
cp.current_salary
FROM 
Departments dp inner join
Current_Personnel cp on dp.sid_Department = cp.sid_Department inner join
Employees emp on cp.emp_no = emp.emp_no
ORDER BY cp.current_salary DESC