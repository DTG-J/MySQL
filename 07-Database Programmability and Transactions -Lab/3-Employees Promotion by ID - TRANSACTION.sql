# 3-Employees Promotion by ID - TRANSACTION
/* Write a stored procedure usp_raise_salary_by_id(id) that raises a given employee's salary (by id as parameter) by 5%. Consider that you cannot promote an employee that doesn't exist – if that happens, no changes to the database should be made. Submit your queries using the "MySQL Run Skeleton, run queries and check DB" strategy. 
Example
The following example is given with employee_id  =  17.
salary
14175.0000
*/
DELIMITER $
CREATE PROCEDURE usp_raise_salary_by_id(id INT)
	BEGIN
		START TRANSACTION;
		IF ((SELECT count(*) FROM employees WHERE employee_id = id)<>1)  THEN
			ROLLBACK;
		ELSE
			UPDATE employees e
			SET salary = salary * 1.05
			WHERE  employee_id = id;
			COMMIT;
		END IF;
END$

CALL usp_raise_salary_by_id('17');