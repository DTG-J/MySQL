# 17- Salary Challenge 
/* Salary Challenge**
Write a query that returns:
•	first_name
•	last_name
•	department_id
for all employees who have salary higher than the average salary of their respective departments. 
Select only the first 10 rows. Order by department_id, employee_id.
Example:
first_name	last_name	department_id
Roberto	Tamburello	1
Terri	Duffy	1
Rob	Walters	2
*/
SELECT first_name, last_name, department_id
FROM employees e
WHERE salary > (SELECT AVG(salary) AS 'Avg_salary'
				FROM employees
                WHERE department_id = e.department_id
				)
ORDER BY department_id, employee_id
LIMIT 10;

