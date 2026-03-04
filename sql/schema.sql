-- DDL: Trying constraints

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name TEXT NOT NULL,
    city TEXT NOT NULL,
    email TEXT UNIQUE
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name TEXT NOT NULL,
    price NUMERIC NOT NULL CHECK (price > 0)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    status TEXT DEFAULT 'NEW',
    FOREIGN KEY (customer_id) 
        REFERENCES customers(customer_id)
        ON DELETE CASCADE
);

CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL CHECK (quantity > 0),
    FOREIGN KEY (order_id) 
        REFERENCES orders(order_id)
        ON DELETE CASCADE,
    FOREIGN KEY (product_id) 
        REFERENCES products(product_id)
);
-- Indexes for performance

CREATE INDEX idx_orders_customer_id 
ON orders(customer_id);

CREATE INDEX idx_order_items_product_id 
ON order_items(product_id);
