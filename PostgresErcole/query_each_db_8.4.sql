WITH db AS ( SELECT 
(SELECT CAST( setting AS INTEGER )*8/1024 AS effective_cache_size FROM   pg_settings WHERE  name = 'effective_cache_size')AS effective_cache_size,
(SELECT setting AS version FROM pg_settings WHERE name = 'server_version')AS version),
db1 AS (SELECT t1.datname AS db_name,pg_size_pretty(pg_database_size(t1.datname)) AS db_size,datcollate AS collation ,datctype AS character_set
FROM   pg_database t1 ORDER BY pg_database_size(t1.datname) DESC)
SELECT db.*,db1.* FROM db,db1;