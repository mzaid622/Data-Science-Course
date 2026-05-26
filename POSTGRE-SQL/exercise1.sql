CREATE TABLE PRODUCT(
product_id serial primary key,
name varchar(20) NOT NULL,
sku_code char(8) Unique NOT NULL check (char_length(sku_code) = 8),
price NUMERIC(10,2) check (price > 0),
stock_quantity int default 0 check (stock_quantity >=0) ,
is_avaiable bool default True,
category Text NOT Null,
added_on Date Default Current_date,
last_updated Date Default now()
);
ALTER Table Product ALTER Column last_updated TYPE TIMESTAMP;
SELECT * FROM product;
DELETE FROM Product;
DROP TABLE Product;
INSERT INTO product (name, sku_code, price , stock_quantity, is_avaiable, category)
VALUES
('Wireless Mouse', 'WM123456', 699.99, 50, TRUE, 'Electronics'),
('Bluetooth Speaker', 'BS234567', 1499.00, 30, TRUE, 'Electronics'),
('Laptop Stand', 'LS345678', 799.50, 20, TRUE, 'Accessories'),
('USB-C Hub', 'UC456789', 1299.99, 15, TRUE, 'Accessories'),
('Notebook', 'NB567890', 99.99, 100, TRUE, 'Stationery'),
('Pen Set', 'PS678901', 199.00, 200, TRUE, 'Stationery'),
('Coffee Mug', 'CM789012', 299.00, 75, TRUE, 'Home & Kitchen'),
('LED Desk Lamp', 'DL890123', 899.00, 40, TRUE, 'Home & Kitchen'),
('Yoga Mat', 'YM901234', 499.00, 25, TRUE, 'Fitness'),
('Water Bottle', 'WB012345', 349.00, 60, TRUE, 'Fitness');

Select * from product;

-- Question 1 Show the name and price of all products.
SELECT name,price FROM product;

-- Q2. Show all products where the category is 'Electronics'.
SELECT * from product where category='Electronics';

-- Q3. Group products by category. Show each category once.
SELect category from product group by category;

-- Q4. Show categories that have more than 1 product. (Use after
SELect category,count(*) from product group by category Having count(*) > 1; 

-- Q5. Show all products sorted by price in ascending order
Select * from product ORDER BY price ASC ; 

-- Q6. Show only the first 3 products from the table.
Select * from product LIMIT 3;

--Q7. Show product name as "Item_Name" and price as "Item_Price".
select name as item_name, price as item_price from product;

-- Q8. Show all the unique categories from the products table.
Select DISTINCT(category) from product;


