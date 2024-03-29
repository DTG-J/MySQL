# 12-Employees Minimum Salaries 
/* That's it! You no longer work for Mr. Bodrog. You have decided to find a proper job as an analyst in SoftUni. 
It's not a surprise that you will use the soft_uni database. 
Select the minimum salary from the employees for departments with ID (2,5,7) but only for those who are hired after 01/01/2000.
 Sort result by department_id in ascending order.
Your query should return:
•	department_id
Example:
department_id	minimum_salary
2	25000.00
*/
SELECT department_id, MIN(salary) AS 'minimum_salary'
FROM employees
WHERE department_id IN (2, 5, 7)
AND hire_date > 2000-01-01
GROUP BY department_id
ORDER BY department_id;

