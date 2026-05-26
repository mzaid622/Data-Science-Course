CREATE TABLE PRODUCT(
product_id serial primary key,
name varchar(20) NOT NULL,
sku_code char(8) Unique NOT NULL,
price NUMERIC(10,2) check (price > 0),
stock_quantity int default 0 check (stock_quantity >=0) ,
is_avaiable bool default True,
category Text NOT Null,
added_on Date Default Current_date,
last_updated Date Default now()
);
SELECT * FROM product;

INSERT INTO products (name,sku_code,price,stock_quantity,is_avaiable,category) VAL


Select * from product where category = 'Electronics';
select * from product where price < 1000;
select * from product where price < 1000 and category = 'Electronics';
select * from product where price between 400 and 1000;
select * from product where category in ('Electronics','Fitness','Accessories');

select * from product where sku_code like '_B%';

--Q1. Display the name and price of the cheapest product in the entire table
select name,min(price) as cheapest_product from product group by name ORDER BY cheapest_product ASC LIMIT 1;
select name,price from product order by price limit 1;
select name,price from product where price = (select min(price) from product);

--Q2.Find the average price of products that belong to the 'Home & Kitchen' or 'Fitness' category
select category,avg(price) from product group by category having category = 'Home & Kitchen' or category = 'Fitness';

select category,avg(price) from product where category IN ('Home & Kitchen' , 'Fitness') group by category;

--Q3. Show product names and stock quantity where the product is
--available, stock is more than 50, and price is not equal to ₹299
select * from product;
select name,stock_quantity from product where is_avaiable = true and stock_quantity > 50 and price != 299;

-- Q4. Find the most expensive product in each category (name and
-- price)
select category,max(price) from product group by category; -- maximum price in each category
select name,price,category from product as p1 where price = (select MAX(price) from product as p2
where p1.category = p2.category);

-- Q5. Show all unique categories in uppercase, sorted in descending
-- order
select DISTINCT UPPER(category) from product order by UPPER(category) DESC;




