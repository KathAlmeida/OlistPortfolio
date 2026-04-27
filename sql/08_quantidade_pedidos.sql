USE ecommerce_analytics

SELECT 
	COUNT(order_id) as 'Quantidade de Pedidos'
FROM orders
WHERE orders.order_status = 'delivered'