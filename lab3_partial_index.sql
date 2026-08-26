-- Lab 3: Partial Index Practice

CREATE INDEX idx_expensive_films
ON film (replacement_cost)
WHERE replacement_cost > 25.00;

SELECT
    indexrelname AS index_name,
    pg_size_pretty(pg_relation_size(indexrelid)) AS index_size
FROM pg_stat_user_indexes
WHERE indexrelname = 'idx_expensive_films';

CREATE INDEX idx_replacement_cost_full
ON film (replacement_cost);

SELECT
    indexrelname AS index_name,
    pg_size_pretty(pg_relation_size(indexrelid)) AS index_size
FROM pg_stat_user_indexes
WHERE indexrelname IN (
    'idx_expensive_films',
    'idx_replacement_cost_full'
);