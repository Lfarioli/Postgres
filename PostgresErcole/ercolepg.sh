#!bin/bash

PSU1='/opt/check_version.sql'
PSU2='/opt/check_version_8.4.sql'
MPARAM='/opt/get_param.sql'
DBPARAM='/opt/query_each_db.sql'
SCHEMAPARAM='/opt/take_schema.sh'
OUTPUTFILE='/opt/final.final'


get_version () {
	
	VERSION=$(psql -V |grep psql |awk '{print $3}'|cut -c1-1)

	IF [ $VERSION =='8' ]; then
		
		$(psql -c "create language plpgsql;")
		
		VERSION8=$(psql -At <$PSU2 |grep 2 )	

	ELSE 

		VERSIONMORE=$(psql -At <$PSU1 |grep NOT)

	FI	


}




memory_parameter () {
	

	



}




db_parameter () {
	

	



}


schema_parameter () {
	

	



}




#schema_parameter
#db_parameter
get_version
#memory_parameter 