# 6-Employees by Salary Level

DELIMITER $
CREATE PROCEDURE usp_get_employees_by_salary_level (salary_level VARCHAR (20))
BEGIN
SELECT first_name, last_name 
FROM employees
WHERE ufn_get_salary_level (salary) = salary_level
ORDER BY first_name DESC, last_name DESC;
END$


/* ОФОРМЯНЕ НА ЗАДАЧИ ЗА JUDGE КОГАТО ИМАМ ФУНКЦИЯ И СЛЕД ТОВА Я ИЗПОЛЗВАМ В ПРОЦЕДУРА!!!!

CREATE FUNCTION ufn_get_salary_level (salary DECIMAL (10,2)) 
RETURNS VARCHAR (10)
DETERMINISTIC
BEGIN
    DECLARE result VARCHAR (10); 
        SET result = (
        CASE
            WHEN salary < 30000 THEN 'Low'
            WHEN salary <= 50000 THEN 'Average'
            WHEN salary > 50000 THEN 'High'
        END
    );
    RETURN result;
END; 

CREATE PROCEDURE usp_get_employees_by_salary_level (salary_level VARCHAR (20))
BEGIN
    SELECT first_name, last_name 
    FROM employees
    WHERE ufn_get_salary_level(salary) = salary_level
    ORDER BY first_name DESC, last_name DESC;
END;
 */