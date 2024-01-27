# 9 9.	Set Default Value of a Field
/* Using SQL queries modify table users. Make the default value of last_login_time field to be the current time. 
Submit your query in Judge as Run skeleton, run queries & check DB. */
ALTER TABLE users
CHANGE last_login_time last_login_time DATETIME DEFAULT NOW();