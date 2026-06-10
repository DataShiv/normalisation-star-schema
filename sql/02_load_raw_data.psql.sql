-- This script must be run with psql, not pgAdmin Query Tool.
--
-- Run from the project root folder:
-- psql -d superstore_modelling -f sql/02_load_raw_data.psql
--
-- Expected CSV location:
-- data/raw/Sample - Superstore.csv
--
-- The file uses LATIN1 encoding. UTF8 import fails with:
-- ERROR: invalid byte sequence for encoding "UTF8": 0xa0

SET client_encoding TO 'LATIN1';

\copy raw_superstore
FROM 'data/raw/Sample - Superstore.csv'
WITH (
    FORMAT csv,
    HEADER true,
    DELIMITER ',',
    QUOTE '"',
    ESCAPE '"'
);

SET client_encoding TO 'UTF8';