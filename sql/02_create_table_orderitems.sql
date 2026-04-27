USE ecommerce_analytics

CREATE TABLE order_items
(
	order_id char(32) NOT NULL,
	order_item_id int NOT NULL,
	product_id char(32) NOT NULL,
	seller_id char(32) NOT NULL,
	shipping_limit_date datetime2(0) NOT NULL,
	price decimal(10,2) NOT NULL,
	freight_value decimal(10,2) NOT NULL,
)