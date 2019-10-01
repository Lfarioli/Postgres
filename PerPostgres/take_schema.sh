#!bin/bash

DATABASE_LIST=$(psql -tl | grep -v "^  " |awk '{print $1}' |grep -v "^$" | egrep -vw "template0|template1" )
P=0

for DB in $DATABASE_LIST; do

echo $DB 

	SCHEMA=$(psql -t $DB -c "SELECT schema_name FROM information_schema.schemata;")

echo $SCHEMA


done
