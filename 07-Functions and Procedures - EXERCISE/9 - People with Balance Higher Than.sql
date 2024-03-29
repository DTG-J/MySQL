DELIMITER $ 

CREATE PROCEDURE usp_get_holders_with_balance_higher_than (target_salary DECIMAL (19,4))
BEGIN
SELECT ah.first_name, ah.last_name
FROM account_holders ah
JOIN accounts a ON  ah. id = a. account_holder_id
WHERE target_salary < (SELECT sum(balance)
	FROM accounts
	WHERE account_holder_id = ah.id
    GROUP BY account_holder_id)
GROUP BY ah.id
ORDER BY ah.id;
END