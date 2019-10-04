#!bin/bash

PSU1='/tmp/check_version.sql'
PSU2='/tmp/check_version_8.4.sql'
MPARAM='/tmp/get_param.sql'
DBPARAM='/tmp/query_each_db.sql'
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
	
	if [ "$VERSION" == "8" ]; then
		
		


		echo "$VERSION8" >> $OUTPUTFILE


	else 

	MEMP1=$(psql  </tmp/get_param.sql) 

	echo "$MEMP" >> $OUTPUTFILE

	fi
}




#db_parameter () {
	

	



#}


#schema_parameter () {
	

	



#}








#schema_parameter
#db_parameter
get_version
memory_parameter 
