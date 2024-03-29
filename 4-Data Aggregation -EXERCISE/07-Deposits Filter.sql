# 07-Deposits Filter 
/* Deposits Filter
Select all deposit groups and its total deposit sum but only for the wizards who has their magic wand crafted by Ollivander family.
 After this, filter total deposit sums lower than 150000. Order by total deposit sum in descending order.
Example:
deposit_group	total_sum
Troll Chest	126585.18
*/
SELECT deposit_group, SUM(deposit_amount) AS 'total_sum'
FROM wizzard_deposits
WHERE magic_wand_creator = 'Ollivander family' 
GROUP BY deposit_group
HAVING total_sum < 150000
ORDER BY total_sum DESC;