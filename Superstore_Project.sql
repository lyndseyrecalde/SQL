SELECT item_name, price
FROM superstore
ORDER by price;

SELECT SUM(price)
FROM superstore;

SELECT SUM(price*stock_quantity)
FROM superstore;

SELECT category, SUM(price*stock_quantity)
FROM superstore
WHERE category= 'Kitchen Supplies';

SELECT category, average_rating, item_name
FROM superstore
WHERE category= 'Kitchen Supplies'
ORDER BY average_rating;

SELECT category, SUM(price*stock_quantity) as total_name 
FROM superstore
GROUP BY category
ORDER BY total_name DESC;

SELECT category, item_name, MIN(average_rating)
FROM superstore
GROUP BY 1, 2
ORDER BY category, MIN(average_rating) DESC;
