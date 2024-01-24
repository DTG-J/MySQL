#1.	Mountains and Peaks
/*Write a query to create two tables – mountains and peaks and link their fields properly. Tables should have:
-	Mountains:
•	id 
•	name
-	Peaks: 
•	id
•	name
•	mountain_id
Check your solutions using the "Run Queries and Check DB" strategy.
 */
 CREATE TABLE mountains (
 id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
 name VARCHAR (50));
 
 
 CREATE TABLE peaks (
 id  INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
 name VARCHAR (50), 
 mountain_id INT NOT NULL,
 FOREIGN KEY (mountain_id) REFERENCES mountains (id));