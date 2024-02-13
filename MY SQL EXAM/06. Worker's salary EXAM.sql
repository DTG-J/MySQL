# 06.	Worker's salary
SELECT w.id, w.first_name, w.last_name , p. name AS 'preserve_name',  c.country_code
FROM workers w
JOIN preserves p ON p. id = w. preserve_id
JOIN countries_preserves cp ON cp. preserve_id = p. id
JOIN countries c ON cp. country_id = c. id
WHERE salary > 5000 AND age < 50
ORDER BY country_code; 