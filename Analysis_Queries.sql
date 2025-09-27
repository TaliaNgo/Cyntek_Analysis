-- 1) The order counts, sales, and AOV for Macbooks sold in North America for each quarter across all years
SELECT DATE_TRUNC(o.purchase_ts, quarter) AS quarter
      ,COUNT(DISTINCT o.id) AS order_count
      ,ROUND(SUM(o.usd_price),2) AS sales
      ,ROUND(AVG(o.usd_price),2) AS aov
FROM `core.orders` o
LEFT JOIN `core.customers` c ON o.customer_id = c.id
LEFT JOIN `core.geo_lookup` g ON c.country_code = g.country
WHERE o.product_name LIKE '%Macbook%'
AND g.region = 'NA'
GROUP BY 1
ORDER BY 1;

-- 2) Average highest time to deliver for products purchased in 2022 on the website or on mobile in any year, group by region
SELECT g.region
      ,ROUND(AVG(DATE_DIFF(os.delivery_ts, os.purchase_ts, DAY)),2) AS avg_delivery_time
FROM `core.orders` o
LEFT JOIN `core.order_status` os ON o.id = os.order_id
LEFT JOIN `core.customers` c ON o.customer_id = c.id
LEFT JOIN `core.geo_lookup` g ON c.country_code = g.country
WHERE o.purchase_platform IN ('mobile', 'website')
AND EXTRACT(YEAR FROM o.purchase_ts) = 2022
GROUP BY 1
ORDER BY 2 DESC;

-- 3) Refund rate and refund count for each product
SELECT CASE WHEN o.product_name = '27in"" 4k gaming monitor' THEN '27in 4k gaming monitor'
      ELSE o.product_name END AS product
      ,AVG(CASE WHEN os.refund_ts IS NOT NULL THEN 1 ELSE 0 END) AS refund_rate
      ,SUM(CASE WHEN os.refund_ts IS NOT NULL THEN 1 ELSE 0 END) AS refund_count
FROM `core.order_status` os
LEFT JOIN `core.orders` o ON o.id = os.order_id
GROUP BY 1
ORDER BY 2 DESC;

SELECT EXTRACT(YEAR FROM os.purchase_ts)
      ,CASE WHEN o.product_name = '27in"" 4k gaming monitor' THEN '27in 4k gaming monitor'
      ELSE o.product_name END AS product
      ,AVG(CASE WHEN os.refund_ts IS NOT NULL THEN 1 ELSE 0 END) AS refund_rate
      ,SUM(CASE WHEN os.refund_ts IS NOT NULL THEN 1 ELSE 0 END) AS refund_count
FROM `core.order_status` os
LEFT JOIN `core.orders` o ON o.id = os.order_id
GROUP BY 1,2
ORDER BY 1, 2 DESC;

-- 4) Most popular product for each region
WITH region_popularity AS (
  SELECT g.region
        ,CASE WHEN o.product_name = '27in"" 4k gaming monitor' THEN '27in 4k gaming monitor'
        ELSE o.product_name END AS product
        ,COUNT(o.id) AS order_count
        ,ROW_NUMBER() OVER(PARTITION BY g.region ORDER BY COUNT(o.id) DESC) AS popularity
FROM `core.orders` o
LEFT JOIN `core.customers` c ON o.customer_id = c.id
LEFT JOIN `core.geo_lookup` g ON c.country_code = g.country
GROUP BY 1,2)

SELECT *
FROM region_popularity
WHERE popularity = 1;

-- 5) Difference in the time from when the customer create an account to when they purchase between loyalty customers vs. non-loyalty customers
SELECT c.loyalty_program
      ,o.purchase_platform
      ,ROUND(AVG(DATE_DIFF(o.purchase_ts, c.created_on, DAY)),1) AS day_to_purchase
      ,ROUND(AVG(DATE_DIFF(o.purchase_ts, c.created_on, MONTH)),1) AS month_to_purchase
FROM `core.customers` c
LEFT JOIN `core.orders` o ON c.id = o.customer_id
GROUP BY 1,2
ORDER BY 1;