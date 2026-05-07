USE ecommerce_analytics;

WITH TipoDoCliente AS (
	SELECT 
		CASE
			WHEN COUNT(o.order_id) = 1 THEN 'Único'
			ELSE 'Recorrente'
		END as 'Tipo Cliente',
		C.customer_unique_id,
		COUNT(o.order_id) as 'Total Pedidos'
	
	FROM orders o
	INNER JOIN customers c
	on c.customer_id = o.customer_id
	WHERE o.order_status = 'Delivered'
	GROUP BY C.customer_unique_id
)
	SELECT
	 tc.[Tipo Cliente],
	 SUM(oi.price) AS 'Faturamento Total',
	 SUM(oi.price) * 100 / SUM(SUM(oi.price)) OVER () AS percentual 
	FROM TipoDoCliente tc
	INNER JOIN customers c
	ON  c.customer_unique_id = tc.customer_unique_id
	INNER JOIN orders o
	ON o.customer_id = c.customer_id
	INNER JOIN order_items oi
	ON oi.order_id = o.order_id
	WHERE o.order_status = 'Delivered'
	GROUP BY tc.[Tipo Cliente]