# 05.	Most experienced workers


SELECT CONCAT(first_name, ' ', last_name) AS full_name,
       DATEDIFF('2024-01-01', start_date) AS days_of_experience
FROM workers
WHERE DATEDIFF('2024-01-01', start_date) > 1825 AND 1826
ORDER BY days_of_experience DESC
LIMIT 10;
