# 4-Triggered
/* Create a table deleted_employees(employee_id PK, first_name,last_name,
middle_name,job_title,deparment_id,salary) that will hold information about fired(deleted) 
employees from the employees table. Add a trigger to employees table that inserts the 
corresponding information in deleted_employees. Submit your queries using the "MySQL 
Run Skeleton, 
run queries and check DB" strategy.*/

CREATE TABLE deleted_employees (
	employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    middle_name VARCHAR(255),
    job_title VARCHAR(255),
    department_id INT,
    salary DECIMAL(10, 2)
);

CREATE TRIGGER deleted_employees_trigger 
AFTER DELETE 
ON employees 
FOR EACH ROW
INSERT INTO deleted_employees (first_name, last_name, middle_name, job_title, department_id, salary)
VALUES (OLD.first_name, OLD.last_name, OLD.middle_name, OLD.job_title, old.department_id, old.salary); 

Delete from employees where employee_id = 200;

ALTER TABLE employees_projects
DROP FOREIGN KEY fk_employees_projects_projects;

DROP TABLE deleted_employees;
DROP TRIGGER deleted_employees_trigger;
SELECT * 
FROM employees;
            