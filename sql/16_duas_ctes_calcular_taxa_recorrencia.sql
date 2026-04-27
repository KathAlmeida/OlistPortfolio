USE ecommerce_analytics;
-- DESCOBRINDO QUANTOS CLIENTES RECORRENTES TEMOS
WITH clientes_recorrentes AS (
	SELECT 
		c.customer_unique_id as 'clientes'
	FROM orders as o
	JOIN customers as c
		on c.customer_id = o.customer_id
	where o.order_status = 'delivered'
	group by c.customer_unique_id
	having count(o.order_id) > 1
),
clientes_totais AS (
	SELECT 
		COUNT(DISTINCT customer_unique_id) as 'total_clientes'
	FROM orders as o
	JOIN customers as c
		on c.customer_id = o.customer_id
	where o.order_status = 'delivered'
)
	SELECT 
		COUNT(clientes) AS 'QTD_RECORRENTES',
		total_clientes,
		COUNT(clientes) * 1.0 / total_clientes * 100 as 'TAXA_RECORRENCIA'

	FROM clientes_totais 
	CROSS JOIN clientes_recorrentes 
	GROUP BY
	total_clientes
