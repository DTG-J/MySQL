# DELETE
/* Delete all property_transactions that are not successful*/
DELETE
FROM property_transactions
WHERE is_successful = false;