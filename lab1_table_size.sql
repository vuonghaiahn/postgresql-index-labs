-- Lab 1: Check table vs index size

SELECT
    relname AS object_name,
    pg_size_pretty(pg_table_size(fed.oid)) AS data_size,
    pg_size_pretty(pg_indexes_size(fed.oid)) AS index_size,
    pg_size_pretty(pg_total_relation_size(fed.oid)) AS total_size
FROM pg_class fed
JOIN pg_namespace n
    ON n.oid = fed.relnamespace
WHERE fed.relkind = 'r'
    AND n.nspname = 'public'
ORDER BY pg_total_relation_size(fed.oid) DESC;