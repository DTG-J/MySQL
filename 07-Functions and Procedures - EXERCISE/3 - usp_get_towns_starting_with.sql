use soft_uni;
DELIMITER $

CREATE PROCEDURE usp_get_towns_starting_with (symbol VARCHAR (250))
BEGIN
	SELECT name AS town_name FROM towns
	WHERE name LIKE CONCAT (symbol, '%')
	ORDER BY town_name;
END$

CALL usp_get_towns_starting_with ('b');


DELIMITER ;

DROP PROCEDURE usp_get_towns_starting_with;

SELECT * FROM towns;
DROP database soft_uni;