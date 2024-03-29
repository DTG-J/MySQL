# 08. Deposit Charge 
/*Create a query that selects:
•	Deposit group 
•	Magic wand creator
•	Minimum deposit charge for each group 
Group by deposit_group and magic_wand_creator.
Select the data in ascending order by magic_wand_creator and deposit_group.

Example:
deposit_group	magic_wand_creator	min_deposit_charge
Blue Phoenix	Antioch Peverell	30.00
 */
 SELECT deposit_group, magic_wand_creator, min(deposit_charge) AS 'min_deposit_charge'
 FROM wizzard_deposits
 GROUP BY deposit_group, magic_wand_creator
 ORDER BY magic_wand_creator, deposit_group;