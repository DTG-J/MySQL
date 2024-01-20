SELECT `employee_id`, `first_name`, `last_name`,
TIMESTAMPDIFF(year, `hire_date`, '2017-05-31')
AS 'Years In Service'
FROM `employees`;

SELECT concat(first_name, ' ', last_name) AS 'Full Name',
TIMESTAMPDIFF(DAY, born, died) AS 'Days Lived'
FROM authors;