# 1.	Managers
/* Write a query to retrieve information about the managers – id, full_name, deparment_id and department_name.
 Select the first 5 departments ordered by employee_id. Submit your queries using the "MySQL prepare DB and Run Queries" strategy. 
Example
employee_id	full_name	department_id	department_name
3	Roberto Tamburello	10	Finance
4	Rob Walters	2	Tool Design
*/
SELECT employee_id, concat(first_name, ' ', last_name) AS full_name,
departments.department_id, name AS department_name
FROM employees 
JOIN departments ON departments.manager_id = employees.employee_id
ORDER BY employee_id
LIMIT 5; 