# 11.	Movies Database
/*Using SQL queries create Movies database with the following entities:
•	directors (id, director_name, notes) 
o	director_name cannot be null
•	genres (id, genre_name, notes) 
o	genre_name cannot be null
•	categories (id, category_name, notes)  
o	category_name cannot be null
•	movies (id, title, director_id, copyright_year, length, genre_id, category_id, rating, notes)
o	title cannot be null
Set most appropriate data types for each column. Set primary key to each table. Populate each table with 5 records. Make sure the columns that are present in 2 tables would be of the same data type. Consider which fields are always required and which are optional. Submit your CREATE TABLE and INSERT statements as Run queries & check DB.
 */
 
 CREATE DATABASE Movies;
 
 CREATE TABLE directors(
 id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
 director_name VARCHAR (50) NOT NULL,
 notes VARCHAR (250));
 
  CREATE TABLE genres (
 id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
 genre_name VARCHAR (50) NOT NULL,
 notes VARCHAR (250));
 
  CREATE TABLE categories (
 id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
 category_name VARCHAR (50) NOT NULL,
 notes VARCHAR (250));
 
  CREATE TABLE movies(
 id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
 title  VARCHAR (50) NOT NULL,
 director_id INT,
 copyright_year DATETIME,
 length TIME,
 genre_id INT,
 category_id INT, 
 rating VARCHAR (50),
 notes VARCHAR (250));
 
 INSERT INTO directors VALUES (1, 'Petrov', 'test');
 INSERT INTO directors VALUES ( 2,'Ivanov', 'test');
 INSERT INTO directors VALUES ( 3,'Zlatanov', 'test');
 INSERT INTO directors VALUES ( 4,'Todorov', 'test');
 INSERT INTO directors VALUES (5, 'Nikolov', 'test');
 
 SELECT * 
 FROM directors;
 
 INSERT INTO categories VALUES (1,'action', 'test');
 INSERT INTO categories VALUES (2, 'drama', 'test');
 INSERT INTO categories VALUES (3, 'comedy', 'test');
 INSERT INTO categories VALUES (4, 'history', 'test');
 INSERT INTO categories VALUES (5, 'military', 'test');
  
  SELECT *
  FROM categories;
  
  INSERT INTO genres (id, genre_name, notes) VALUES
(1, 'Action', 'Notes for Action genre'),
(2, 'Comedy', 'Notes for Comedy genre'),
(3, 'Drama', 'Notes for Drama genre'),
(4, 'Science Fiction', 'Notes for Science Fiction genre'),
(5, 'Thriller', 'Notes for Thriller genre');

SELECT *
FROM genres;

INSERT INTO movies (title, director_id, copyright_year, length, genre_id, category_id, rating, notes) VALUES
('Movie1', 1, '2022-01-01 00:00:00', '02:30:00', 2, 1, 'PG-13', 'Notes for Movie1'),
('Movie2', 2, '2021-05-15 00:00:00', '01:45:00', 3, 2, 'R', 'Notes for Movie2'),
('Movie3', 3, '2023-03-10 00:00:00', '01:55:00', 1, 3, 'PG', 'Notes for Movie3'),
('Movie4', 1, '2020-09-20 00:00:00', '02:10:00', 4, 2, 'PG-13', 'Notes for Movie4'),
('Movie5', 2, '2022-11-05 00:00:00', '02:20:00', 5, 1, 'R', 'Notes for Movie5');

SELECT *
FROM movies;


