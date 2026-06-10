DROP TABLE IF EXISTS raw_superstore;

CREATE TABLE raw_superstore (
    row_id INT,
    order_id TEXT,
    order_date DATE,
    ship_date DATE,
    ship_mode TEXT,
    customer_id TEXT,
    customer_name TEXT,
    segment TEXT,
    country TEXT,
    city TEXT,
    state TEXT,
    postal_code TEXT,
    region TEXT,
    product_id TEXT,
    category TEXT,
    sub_category TEXT,
    product_name TEXT,
    sales NUMERIC(10, 4),
    quantity INT,
    discount NUMERIC(5, 4),
    profit NUMERIC(10, 4)
);