SELECT 
	COUNT(DISTINCT c.customer_unique_id) as 'Total Clientes Únicos',
	COUNT(o.order_id) AS 'Total de Pedidos',
	CAST(COUNT(o.order_id) * 1.0 / COUNT(DISTINCT c.customer_unique_id) AS DECIMAL(10,2)) AS 'Frequência de Pedidos'
FROM orders AS o
join customers AS c
	ON c.customer_id = o.customer_id
WHERE o.order_status = 'delivered'



