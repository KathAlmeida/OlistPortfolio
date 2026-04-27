USE ecommerce_analytics

SELECT
	COUNT(*)
FROM (
	SELECT 
		count(o.order_id) as 'pedidos',
		count( distinct c.customer_unique_id) as 'clientes'
	FROM orders as o
	JOIN customers as c
		on c.customer_id = o.customer_id
	where o.order_status = 'delivered'
	group by c.customer_unique_id
	having count(o.order_id) > 1
) AS clientes_recorrentes
