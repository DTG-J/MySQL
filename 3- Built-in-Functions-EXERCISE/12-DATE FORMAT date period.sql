# 12.	Games from 2011 and 2012 Year
/*Find the top 50 games ordered by start date, then by name. 
Display only the games from the years 2011 and 2012. Display the start date in the format "YYYY-MM-DD". 
Submit your query statements as Prepare DB & run queries.
Example
name	start
Rose Royalty	2011-01-05
London	2011-01-13
Broadway	2011-01-16
 */
SELECT name, date_format(start, '%Y-%m-%d')
FROM games
WHERE YEAR (start) between 2011 AND 2012
ORDER BY start 
LIMIT 50;

SELECT name, date_format(start, '%Y-%m-%d')
FROM games
WHERE YEAR (start) IN (2011,2012)
ORDER BY start 
LIMIT 50;