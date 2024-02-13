# 10.	Extract average salary
DELIMITER $
CREATE FUNCTION udf_average_salary_by_position_name (position_name VARCHAR(40)) 
RETURNS DECIMAL (10,2)
DETERMINISTIC
BEGIN
	DECLARE result DECIMAL (10,2);
	SET result :=	(SELECT AVG (w. salary) FROM workers w
					JOIN positions p ON w.position_id = p.id
					WHERE p.name = position_name
                   );
    RETURN result;                
END$

SELECT p.name, udf_average_salary_by_position_name('Forester') as 
position_average_salary FROM positions p 
WHERE p.name = 'Forester';
