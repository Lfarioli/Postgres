#!bin/bash

DATABASE_LIST=$(psql -tl | grep -v "^  " |awk '{print $1}' |grep -v "^$" | egrep -vw "template0|template1" )
P=0

for DB in $DATABASE_LIST; do

echo " Database  $DB" 

SCHEMA=$(psql -t $DB -c "SELECT schema_name FROM information_schema.schemata;")


		for SH in $SCHEMA; do

		SIZE=$(psql -t -c "SELECT SUM(pg_total_relation_size(quote_ident(schemaname) || '.' || quote_ident(tablename)))::BIGINT FROM pg_tables WHERE schemaname = '$SH';")	

		echo "$SH -- $SIZE"

		done	


done
