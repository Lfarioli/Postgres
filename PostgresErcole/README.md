# Postgres
 
## Requirements
- The user postgres must be trusted from localhost in the file pg_hba.conf
- The scripts must be run with the OS user postgres

## Memory parameters

Use the get_param.sql query to get all the current database memory parameters.
Below is an example of output::

~~~~
-[ RECORD 1 ]----------------+-----------
work_mem                     | 4096
archive_mode                 | off
archive_path                 | (disabled)
min_wal_size                 | 
max_wal_size                 | 
max_connections              | 100
checkpoint_completion_target | 0.5
default_statistics_target    | 100
random_page_cost             | 4
maintenance_work_mem         | 64
shared_buffers               | 16
effective_cache_size         | 4096
effective_io_concurrency     | 1
max_worker_processes         | 8
max_parallel_workers         | 
~~~~

## Single Database parameters

This query is useful to get a feedback between all the parameters related to the single database and not to the whole instance.
Here is an example:

~~~~
-[ RECORD 1 ]--------+------------
replication          | false
replication_delay    | false
effective_cache_size | 4096
version              | 9.4.24
db_name              | postgres
db_size              | 6836 kB
collation            | it_IT.UTF-8
character_set        | it_IT.UTF-8
-[ RECORD 2 ]--------+------------
replication          | false
replication_delay    | false
effective_cache_size | 4096
version              | 9.4.24
db_name              | template1
db_size              | 6705 kB
collation            | it_IT.UTF-8
character_set        | it_IT.UTF-8
-[ RECORD 3 ]--------+------------
replication          | false
replication_delay    | false
effective_cache_size | 4096
version              | 9.4.24
db_name              | template0
db_size              | 6697 kB
collation            | it_IT.UTF-8
character_set        | it_IT.UTF-8
~~~~

## Version and minor Release

Through this SQL (check_version.sql) script developed in PLPGSQL language we can compare the version of the instance with its release date on the market.

**N.B** The script supports up to version 9.0 of postgreSQL

## Check schemas and relative parameters

With this script ( take_schema.sh) developed we get an output with all the parameters and variables related to the schema, below an example of the result we will get by running the script:
~~~~
Database                      |Schema            |Size                |NTable
ercole1                       |bugs_bunny        |null                |null
ercole1                       |pluto             |null                |null
ercole1                       |topolino          |0                   |1
ercole1                       |pippo             |null                |null
ercole1                       |public            |2957312             |7
postgres                      |public            |40960               |8
postgres_pippo                |public            |null                |null
powa                          |public            |11362304            |36
prova                         |pippo             |8192                |1
prova                         |public            |8192                |1
test                          |public            |7331840             |45
~~~~                                                                        


