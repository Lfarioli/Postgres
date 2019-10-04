#!bin/bash

DATABASE_LIST=$(psql -tl | grep -v "^  " |awk '{print $1}' |grep -v "^$" | egrep -vw "template0|template1" )

echo "Database Schema Size NTable"	> report.txt
	

for DB in $DATABASE_LIST; do


	SCHEMA=$(psql -t $DB -c "SELECT schema_name FROM information_schema.schemata;")

		
		for SH in $SCHEMA; do

			if [ "$SH" != "pg_catalog" ] && [ "$SH" != "pg_toast_temp_1" ] &&  [ "$SH" != "pg_temp_1" ] &&  [ "$SH" != "pg_toast" ] &&  [ "$SH" != "information_schema" ]; then


			SIZE=$(psql -t $DB -c "SELECT SUM(pg_total_relation_size(quote_ident(schemaname) || '.' || quote_ident(tablename)))::BIGINT FROM pg_tables WHERE schemaname ='$SH';" | head -n 1)	

			NUMTABLE=$(psql -t $DB -c "select count(*) from information_schema.tables where table_schema ='$SH';")

			
			if  [ "$SIZE" == '    ' ]; then

				SIZE='null'
			fi


			if  [ $NUMTABLE -eq 0 ]; then

				NUMTABLE='null'
			fi

			echo "$DB $SH $SIZE $NUMTABLE " >> report.txt



			fi
		
		done	


done


awk '{printf "%-30s|%-18s|%-20s|%-20s\n",$1,$2,$3,$4}' report.txt > final_report.txt
