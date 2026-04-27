use ecommerce_analytics

ALTER TABLE order_items
ALTER COLUMN order_id char(32) NOT NULL;

ALTER TABLE order_items
ALTER COLUMN order_item_id int NOT NULL;

ALTER TABLE order_items
ALTER COLUMN product_id char(32) NOT NULL;

ALTER TABLE order_items
ALTER COLUMN seller_id char(32) NOT NULL;

ALTER TABLE order_items
ALTER COLUMN shipping_limit_date datetime2(0) NOT NULL;

ALTER TABLE order_items
ALTER COLUMN price decimal(10,2) NOT NULL;

ALTER TABLE order_items
ALTER COLUMN freight_value decimal(10,2) NOT NULL;