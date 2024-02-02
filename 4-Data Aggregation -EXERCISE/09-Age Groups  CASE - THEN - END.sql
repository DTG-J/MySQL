# 09-Age Groups 
/* Write down a query that creates 7 different groups based on their age.
Age groups should be as follows:
•	[0-10]
•	[11-20]
•	[21-30]
•	[31-40]
•	[41-50]
•	[51-60]
•	[61+]
The query should return:
•	Age groups
•	Count of wizards in it
Sort result by increasing size of age groups.
Example:
age_group	wizard_count
[11-20]	21
*/
SELECT 
	CASE 	WHEN age < 11 THEN '[0-10]'
			WHEN age < 21 THEN '[11-20]'
			WHEN age < 31 THEN '[21-30]'
			WHEN age < 41 THEN '[31-40]'
			WHEN age < 51 THEN '[41-50]'
			WHEN age < 61 THEN '[51-60]'
			WHEN age > 60 THEN '[61+]'
END AS 'age_group', 
count(*) 'wizard_count'
FROM wizzard_deposits
GROUP BY age_group
ORDER BY wizard_count;