#!bin/bash

DATABASE_LIST=$(psql -tl | grep -v "^  " |awk '{print $1}' |grep -v "^$" | egrep -vw "template0|template1" )


for DB in $DATABASE_LIST; do


	SCHEMA=$(psql -t $DB -c "SELECT schema_name FROM information_schema.schemata;")

	echo " Database  $DB" 			

		
		for SH in $SCHEMA; do

			if [ "$SH" != "pg_catalog" ] && [ "$SH" != "pg_toast_temp_1" ] &&  [ "$SH" != "pg_temp_1" ] &&  [ "$SH" != "pg_toast" ] &&  [ "$SH" != "information_schema" ]; then

			

			SIZE=$(psql -t $DB -c "SELECT SUM(pg_total_relation_size(quote_ident(schemaname) || '.' || quote_ident(tablename)))::BIGINT FROM pg_tables WHERE schemaname ='$SH';")	

			NUMTABLE=$(psql -t $DB -c "select count(*) from information_schema.tables where table_schema ='$SH';")

			echo " schema: $SH size: $SIZE table: $NUMTABLE "


			fi
		
		done	


done

