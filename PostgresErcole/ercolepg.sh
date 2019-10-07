#!bin/bash

PSU1='/tmp/check_version.sql'
PSU2='/tmp/check_version_8.4.sql'
MPARAM='/tmp/get_param.sql'
DBPARAM1='/tmp/query_each_db.sql'
DBPARAM2='/tmp/query_each_db_8.4.sql'
SCHEMAPARAM='/tmp/take_schema.sh'
OUTPUTFILE='/tmp/final.final'
VERSION=$(psql -V |grep psql |awk '{print $3}'|cut -c1-1)

get_version () {
	
	

	if [ "$VERSION" == "8" ]; then
		
		$(psql -c "create language plpgsql;")
		
		VERSION8=$(psql -At <$PSU2 |grep 2 )	

		echo "$VERSION8" >> $OUTPUTFILE

	else 

		VERSIONMORE=$(psql -At <$PSU1 |grep NOT)

		echo "$VERSIONMORE" >> $OUTPUTFILE

	fi


}




memory_parameter () {
	
	

	MEMP=$(psql -tx  <$MPARAM) 

	echo "$MEMP" >> $OUTPUTFILE


}




db_parameter () {
	
if [ "$VERSION" == "8" ]; then
		
		
		DBPARAM1=$(psql -tx  <$DBPARAM2)	

		echo "$DBPARAM1" >> $OUTPUTFILE

	else 

		DBPARAM2=$(psql -tx  <$DBPARAM1)

		echo "$DBPARAM2" >> $OUTPUTFILE

	fi

	}


schema_parameter () {
	
$( sh $SCHEMAPARAM ) 

$( cat final_report.txt >> $OUTPUTFILE )
	

}


schema_parameter
db_parameter
#get_version
memory_parameter 
