# 07-Properties without offers
/*Some properties are not included in offers and don’t have an agent.
Write a query that returns:  agent_name and price for all properties that are not included in any offer.
To find their agent_name you must take the first 6 letters from the address and to find the offered price you need to get the number of characters in the address and multiply it by 5430.
Order by agent_name in descending order and then by price in descending order.
Required Columns
•	agent_name (first 6 characters from address)
•	price (number of characters in the address multiplied by 5430 
*/
SELECT SUBSTRING(p.address, 1,6) AS agent_name, LENGTH(p.address) * 5430 AS price
FROM properties p
LEFT JOIN property_offers po ON  po.property_id = p.id
WHERE po.agent_id IS NULL
ORDER BY agent_name DESC, price DESC; 