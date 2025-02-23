-- Create Dimension Tables
CREATE TABLE ecommerce_dw.dim_customers (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20),
    address VARCHAR(255),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50),
    zip_code VARCHAR(10),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE ecommerce_dw.dim_products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    brand VARCHAR(50),
    price DECIMAL(10,2),
    stock_quantity INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE ecommerce_dw.dim_date (
    date_id SERIAL PRIMARY KEY,
    date DATE UNIQUE,
    year INT,
    quarter INT,
    month INT,
    day INT,
    weekday VARCHAR(10)
);

CREATE TABLE ecommerce_dw.dim_shipping (
    shipping_id SERIAL PRIMARY KEY,
    shipping_method VARCHAR(50),
    shipping_cost DECIMAL(10,2),
    estimated_delivery_days INT,
    carrier VARCHAR(50)
);

CREATE TABLE ecommerce_dw.dim_payment (
    payment_id SERIAL PRIMARY KEY,
    payment_type VARCHAR(50),
    provider VARCHAR(50),
    transaction_fees DECIMAL(10,2)
);

-- Create Fact Table
CREATE TABLE ecommerce_dw.fact_sales (
    sale_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES ecommerce_dw.dim_customers(customer_id),
    product_id INT REFERENCES ecommerce_dw.dim_products(product_id),
    date_id INT REFERENCES ecommerce_dw.dim_date(date_id),
    shipping_id INT REFERENCES ecommerce_dw.dim_shipping(shipping_id),
    payment_id INT REFERENCES ecommerce_dw.dim_payment(payment_id),
    quantity_sold INT,
    total_sales DECIMAL(10,2),
    discount DECIMAL(10,2),
    profit DECIMAL(10,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);