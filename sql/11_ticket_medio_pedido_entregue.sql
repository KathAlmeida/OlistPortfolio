USE ecommerce_analytics

SELECT 
 SUM(oi.price) as 'Total Faturamento',
 COUNT(DISTINCT o.order_id) as 'Total de Pedidos',
 SUM(oi.price) / COUNT(DISTINCT o.order_id)  as 'Ticket Médio'
FROM orders AS o
LEFT JOIN order_items AS oi
ON	o.order_id = oi.order_id
WHERE o.order_status = 'delivered'


