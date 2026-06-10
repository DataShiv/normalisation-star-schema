-- Customer table population

INSERT INTO customers (
    customer_id,
    customer_name,
    segment
)
SELECT DISTINCT
    customer_id,
    customer_name,
    segment
FROM stg_superstore;

-- End of customer table population

-- Locations table population

INSERT INTO locations (
    country,
    region,
    state,
    city,
    postal_code
)

SELECT DISTINCT
    country,
    region,
    state,
    city,
    postal_code
FROM stg_superstore;

-- End of locations table population

-- Orders table population

INSERT INTO orders (
    order_id,
    order_date,
    ship_date,
    ship_mode,
    customer_id,
    location_id
)
SELECT DISTINCT
	s.order_id,
	s.order_date,
	s.ship_date,
	s.ship_mode,
	s.customer_id,
	l.location_id
FROM stg_superstore AS s
INNER JOIN locations AS l
	ON s.country = l.country
	AND s.region = l.region
	AND s.state = l.state
	AND s.city = l.city
	AND s.postal_code = l.postal_code;

-- End of orders table population