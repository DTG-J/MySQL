# 2.Towns Addresses
/*Write a query to get information about the addresses in the database, which are in San Francisco, Sofia or Carnation. 
Retrieve town_id, town_name, address_text. 
Order the result by town_id, then by address_id. Submit your queries using the "MySQL prepare DB and Run Queries" strategy.  */
SELECT towns.town_id, towns.name AS 'town_name', addresses.`address_text`
FROM addresses
JOIN towns ON towns. town_id = addresses. town_id
where towns.name = 'San Francisco' OR name = 'Sofia' OR name = 'Carnation'
ORDER BY town_id, address_id; 

SELECT  t.town_id,
		t.name AS 'town_name',
        a.address_text
FROM addresses AS a
JOIN towns AS t ON a.town_id = t.town_id
WHERE t.name IN ('San Francisco', 'Sofia', 'Carnation')
ORDER by t.town_id, a. address_id; 

