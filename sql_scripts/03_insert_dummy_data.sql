-- Generate Dummy Data
INSERT INTO ecommerce_dw.dim_customers (first_name, last_name, email, phone, address, city, state, country, zip_code) VALUES
('John', 'Doe', 'johndoe@example.com', '123-456-7890', '123 Elm Street', 'New York', 'NY', 'USA', '10001'),
('Jane', 'Smith', 'janesmith@example.com', '987-654-3210', '456 Oak Avenue', 'San Francisco', 'CA', 'USA', '94107');

INSERT INTO ecommerce_dw.dim_products (product_name, category, brand, price, stock_quantity) VALUES
('Laptop', 'Electronics', 'Dell', 899.99, 50),
('Smartphone', 'Electronics', 'Apple', 999.99, 30);

INSERT INTO ecommerce_dw.dim_date (date, year, quarter, month, day, weekday) VALUES
('2024-02-20', 2024, 1, 2, 20, 'Tuesday'),
('2024-02-21', 2024, 1, 2, 21, 'Wednesday');

INSERT INTO ecommerce_dw.dim_shipping (shipping_method, shipping_cost, estimated_delivery_days, carrier) VALUES
('Standard', 5.99, 5, 'UPS'),
('Express', 15.99, 2, 'FedEx');

INSERT INTO ecommerce_dw.dim_payment (payment_type, provider, transaction_fees) VALUES
('Credit Card', 'Visa', 1.50),
('PayPal', 'PayPal', 2.00);

INSERT INTO ecommerce_dw.fact_sales (customer_id, product_id, date_id, shipping_id, payment_id, quantity_sold, total_sales, discount, profit) VALUES
(1, 1, 1, 1, 1, 2, 1799.98, 100.00, 500.00),
(2, 2, 2, 2, 2, 1, 999.99, 50.00, 400.00);