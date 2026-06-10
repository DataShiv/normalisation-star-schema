DROP TABLE IF EXISTS order_items;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS sub_categories;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS locations;

CREATE TABLE customers (
    customer_id TEXT PRIMARY KEY,
    customer_name TEXT NOT NULL,
    segment TEXT
);

CREATE TABLE locations (
    location_id SERIAL PRIMARY KEY,
    country TEXT,
    region TEXT,
    state TEXT,
    city TEXT,
    postal_code TEXT
);

CREATE TABLE categories (
    category_id SERIAL PRIMARY KEY,
    category_name TEXT UNIQUE NOT NULL
);

CREATE TABLE sub_categories (
    sub_category_id SERIAL PRIMARY KEY,
    sub_category_name TEXT NOT NULL,
    category_id INT NOT NULL REFERENCES categories(category_id),
    UNIQUE (sub_category_name, category_id)
);

CREATE TABLE products (
    product_id TEXT PRIMARY KEY,
    product_name TEXT NOT NULL,
    sub_category_id INT NOT NULL REFERENCES sub_categories(sub_category_id)
);

CREATE TABLE orders (
    order_id TEXT PRIMARY KEY,
    order_date DATE NOT NULL,
    ship_date DATE,
    ship_mode TEXT,
    customer_id TEXT NOT NULL REFERENCES customers(customer_id),
    location_id INT NOT NULL REFERENCES locations(location_id)
);

CREATE TABLE order_items (
    row_id INT PRIMARY KEY,
    order_id TEXT NOT NULL REFERENCES orders(order_id),
    product_id TEXT NOT NULL REFERENCES products(product_id),
    sales NUMERIC(10, 4),
    quantity INT,
    discount NUMERIC(5, 4),
    profit NUMERIC(10, 4)
);