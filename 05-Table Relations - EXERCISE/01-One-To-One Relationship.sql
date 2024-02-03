# 01-One-To-One Relationship 
/* Create two tables as follows. Use appropriate data types.
people
person_id	first_name	salary	passport_id
1  	Roberto                                            	43300.00	102
2	Tom	56100.00	103
3	Yana	60200.00	101
passports
passport_id	passport_number
101	N34FG21B
102	K65LO4R7
103	ZE657QP2

Insert the data from the example above.
•	Alter table people and make person_id a primary key. 
•	Create a foreign key between people and passports by using the passport_id column. 
•	Think about which passport field should be UNIQUE.
•	Format salary to second digit after decimal point.
Submit your queries by using "MySQL run queries & check DB" strategy.
*/
CREATE DATABASE relations;

CREATE TABLE passports (
passport_id INT  NOT NULL AUTO_INCREMENT PRIMARY KEY, 
passport_number VARCHAR (10) UNIQUE);

INSERT INTO passports (passport_id, passport_number) 
VALUES ('101','N34FG21B'), ('102', 'K65LO4R7'), ('103', 'ZE657QP2'); 

CREATE TABLE people (
person_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR (50),
salary DECIMAL (10,2),
passport_id INT UNIQUE,
FOREIGN KEY (passport_id) REFERENCES passports (passport_id) 
);
INSERT INTO people (first_name, salary, passport_id) 
VALUES ('Roberto', '43300.00', '102'), ('Tom', '56100.00', '103'), ('Yana', '60200.00', '101');



