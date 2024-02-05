# 5 -Salary Level Function

DELIMITER $

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
END

SELECT ufn_get_salary_level('');

CREATE FUNCTION ufn_get_salary_level (salary DECIMAL (10,2)) 
RETURNS VARCHAR (10)
DETERMINISTIC
BEGIN
    DECLARE result VARCHAR (10); 
            IF (salary < 30000) THEN 
				SET result := 'Low';
            ELSEIF (salary <= 50000) THEN 
				SET result :='Average';
            ELSE 
				SET result :='High';
        END IF;
		RETURN result;
END