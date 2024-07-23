CREATE TABLE superstore (
    item_id INTEGER PRIMARY KEY,
    item_name TEXT,
    category TEXT,
    price DECIMAL(10, 2),
    stock_quantity INTEGER,
    average_rating DECIMAL(3, 2)
);

INSERT INTO superstore (item_id, item_name, category, price, stock_quantity, average_rating)
VALUES
    (1, 'Stainless Steel Cookware Set', 'Kitchen Supplies', 89.99, 50, 4.6),
    (2, 'Memory Foam Mattress', 'Furnishings', 499.99, 30, 4.8),
    (3, 'Smart LED TV', 'Electronics', 549.00, 20, 4.5),
    (4, 'Robot Vacuum Cleaner', 'Appliances', 199.50, 40, 4.3),
    (5, 'Wireless Bluetooth Speaker', 'Electronics', 39.99, 60, 4.2),
    (6, 'Non-Stick Baking Set', 'Kitchen Supplies', 29.95, 80, 4.4),
    (7, 'Cotton Bedding Set', 'Furnishings', 89.00, 25, 4.7),
    (8, 'Smart Home Security Camera', 'Electronics', 79.95, 15, 4.1),
    (9, 'Air Purifier', 'Appliances', 129.50, 35, 4.6),
    (10, 'Premium Coffee Maker', 'Kitchen Supplies', 79.99, 50, 4.9),
    (11, 'Ergonomic Office Chair', 'Furnishings', 189.00, 20, 4.5),
    (12, 'Wireless Earbuds', 'Electronics', 49.99, 75, 4.3),
    (13, 'Slow Cooker', 'Appliances', 49.95, 30, 4.7),
    (14, 'Cutlery Set', 'Kitchen Supplies', 34.50, 40, 4.4),
    (15, 'Cozy Throw Blanket', 'Furnishings', 24.99, 100, 4.2);

--For this project, I used SQL to query the Superstore database to get information about items sold at the store and their prices. 

--Write a SQL query that orders the items by price.
SELECT item_name, price
FROM superstore
ORDER by price;

--Write your own SQL query that will show a statistic about the item prices, like a sum, average, minimum, maximum, or count.
SELECT SUM(price)
FROM superstore;

SELECT SUM(price*stock_quantity)
FROM superstore;

--Write your own SQL query that will show a statistic about the price for items in the category of "Kitchen Supplies"
SELECT category, SUM(price*stock_quantity)
FROM superstore
WHERE category= 'Kitchen Supplies';

--Come up with your own question about the data and try to answer it using SQL.
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
