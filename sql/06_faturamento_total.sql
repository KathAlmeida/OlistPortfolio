USE ecommerce_analytics

SELECT 
	FORMAT(SUM(price), 'C', 'pt-BR') as 'Faturamento Total'
FROM order_items oi
INNER JOIN orders o
ON o.order_id = oi.order_id
WHERE o.order_status = 'Delivered'

	

	