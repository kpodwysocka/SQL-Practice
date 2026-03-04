-- DML: small data sample

INSERT INTO customers VALUES (1, 'Anna', 'Warsaw');
INSERT INTO customers VALUES (2, 'Tom', 'Berlin');

INSERT INTO products VALUES (1, 'Laptop', 1200);
INSERT INTO products VALUES (2, 'Mouse', 25);

INSERT INTO orders VALUES (1, 1, '2024-01-10');
INSERT INTO orders VALUES (2, 2, '2024-01-11');

INSERT INTO order_items VALUES (1, 1, 1, 1);
INSERT INTO order_items VALUES (2, 1, 2, 2);
INSERT INTO order_items VALUES (3, 2, 2, 1);
