#08-Best Banks
SELECT bank_name, count(*) AS count
FROM property_transactions
GROUP BY bank_name
HAVING count >= 9 
ORDER BY COUNT DESC, bank_name;