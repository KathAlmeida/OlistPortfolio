USE ecommerce_analytics;

WITH tipo_clientes AS (
	SELECT 
		c.customer_unique_id as 'clientes',
		COUNT(DISTINCT o.order_id) as 'total de pedidos',
		c.customer_id
	FROM orders as o
	JOIN customers as c
		on c.customer_id = o.customer_id
	where o.order_status = 'delivered'
	group by c.customer_unique_id
	
)
select * from tipo_clientes