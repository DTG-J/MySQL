SELECT * FROM employees; 

#Problem 1: Select Employee Information
/*Write a query to select all employees and retrieve information about their id, 
first_name, last_name and job_title ordered by id.*/

SELECT `id`, `first_name`, `last_name`, `job_title`
FROM employees 
ORDER BY  id; 

/* Write a query to select all employees (id, first_name and last_name (as full_name), job_title, salary) 
whose salaries are higher than 1000.00, ordered by id. 
Concatenate fields first_name and last_name into 'full_name'.*/

#Problem 2: Select Employees with Filter
/* Write a query to select all employees (id, first_name and last_name (as full_name), 
job_title, salary) whose salaries are higher than 1000.00, ordered by id. 
Concatenate fields first_name and last_name into 'full_name'.*/

SELECT id, CONCAT (`first_name`, ' ', `last_name`) AS 'full_name', job_title, salary
FROM employees
WHERE salary > 1000.00
ORDER BY id;


SELECT `id` AS 'No',
CONCAT_WS (' ', `first_name`, `last_name`, `job_title`)
 AS 'full_name',
`job_title` AS 'Job Title'
FROM employees; 

SELECT * 
FROM employees 
#WHERE salary >1000.00
WHERE department_id = 1; 

#ALIASES 
SELECT e.id AS 'No',
e.first_name AS 'First Name',
e. last_name AS 'Last Name', 
e. job_title AS 'Job Title'
FROM employees AS e 
ORDER BY id; 

#Problem 3: Update Employees Salary 
/*Update all employees' salaries whose job_title is "Manager" by adding 100. 
Retrieve information about salaries from table employees.*/
SET SQL_SAFE_UPDATES = 0;
UPDATE employees
SET salary = salary + 100
WHERE `job_title` = 'Manager';

SELECT salary
FROM employees;

SELECT *
FROM employees;

#Problem 4: Top Paid Employee
SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 1; 

#Problem 5: Select Employees by Multiple Filters
/*Write a query to retrieve information about employees, who are in department 4 
and has a salary higher or equal to 1000. Order the information by id.*/

SELECT *
FROM employees
WHERE department_id = 4 
AND salary >= 1000
ORDER BY id; 

#Problem 6: Delete from Table
/*Write a query to delete all employees from the "employees" table who are in department 2 or 1. 
Then select all from table `employees` and order the information by id.*/

DELETE
FROM employees
WHERE department_id = 1 OR department_id = 2;

SELECT *
FROM employees
ORDER BY id; 










