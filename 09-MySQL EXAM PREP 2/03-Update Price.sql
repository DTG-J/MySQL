# 03. Update 
/* There are some tax frauds and you have to correct the price for some properties.
 You must reduce the price by 50 000 for all properties that cost more or equal to 800 000.*/
UPDATE properties
SET price = price - 50000
WHERE price >= 800000; 