-- Lab 2: The Impact of a New Index

SELECT
    pg_size_pretty(pg_indexes_size('payment')) AS index_size_before;

CREATE INDEX idx_payment_date_long
ON payment (payment_date, amount, customer_id);

SELECT
    pg_size_pretty(pg_indexes_size('payment')) AS index_size_after;

SELECT
    pg_size_pretty(pg_relation_size('idx_payment_date_long')) AS new_index_size,
    pg_relation_size('idx_payment_date_long') / 8192 AS pages;