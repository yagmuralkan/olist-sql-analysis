-- Dataset overview

SELECT COUNT(*) AS total_customers
FROM customers;

SELECT COUNT(*) AS total_orders
FROM orders;

SELECT COUNT(*) AS total_products
FROM products;

SELECT COUNT(*) AS total_order_items
FROM order_items;


-- Customer locations

SELECT DISTINCT customer_state
FROM customers;

SELECT DISTINCT customer_city
FROM customers;


-- Product categories

SELECT DISTINCT product_category_name
FROM products;


-- Order status overview

SELECT
    order_status,
    COUNT(*) AS total_orders
FROM orders
GROUP BY order_status
ORDER BY total_orders DESC;

-- customer numbers per cities

SELECT 
customer_city, 
COUNT(distinct customer_id) as total_customers
from customers 
group by customer_city 
order by total_customers DESC;
