# 04-Smallest Deposit Group per Magic Wand Size 
/*Select the deposit group with the lowest average wand size.
Example:
deposit_group
Troll Chest
 */
 SELECT deposit_group, AVG(magic_wand_size)
 FROM wizzard_deposits
 GROUP BY deposit_group
 LIMIT 1;
 
  SELECT deposit_group
 FROM wizzard_deposits
 GROUP BY deposit_group
 LIMIT 1;
 

