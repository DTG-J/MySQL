# 10.	Countries Holding 'A' 3 or More Times
/* Find all countries that hold the letter 'A' in their name at least 3 times (case insensitively), 
sorted by ISO code. Display the country name and the ISO code. Submit your query statements as 
Prepare DB & run queries.
Example	
country_name	iso_code
Afghanistan	AFG
Albania	ALB
*/

SELECT country_name, iso_code
FROM countries
WHERE country_name LIKE '%A%A%A%'
ORDER BY iso_code;

SELECT country_name, iso_code
FROM countries
WHERE LENGTH(REGEXP_REPLACE(country_name, '[^Aa]', '')) >= 3
ORDER BY iso_code;

SELECT country_name, iso_code
FROM countries
WHERE UPPER(country_name) REGEXP 'A.*A.*A'
ORDER BY iso_code;


SELECT country_name , iso_code 
FROM countries 
WHERE (LENGTH(country_name) - LENGTH(REPLACE(LOWER(country_name) , "a" , ""))) >= 3 
ORDER BY iso_code ASC;