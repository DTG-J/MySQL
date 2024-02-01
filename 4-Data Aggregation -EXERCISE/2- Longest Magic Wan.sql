# 2- Longest Magic Wand
/* Select the size of the longest magic wand. Rename the new column appropriately.
Example:
longest_magic_wand
31
*/
SELECT magic_wand_size AS 'longest_magic_wand'
FROM wizzard_deposits
ORDER BY magic_wand_size DESC
LIMIT 1;