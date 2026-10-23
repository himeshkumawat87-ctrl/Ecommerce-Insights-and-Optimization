CREATE DATABASE ecommerce_project;
USE ecommerce_project;
USE ecommerce_project;
SHOW TABLES;
SELECT *
FROM order_items
LIMIT 10;
SELECT * 
FROM `products (1)` LIMIT 10;
DESCRIBE `products (1)`;
DESCRIBE order_items;
SELECT
    product_category_name,
    SUM(price) AS total_price
FROM order_items
GROUP BY product_category_name
ORDER BY total_price DESC;
SELECT
    product_category_name,
    SUM(price) AS total_price
FROM order_items
GROUP BY product_category_name
ORDER BY total_price DESC;
SELECT
    product_category_name,
    SUM(freight_value) AS total_shipping,
    AVG(freight_value) AS average_shipping
FROM order_items
GROUP BY product_category_name
ORDER BY total_shipping DESC;
SELECT
    product_category_name,
    AVG(freight_value) AS average_shipping,
    AVG(price) AS average_price
FROM order_items
GROUP BY product_category_name
ORDER BY average_shipping DESC
LIMIT 10;
SELECT
    product_category_name,
    SUM(price) AS total_sales
FROM order_items
GROUP BY product_category_name
ORDER BY total_sales DESC
LIMIT 20;
SELECT
	product_id,
    SUM(o.price) AS total_sales
FROM `products (1)` p
INNER JOIN order_items o
    ON product_id = o.product_id
GROUP BY p.product_id
ORDER BY total_sales DESC
LIMIT 20;
DESCRIBE `products (1)`;
SELECT product_id
FROM `products (1)`
LIMIT 5;
DESCRIBE order_items;
SELECT
    product_id,
    SUM(price) AS total_sales
FROM order_items
GROUP BY product_id
ORDER BY total_sales DESC
LIMIT 20;
SELECT
    product_category_name,
    ROUND(SUM(price), 2) AS total_sales,
    ROUND(SUM(freight_value), 2) AS total_shipping,
    ROUND(
        SUM(freight_value) * 100.0 / NULLIF(SUM(price), 0),
        2
    ) AS shipping_percentage
FROM order_items
GROUP BY product_category_name
ORDER BY shipping_percentage DESC
LIMIT 10;
SELECT
    product_category_name,
    ROUND(SUM(price), 2) AS total_sales,
    ROUND(SUM(freight_value), 2) AS total_shipping,
    ROUND(
        SUM(freight_value) * 100.0 / NULLIF(SUM(price), 0),
        2
    ) AS shipping_percentage
FROM order_items
GROUP BY product_category_name
ORDER BY shipping_percentage DESC
LIMIT 10;
SELECT
    product_id,
    price,
    CASE
        WHEN price >= 1000 THEN 'High Price'
        ELSE 'Low Price'
    END AS price_category
FROM order_items
LIMIT 20;
SELECT *
FROM order_items
WHERE price > 1000
LIMIT 20;
SELECT
    COUNT(*) AS total_records,
    COUNT(DISTINCT order_id) AS total_orders,
    MIN(price) AS minimum_price,
    MAX(price) AS maximum_price,
    AVG(price) AS average_price
FROM order_items;
SELECT
    COUNT(*) AS total_records,
    SUM(product_id IS NULL) AS missing_product_ids,
    SUM(price IS NULL) AS missing_prices,
    SUM(freight_value IS NULL) AS missing_shipping,
    SUM(product_category_name IS NULL) AS missing_categories
FROM order_items;
SELECT
    COUNT(*) AS total_records,
    SUM(product_id IS NULL) AS missing_product_ids,
    SUM(product_category_name IS NULL) AS missing_categories,
    SUM(product_weight_g IS NULL) AS missing_weight,
    SUM(product_length_cm IS NULL) AS missing_length,
    SUM(product_height_cm IS NULL) AS missing_height,
    SUM(product_width_cm IS NULL) AS missing_width
FROM `products (1)`;
DESCRIBE `products (1)`;
SELECT * FROM `products (1)` LIMIT 5;
SHOW COLUMNS FROM `products (1)`;
SELECT
COUNT(*) AS total_records,
SUM(`ï»¿product_id` IS NULL) AS missing_product_ids,
SUM(product_category_name IS NULL) AS missing_categories,
SUM(product_weight_g IS NULL) AS missing_weight,
SUM(product_length_cm IS NULL) AS missing_length,
SUM(product_height_cm IS NULL) AS missing_height,
SUM(product_width_cm IS NULL) AS missing_width
FROM `products (1)`;
