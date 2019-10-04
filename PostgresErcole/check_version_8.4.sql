

CREATE OR REPLACE FUNCTION pg_temp.get_release()
RETURNS VARCHAR(500) AS $$

DECLARE 
   ver   VARCHAR(500);
   ver2   VARCHAR(500);
   date  VARCHAR(50);

BEGIN

  
    SELECT INTO ver version ();
    SELECT into ver2 substring ("ver" from 11 for 7);


      CASE ver2            
                  WHEN' 8.4.22' THEN  
                  date='2014-07-24';     
                  WHEN' 8.4.21' THEN  
                  date='2014-03-20';     
                  WHEN' 8.4.20' THEN  
                  date='2014-02-20';     
                  WHEN' 8.4.19' THEN  
                  date='2013-12-05';     
                  WHEN' 8.4.18' THEN  
                  date='2013-10-10';     
                  WHEN' 8.4.17' THEN  
                  date='2013-04-04';     
                  WHEN' 8.4.16' THEN  
                  date='2013-02-07';     
                  WHEN' 8.4.15' THEN  
                  date='2012-12-06';     
                  WHEN' 8.4.14' THEN  
                  date='2012-09-24';     
                  WHEN' 8.4.13' THEN  
                  date='2012-08-17';     
                  WHEN' 8.4.12' THEN  
                  date='2012-06-04';     
                  WHEN' 8.4.11' THEN  
                  date='2012-02-27';     
                  WHEN' 8.4.10' THEN  
                  date='2011-12-05';     
                  WHEN' 8.4.9 ' THEN  
                  date='2011-09-26';      
                  WHEN' 8.4.8 ' THEN  
                  date='2011-04-18';      
                  WHEN' 8.4.7 ' THEN  
                  date='2011-01-31';      
                  WHEN' 8.4.6 ' THEN  
                  date='2010-12-16';      
                  WHEN' 8.4.5 ' THEN  
                  date='2010-10-04';      
                  WHEN' 8.4.4 ' THEN  
                  date='2010-05-17';      
                  WHEN' 8.4.3 ' THEN  
                  date='2010-03-15';      
                  WHEN' 8.4.2 ' THEN  
                  date='2009-12-14';      
                  WHEN' 8.4.1 ' THEN  
                  date='2009-09-09';      
                  WHEN' 8.4 on' THEN  
                  date='2009-07-01';
                  ELSE
                  date='versione non supportata'; 

                  END CASE; 





RETURN date;
END; $$
LANGUAGE plpgsql;

select pg_temp.get_release();