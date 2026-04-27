SELECT 
count(distinct customer_unique_id)
FROM customers c
INNER JOIN orders o
ON o.customer_id = c.customer_id
WHERE o.order_status = 'Delivered'
