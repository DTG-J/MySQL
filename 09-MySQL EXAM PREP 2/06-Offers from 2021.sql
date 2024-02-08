# 06-Offers from 2021
/* Write a query that returns: property_id, agent_id, price and offer_datetime from table property_offers. Filter offers only from 2021 year.
Order the results ascending by price and show only the first 10 results.
*/
SELECT property_id, agent_id, price, offer_datetime 
FROM property_offers
WHERE YEAR(offer_datetime) = 2021
ORDER BY price 
LIMIT 10; 