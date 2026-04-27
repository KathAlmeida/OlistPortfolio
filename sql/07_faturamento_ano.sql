USE ecommerce_analytics

SELECT 
	YEAR(order_purchase_timestamp) as 'Ano',
	FORMAT(SUM(oi.price), 'C', 'pt-BR') as 'Faturamento Total'
FROM orders as o
JOIN order_items as oi
	on o.order_id = oi.order_id
WHERE o.order_status = 'Delivered'

GROUP BY
	YEAR(order_purchase_timestamp)
	

	