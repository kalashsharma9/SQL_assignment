create database zepto_db;

use zepto_db;


select * from zepto_sales;

select order_id, order_date, customer_id, product_name, total_amount
from zepto_sales order by order_date, order_id limit 8;

select order_id, product_name, order_status
from zepto_sales where order_status = 'Delivered' limit 15;


select order_status, city, order_id, total_amount from zepto_sales where order_status = 'Delivered' and city = 'Bengaluru' and total_amount > 500
order by total_amount limit 20;


select quantity, price, total_amount, product_name, city from zepto_sales
where total_amount between 300 and 700 and city = 'Delhi';


select distinct payment_method, order_status 
from zepto_sales;

select payment_method, city, total_amount from zepto_sales where payment_method not in ('UPI', 'CARD');

select distinct delivery_type from zepto_sales;

select sum(total_amount) from zepto_sales
where payment_method = 'UPI';

select city, sum(total_amount) as revenue from zepto_sales group by city
having revenue > 50000 ; 

SELECT order_id, order_date, total_amount
FROM zepto_sales
WHERE order_date BETWEEN '2025-01-01' AND '2025-03-31'
ORDER BY order_date
LIMIT 100;


SELECT order_id, payment_method, total_amount
FROM zepto_sales
WHERE payment_method IN ('UPI','Card')
ORDER BY order_date DESC
LIMIT 50;


SELECT order_id, city, total_amount
FROM zepto_sales
WHERE city IS NOT NULL
AND city NOT IN ('Delhi','Mumbai','Bengaluru')
LIMIT 50;


SELECT DISTINCT payment_method
FROM zepto_sales;


SELECT DISTINCT city, payment_method
FROM zepto_sales
WHERE city IS NOT NULL
ORDER BY city, payment_method
LIMIT 200;


SELECT DISTINCT product_name, category
FROM zepto_sales
WHERE product_name LIKE '%Rice%';


SELECT DISTINCT product_name
FROM zepto_sales
WHERE product_name LIKE 'Frozen%';


SELECT order_id, order_date, city, pincode
FROM zepto_sales
WHERE city IS NULL
LIMIT 20;


SELECT order_id, coupon_code, rating
FROM zepto_sales
WHERE coupon_code IS NOT NULL
AND rating IS NULL
LIMIT 50;


SELECT order_id, price, quantity, (price * quantity) AS gross_amount
FROM zepto_sales
LIMIT 20;


SELECT order_id, price, quantity, (price * quantity) AS gross_amount
FROM zepto_sales
WHERE (price * quantity) > 1000
ORDER BY gross_amount DESC
LIMIT 50;


SELECT order_id, order_date, customer_id, total_amount
FROM zepto_sales
ORDER BY total_amount DESC
LIMIT 10;


SELECT order_id, order_date, customer_id, total_amount
FROM zepto_sales
ORDER BY order_date ASC
LIMIT 10 OFFSET 20;


SELECT order_id, product_name, category, total_amount
FROM zepto_sales
WHERE category IN ('Dairy','Bakery')
AND (product_name LIKE '%Butter%' OR product_name LIKE '%Bread%')
LIMIT 50;


SELECT order_id, order_date, delivery_type, payment_method, total_amount
FROM zepto_sales
WHERE order_status = 'Delivered'
AND delivery_type = 'Express'
AND payment_method = 'Wallet'
AND total_amount > 500
LIMIT 50;


SELECT order_id, order_date, product_name, quantity, total_amount
FROM zepto_sales
WHERE category = 'Dairy'
AND order_status = 'Delivered'
AND order_date BETWEEN '2025-06-01' AND '2025-08-31'
AND payment_method IN ('Card','UPI')
ORDER BY order_date
LIMIT 200;


SELECT DISTINCT city FROM zepto_sales WHERE city IS NOT NULL ORDER BY city;


SELECT order_id, order_date, city, total_amount, order_status
FROM zepto_sales
WHERE order_status = 'Cancelled'
ORDER BY order_date DESC
LIMIT 10;