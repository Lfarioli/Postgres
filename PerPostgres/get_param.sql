WITH db AS ( SELECT 
(SELECT setting AS work_mem FROM   pg_settings WHERE  name = 'work_mem'),
(SELECT setting AS archive_mode FROM   pg_settings WHERE  name = 'archive_mode'),
(SELECT setting AS archive_path FROM   pg_settings WHERE  name = 'archive_command'),
(SELECT setting AS min_wal_size FROM   pg_settings WHERE  name = 'min_wal_size'),
(SELECT setting AS max_wal_size FROM   pg_settings WHERE  name = 'max_wal_size'),
(SELECT setting AS max_connections FROM   pg_settings WHERE  name = 'max_connections'),
(SELECT setting AS checkpoint_completion_target  FROM   pg_settings WHERE  name = 'checkpoint_completion_target'),
(SELECT setting AS default_statistics_target  FROM   pg_settings WHERE  name = 'default_statistics_target'),
(SELECT setting AS random_page_cost  FROM   pg_settings WHERE  name = 'random_page_cost'),
(SELECT CAST( setting AS INTEGER )/1024 AS maintenance_work_mem FROM   pg_settings WHERE  name = 'maintenance_work_mem'),
(SELECT CAST( setting AS INTEGER )/1024 AS shared_buffers FROM   pg_settings WHERE  name = 'shared_buffers'),
(SELECT CAST( setting AS INTEGER )*8/1024 AS effective_cache_size from pg_settings WHERE name = 'effective_cache_size'),
(SELECT setting AS effective_io_concurrency FROM   pg_settings WHERE  name = 'effective_io_concurrency'),
(SELECT setting AS max_worker_processes  FROM   pg_settings WHERE  name = 'max_worker_processes'),
(SELECT setting AS max_parallel_workers  FROM   pg_settings WHERE  name = 'max_parallel_workers'))
SELECT db.* FROM db;


