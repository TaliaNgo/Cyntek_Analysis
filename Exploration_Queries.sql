-- 1) Dates of the earliest and latest orders
SELECT MIN(purchase_ts) AS earliest_order
      ,MAX(purchase_ts) AS latest_order
FROM `core.orders`;

-- 2) Average order value (AOV) for purchases made in USD
SELECT AVG(usd_price) AS aov
FROM `core.orders`
WHERE currency = 'USD';
-- 2) AOV for purchases made in USD in 2019
SELECT AVG(usd_price) AS aov
FROM `core.orders`
WHERE currency = 'USD'
AND purchase_ts BETWEEN '2019-01-01' AND '2019-12-31';

-- 3) Customer ID, loyalty program status, and account creation date for customers who made an account on desktop or mobile.
SELECT id AS customer_id
      ,loyalty_program AS loyalty_program_status
      ,created_on AS account_creation_date
FROM `core.customers`
WHERE account_creation_method IN ('mobile', 'desktop');

-- 4) Products that were sold in AUD on the website, sorted alphabetically
SELECT DISTINCT product_name
FROM `core.orders`
WHERE currency = 'AUD'
AND purchase_platform = 'website'
ORDER BY product_name;

-- 5) Total number of orders by shipping month, sorted from most recent to oldest
SELECT EXTRACT(MONTH FROM ship_ts) AS month
      ,COUNT(DISTINCT order_id) AS total_orders
FROM `core.order_status`
GROUP BY 1
ORDER BY 1 DESC;

-- 6) AOV by year
SELECT EXTRACT(YEAR FROM purchase_ts) AS year
      ,ROUND(AVG(usd_price),2) AS aov
FROM `core.orders`
GROUP BY 1
ORDER BY 1;

-- 7) Product IDs and product names of all Apple products.
SELECT DISTINCT product_id
      ,product_name
FROM `core.orders`
WHERE product_name LIKE '%Apple%'
AND product_name LIKE '%Macbook%';

-- 8) The refund rate per year, expressed as a percent, rounded to 2 decimal points
SELECT EXTRACT(YEAR FROM refund_ts) AS year
      ,ROUND(AVG(CASE WHEN refund_ts IS NOT NULL THEN 1 ELSE 0 END)*100,2) AS refund_rate
FROM `core.order_status`
GROUP BY 1;

-- 9) The total number of orders per year for each product
SELECT EXTRACT(YEAR FROM purchase_ts) AS year
      ,product_name
      ,COUNT(DISTINCT id) AS total_orders
FROM `core.orders`
GROUP BY 1, 2
ORDER BY 1;

-- 10) What is the average order value per year for products that are either laptops or headphones? Round this to 2 decimals.
SELECT EXTRACT(YEAR FROM purchase_ts) AS year
      ,ROUND(AVG(usd_price),2) AS aov
FROM `core.orders`
WHERE LOWER(product_name) LIKE ANY ('%laptop%', '%headphones%')
GROUP BY 1
ORDER BY 1;