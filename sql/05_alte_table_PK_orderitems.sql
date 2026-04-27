use ecommerce_analytics

ALTER TABLE order_items
ADD CONSTRAINT PK_order_items
PRIMARY KEY (order_id, order_item_id);