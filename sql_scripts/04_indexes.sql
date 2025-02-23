-- Indexing for Performance Optimization
CREATE INDEX idx_sales_customer ON ecommerce_dw.fact_sales (customer_id);
CREATE INDEX idx_sales_product ON ecommerce_dw.fact_sales (product_id);
CREATE INDEX idx_sales_date ON ecommerce_dw.fact_sales (date_id);
CREATE INDEX idx_sales_shipping ON ecommerce_dw.fact_sales (shipping_id);
CREATE INDEX idx_sales_payment ON ecommerce_dw.fact_sales (payment_id);