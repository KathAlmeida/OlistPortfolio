USE ecommerce_analytics

SELECT 
	COUNT(o.order_id) as 'Items vendidos'
FROM order_items oi
INNER JOIN orders o
ON o.order_id = oi.order_id
WHERE o.order_status = 'Delivered'
