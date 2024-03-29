# 2.	Trip Organization
/*Write a query to retrieve information about SoftUni camp's transportation organization. Get information about the drivers (name and id) and their vehicle type. Submit your queries using the "MySQL prepare DB and Run Queries" strategy.
Example
driver_id	vehicle_type	driver_name
1	bus	Simo Sheytanov
2	van	Roli Dimitrova
1	van	Simo Sheytanov
 */
 
 SELECT vehicles.driver_id, vehicle_type, concat(first_name, ' ', campers.last_name) AS `driver_name`
 FROM vehicles
 JOIN campers ON campers.id = vehicles.driver_id;