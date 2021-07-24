-- Q-1. Write an SQL query to fetch "FIRST_NAME" from Worker table using the alias name as <WORKER_NAME>.

select FIRST_NAME as WORKER_NAME from Worker;

-- Q-2. Write an SQL query to fetch unique values of DEPARTMENT from Worker table.

select DISTINCT DEPARTMENT from Worker;

-- Q-3. Write an SQL query to show the last 5 record from a table.

select * from Employees
where [sid_Employee] not in (select top ((select count(*) from Employees) - 5) [sid_Employee] from Employees)
