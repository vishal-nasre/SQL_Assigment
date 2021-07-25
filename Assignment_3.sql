
-- Note I am using [Human_Resources] DB from our dataset.

-- Q-1. Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side.

SELECT RTRIM(first_name) 
    FROM employees

--Q-2. Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.

Select 
distinct len(dept_name) 
from Departments

--Q-3. Write an SQL query to fetch nth max salaries from a table.

SELECT * FROM Current_Personnel 
WHERE current_salary = (SELECT MIN(current_salary) 
						FROM Current_Personnel 
						WHERE  current_salary IN (SELECT DISTINCT TOP 10 current_salary 
													FROM Current_Personnel 
													ORDER BY current_salary DESC))
-- Note - for below query I am using dummy table created by me.

SELECT 
e1.name, e1.salary 
FROM Dummy_emp e1 
WHERE 1 = (SELECT COUNT(DISTINCT salary) 
				FROM Dummy_emp e2 
				WHERE e2.salary > e1.salary)
