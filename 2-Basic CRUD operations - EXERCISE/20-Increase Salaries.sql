# 20-Increase Salaries 
/*Write a SQL query to increase salaries of all employees that are in the Engineering, 
Tool Design, Marketing or Information Services department by 12%. Then select Salaries column from the Employees table.
Submit your query statements as Prepare DB & run queries. 
Example 
Salary 
12500.00 
15120.00 
48496.00 
33376.00 
124,11
 */
Select department_id, name
FROM departments
WHERE name IN ('Engineering', 'Tool Design', 'Marketing', 'Information Services');

UPDATE employees
SET salary = salary *1.12
WHERE department_id IN (1, 2, 4, 11);

SELECT salary 
FROM employees; 

;
