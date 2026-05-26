
-- Q1. Show each order along with the product name and price.
select order_id,product_name,price from products p 
join orders o 
on p.product_id = o.product_id;

-- Q2. Show all products even if they were never ordered
select p.product_name,order_id from products p
left join orders o
on p.product_id = o.product_id;

-- Q3.Show orders for only ‘Electronics’ category.
SELECT o.order_id, p.product_name, p.category 
from products p
join orders o
on p.product_id = o.product_id
where p.category = 'Electronics';

-- Q4.List all orders sorted by product price (high to low).
SELECT o.order_id, p.product_name, p.price
from products p
join orders o
on p.product_id = o.product_id
order by p.price DESC;

-- Q5.Show number of orders placed for each product
SELECT p.product_id ,p.product_name,count(o.order_id)
from products p
join orders o
on p.product_id = o.product_id
group by p.product_id
;
-- Q6.Show total revenue earned per product.
SELECT p.product_id ,p.product_name,SUM(p.price * o.quantity)
from products p
join orders o
on p.product_id = o.product_id
group by p.product_id
;

-- Q7.Show products where total order revenue > ₹2000.
SELECT p.product_id ,p.product_name,SUM(p.price * o.quantity) 
from products p
join orders o
on p.product_id = o.product_id
group by p.product_id,p.product_name
having SUM(p.price * o.quantity) > 2000
;
-- pehle table name check
SELECT * FROM products;
Select * from orders;
-- Q8.Show unique customers who ordered ‘Fitness’ products
select DISTINCT(o.customer_name) from orders o
join products p
on p.product_id = o.product_id
where p.category LIKE 'Fitnes%';
