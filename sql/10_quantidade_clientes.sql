USE ecommerce_analytics

SELECT 
	COUNT(DISTINCT customer_unique_id) as 'Quantidade de Clientes'
FROM customers

