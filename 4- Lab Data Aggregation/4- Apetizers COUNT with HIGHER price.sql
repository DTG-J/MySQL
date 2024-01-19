# 4.	Appetizers Count
/* Write a query to retrieve the count of all appetizers (category id = 2) with price higher than 8. 
Submit your queries with the MySQL prepare DB & run queries strategy. */

SELECT category_id, count(category_id)
FROM products
group by category_id 
HAVING category_id = 2;