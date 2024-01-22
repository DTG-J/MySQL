# 7. Find Towns Not Starting With
/*Write a SQL query to find all towns that do not start with letters R, B or D (case insensitively). Order them alphabetically by name. Submit your query statements as Prepare DB & run queries.
Example
town_id	name
2	Calgary
23	Cambridge
15	Carnation
 */
 
 SELECT town_id, name
 FROM towns
 WHERE LEFT (name, 1) NOT IN ('R', 'B', 'D')
 ORDER BY name;
 
 
 SELECT town_id, name
 FROM towns
 WHERE UPPER(`name`) NOT LIKE 'R%' AND UPPER(`name`) NOT LIKE 'B%' AND UPPER(`name`) NOT LIKE 'D%'
 ORDER BY name;
 
 SELECT town_id, name
FROM towns
WHERE NOT (UPPER(`name`) REGEXP '^[RBD]')
ORDER BY name;