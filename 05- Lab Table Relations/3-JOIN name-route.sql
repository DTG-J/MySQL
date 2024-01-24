#3.	SoftUni Hiking
/*Get information about the hiking routes – starting point and ending point, and their leaders – name and id. 
Submit your queries using the "MySQL prepare DB and Run Queries" strategy. */

SELECT starting_point AS 'route_starting_point',
 end_point AS 'ending_point', 
 leader_id,
concat(first_name, ' ', last_name) AS leader_name
FROM routes
JOIN campers ON routes.leader_id = campers.id; 