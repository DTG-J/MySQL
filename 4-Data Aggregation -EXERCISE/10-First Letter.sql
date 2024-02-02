# 10-First Letter
/* Write a query that returns all unique wizard first letters of their first names only if they have deposit of type Troll Chest. 
Order them alphabetically. Use GROUP BY for uniqueness.
Example:
first_letter
A
*/
SELECT substring(first_name, 1, 1) AS 'first_letter'
FROM wizzard_deposits
WHERE deposit_group = 'Troll Chest'
group by first_letter
ORDER BY first_letter;

SELECT * 
FROM wizzard_deposits;