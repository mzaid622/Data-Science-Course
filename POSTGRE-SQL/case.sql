select * from product;
select UPPER(name) from product;
select lower(name) from product;
select length(sku_code) from product;

select name,substrsku_code from product;


select name,price,
case 
when price > 1000 Then 'Expensive'
when price between 500 and 1000 Then 'Moderate'
else 'Cheap'
end as price_range
from product;

ALTER TABLE product
ADD column price_tag text;

UPDATE product
SET price_tag =
case
when price > 1000 Then 'Expensive'
when price between 500 and 1000 Then 'Moderate'
else 'Cheap'
end;

select is_avaiable,
case
when is_avaiable then 'stock'
else 'out of stock'
end as product_stock
from product;

select name,stock_quantity,
case 
when stock_quantity > 100 then 'High Stock'
when stock_quantity between 50 and 100 then 'Medium Stock'
else 'Low Stock'
end as stock
from product;

--

