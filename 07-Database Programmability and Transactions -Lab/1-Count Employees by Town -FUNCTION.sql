# 1-Count Employees by Town
/* Write a function ufn_count_employees_by_town(town_name) that accepts town_name as parameter and returns the count of employees who live in that town. Submit your queries using the "MySQL Run Skeleton, run queries and check DB" strategy.
Example
The following example is given with employees living in Sofia.
*/

DELIMITER $ 
CREATE FUNCTION ufn_count_employees_by_town(town_name VARCHAR (50)) RETURNS INT
DETERMINISTIC
BEGIN
DECLARE result INT;
SET @result := (SELECT count(*) FROM employees AS e 
				JOIN addresses AS a ON a.address_id = e.address_id
                JOIN towns AS t ON t.town_id = a.town_id
                WHERE t.name = town_name); 
RETURN @result;
END $

SELECT ufn_count_employees_by_town('Sofia');
                