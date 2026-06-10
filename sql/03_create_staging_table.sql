DROP TABLE IF EXISTS stg_superstore;

CREATE TABLE stg_superstore AS
SELECT
    row_id::INT AS row_id,
    order_id,
    TO_DATE(order_date, 'MM/DD/YYYY') AS order_date,
    TO_DATE(ship_date, 'MM/DD/YYYY') AS ship_date,
    ship_mode,
    customer_id,
    customer_name,
    segment,
    country,
    city,
    state,
    postal_code,
    region,
    product_id,
    category,
    sub_category,
    product_name,
    sales::NUMERIC(10, 4) AS sales,
    quantity::INT AS quantity,
    discount::NUMERIC(5, 4) AS discount,
    profit::NUMERIC(10, 4) AS profit
FROM raw_superstore;
