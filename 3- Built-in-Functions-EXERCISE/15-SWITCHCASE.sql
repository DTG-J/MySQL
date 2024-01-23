# 15-Show All Games with Duration and Part of the Day
/* Find all games with their corresponding part of the day and duration. Parts of the day should be Morning (start time is >= 0 and < 12), 
Afternoon (start time is >= 12 and < 18), Evening (start time is >= 18 and < 24).
 Duration should be Extra Short (smaller or equal to 3), Short (between 3 and 6 including), Long (between 6 and 10 including) and 
 Extra Long in any other cases or without duration. Submit your query statements as Prepare DB & run queries.
Example
game	Part of the Day	Duration
Aithusa	Evening	Short
Acid green	Morning	Long
Apple	Morning	Short
Broadway	Morning	Short
Ancalagon	Morning	Short
Allium drumstick	Morning	Extra Long
*/
SELECT name AS 'game', 
CASE 
WHEN HOUR (start) < 12 THEN 'Morning'
WHEN HOUR (start) < 18 THEN 'Afternoon'
WHEN HOUR (start) < 24 THEN 'Evening'
END AS 'Part of the Day',
CASE
WHEN duration < 4 THEN 'Extra Short'
WHEN duration < 7 THEN 'Short'
WHEN duration < 11 THEN 'Long'
ELSE 'Extra Long'
END AS 'Duration'
FROM games; 
