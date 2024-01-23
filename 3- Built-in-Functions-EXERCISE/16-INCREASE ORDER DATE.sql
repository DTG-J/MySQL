# 16 Orders Table
/* You are given a table orders (id, product_name, order_date) filled with data. Consider that the payment for an order must be accomplished within 3 days after the order date. Also the delivery date is up to 1 month. Write a query to show each product's name, order date, pay and deliver due dates. Submit your query statements as Prepare DB & run queries.
Original Table
id	product_name	order_date
1	Butter	2016-09-19 00:00:00
2	Milk	2016-09-30 00:00:00
3	Cheese	2016-09-04 00:00:00
4	Bread	2015-12-20 00:00:00
5	Tomatoes	2015-01-01 00:00:00


Output
product_name	order_date	pay_due	deliver_due
Butter	2016-09-19 00:00:00	2016-09-22 00:00:00	2016-10-19 00:00:00
Milk	2016-09-30 00:00:00	2016-10-03 00:00:00	2016-10-30 00:00:00
Cheese	2016-09-04 00:00:00	2016-09-07 00:00:00	2016-10-04 00:00:00
Bread	2015-12-20 00:00:00	2015-12-23 00:00:00	2016-01-20 00:00:00
Tomatoes	2015-01-01 00:00:00	2015-01-04 00:00:00	2015-02-01 00:00:00
*/

SELECT product_name, order_date,
DATE_ADD(order_date, INTERVAL 3 DAY) AS 'pay_due', 
DATE_ADD(order_date, INTERVAL 1 MONTH) AS 'deliver_due'
FROM orders;

