#1. Find Names of All Employees by First Name
/* Write a SQL query to find first and last names of all employees whose first name starts with "Sa" (case insensitively). Order the information by id. Submit your query statements as Prepare DB & run queries.
Example
first_name	last_name
Sariya	Harnpadoungsataya
Sandra	Reategui Alayo
*/ 
SELECT first_name, last_name
FROM employees 
WHERE first_name like 'SA%';

SELECT first_name, last_name
FROM employees
WHERE substring(first_name, 1, 2) = 'Sa'; 

SELECT first_name, last_name
FROM employees
WHERE LEFT (first_name, 2) = 'Sa';