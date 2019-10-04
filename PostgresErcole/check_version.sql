
DO $$ 

<<first_block>>

DECLARE 
   ver   VARCHAR(500);s
   ver2   VARCHAR(500);
   date  VARCHAR(50);

BEGIN

  
    SELECT INTO ver version ();
    SELECT into ver2 substring ("ver" from 11 for 7);

   

  CASE ver2
   
                  WHEN' 11.5 o' THEN  
                  date='2019-08-08';    
                  WHEN' 11.4 o' THEN  
                  date='2019-06-20';    
                  WHEN' 11.3 o' THEN  
                  date='2019-05-09';    
                  WHEN' 11.2 o' THEN  
                  date='2019-02-14';    
                  WHEN' 11.1 o' THEN  
                  date='2018-11-08';    
                  WHEN' 11 on ' THEN  
                  date='2018-10-18';    
                  WHEN' 10.10 ' THEN  
                  date='2019-08-08';    
                  WHEN' 10.9 o' THEN  
                  date='2019-06-20';       
                  WHEN' 10.8 o' THEN  
                  date='2019-05-09';       
                  WHEN' 10.7 o' THEN  
                  date='2019-02-14';      
                  WHEN' 10.6 o' THEN  
                  date='2018-11-08';      
                  WHEN' 10.5 o' THEN  
                  date='2018-08-09';      
                  WHEN' 10.4 o' THEN  
                  date='2018-05-10';      
                  WHEN' 10.3 o' THEN  
                  date='2018-03-01';      
                  WHEN' 10.2 o' THEN  
                  date='2018-02-08';      
                  WHEN' 10.1 o' THEN  
                  date='2017-11-09';      
                  WHEN' 10 on ' THEN  
                  date='2017-10-05';         
                  WHEN' 9.6.15' THEN  
                  date='2019-08-08';     
                  WHEN' 9.6.14' THEN  
                  date='2019-06-20';     
                  WHEN' 9.6.13' THEN  
                  date='2019-05-09';     
                  WHEN' 9.6.12' THEN  
                  date='2019-02-14';     
                  WHEN' 9.6.11' THEN  
                  date='2018-11-08';     
                  WHEN' 9.6.10' THEN  
                  date='2018-08-09';     
                  WHEN' 9.6.9 ' THEN  
                  date='2018-05-10';      
                  WHEN' 9.6.8 ' THEN  
                  date='2018-03-01';      
                  WHEN' 9.6.7 ' THEN  
                  date='2018-02-08';      
                  WHEN' 9.6.6 ' THEN  
                  date='2017-11-09';      
                  WHEN' 9.6.5 ' THEN  
                  date='2017-08-31';      
                  WHEN' 9.6.4 ' THEN  
                  date='2017-08-10';      
                  WHEN' 9.6.3 ' THEN  
                  date='2017-05-11';      
                  WHEN' 9.6.2 ' THEN  
                  date='2017-02-09';      
                  WHEN' 9.6.1 ' THEN  
                  date='2016-10-27';      
                  WHEN' 9.6 on' THEN  
                  date='2016-09-29';        
                  WHEN' 9.5.19' THEN  
                  date='2019-08-08';     
                  WHEN' 9.5.18' THEN  
                  date='2019-06-20';     
                  WHEN' 9.5.17' THEN  
                  date='2019-05-09';     
                  WHEN' 9.5.16' THEN  
                  date='2019-02-14';     
                  WHEN' 9.5.15' THEN  
                  date='2018-11-08';     
                  WHEN' 9.5.14' THEN  
                  date='2018-08-09';     
                  WHEN' 9.5.13' THEN  
                  date='2018-05-10';     
                  WHEN' 9.5.12' THEN  
                  date='2018-03-01';     
                  WHEN' 9.5.11' THEN  
                  date='2018-02-08';     
                  WHEN' 9.5.10' THEN  
                  date='2017-11-09';     
                  WHEN' 9.5.9 ' THEN  
                  date='2017-08-31';      
                  WHEN' 9.5.8 ' THEN  
                  date='2017-08-10';      
                  WHEN' 9.5.7 ' THEN  
                  date='2017-05-11';      
                  WHEN' 9.5.6 ' THEN  
                  date='2017-02-09';      
                  WHEN' 9.5.5 ' THEN  
                  date='2016-10-27';      
                  WHEN' 9.5.4 ' THEN  
                  date='2016-08-11';      
                  WHEN' 9.5.3 ' THEN  
                  date='2016-05-12';      
                  WHEN' 9.5.2 ' THEN  
                  date='2016-03-31';      
                  WHEN' 9.5.1 ' THEN  
                  date='2016-02-11';      
                  WHEN' 9.5 on' THEN  
                  date='2016-01-07';        
                  WHEN' 9.4.24' THEN  
                  date='2019-08-08';     
                  WHEN' 9.4.23' THEN  
                  date='2019-06-20';     
                  WHEN' 9.4.22' THEN  
                  date='2019-05-09';     
                  WHEN' 9.4.21' THEN  
                  date='2019-02-14';     
                  WHEN' 9.4.20' THEN  
                  date='2018-11-08';     
                  WHEN' 9.4.19' THEN  
                  date='2018-08-09';     
                  WHEN' 9.4.18' THEN  
                  date='2018-05-10';     
                  WHEN' 9.4.17' THEN  
                  date='2018-03-01';     
                  WHEN' 9.4.16' THEN  
                  date='2018-02-08';     
                  WHEN' 9.4.15' THEN  
                  date='2017-11-09';     
                  WHEN' 9.4.14' THEN  
                  date='2017-08-31';     
                  WHEN' 9.4.13' THEN  
                  date='2017-08-10';     
                  WHEN' 9.4.12' THEN  
                  date='2017-05-11';     
                  WHEN' 9.4.11' THEN  
                  date='2017-02-09';     
                  WHEN' 9.4.10' THEN  
                  date='2016-10-27';     
                  WHEN' 9.4.9 ' THEN  
                  date='2016-08-11';      
                  WHEN' 9.4.8 ' THEN  
                  date='2016-05-12';      
                  WHEN' 9.4.7 ' THEN  
                  date='2016-03-31';      
                  WHEN' 9.4.6 ' THEN  
                  date='2016-02-11';      
                  WHEN' 9.4.5 ' THEN  
                  date='2015-10-08';      
                  WHEN' 9.4.4 ' THEN  
                  date='2015-06-12';      
                  WHEN' 9.4.3 ' THEN  
                  date='2015-06-04';      
                  WHEN' 9.4.2 ' THEN  
                  date='2015-05-22';      
                  WHEN' 9.4.1 ' THEN  
                  date='2015-02-05';      
                  WHEN' 9.4 on' THEN  
                  date='2014-12-18';        
                  WHEN' 9.3.25' THEN  
                  date='2018-11-08';     
                  WHEN' 9.3.24' THEN  
                  date='2018-08-09';     
                  WHEN' 9.3.23' THEN  
                  date='2018-05-10';     
                  WHEN' 9.3.22' THEN  
                  date='2018-03-01';     
                  WHEN' 9.3.21' THEN  
                  date='2018-02-08';     
                  WHEN' 9.3.20' THEN  
                  date='2017-11-09';     
                  WHEN' 9.3.19' THEN  
                  date='2017-08-31';     
                  WHEN' 9.3.18' THEN  
                  date='2017-08-10';     
                  WHEN' 9.3.17' THEN  
                  date='2017-05-11';     
                  WHEN' 9.3.16' THEN  
                  date='2017-02-09';     
                  WHEN' 9.3.15' THEN  
                  date='2016-10-27';     
                  WHEN' 9.3.14' THEN  
                  date='2016-08-11';     
                  WHEN' 9.3.13' THEN  
                  date='2016-05-12';     
                  WHEN' 9.3.12' THEN  
                  date='2016-03-31';     
                  WHEN' 9.3.11' THEN  
                  date='2016-02-11';     
                  WHEN' 9.3.10' THEN  
                  date='2015-10-08';     
                  WHEN' 9.3.9 ' THEN  
                  date='2015-06-12';      
                  WHEN' 9.3.8 ' THEN  
                  date='2015-06-04';      
                  WHEN' 9.3.7 ' THEN  
                  date='2015-05-22';      
                  WHEN' 9.3.6 ' THEN  
                  date='2015-02-05';      
                  WHEN' 9.3.5 ' THEN  
                  date='2014-07-24';      
                  WHEN' 9.3.4 ' THEN  
                  date='2014-03-20';      
                  WHEN' 9.3.3 ' THEN  
                  date='2014-02-20';      
                  WHEN' 9.3.2 ' THEN  
                  date='2013-12-05';      
                  WHEN' 9.3.1 ' THEN  
                  date='2013-10-10';      
                  WHEN' 9.3 on' THEN  
                  date='2013-09-09';        
                  WHEN' 9.2.24' THEN  
                  date='2017-11-09';     
                  WHEN' 9.2.23' THEN  
                  date='2017-08-31';     
                  WHEN' 9.2.22' THEN  
                  date='2017-08-10';     
                  WHEN' 9.2.21' THEN  
                  date='2017-05-11';     
                  WHEN' 9.2.20' THEN  
                  date='2017-02-09';     
                  WHEN' 9.2.19' THEN  
                  date='2016-10-27';     
                  WHEN' 9.2.18' THEN  
                  date='2016-08-11';     
                  WHEN' 9.2.17' THEN  
                  date='2016-05-12';     
                  WHEN' 9.2.16' THEN  
                  date='2016-03-31';     
                  WHEN' 9.2.15' THEN  
                  date='2016-02-11';     
                  WHEN' 9.2.14' THEN  
                  date='2015-10-08';     
                  WHEN' 9.2.13' THEN  
                  date='2015-06-12';     
                  WHEN' 9.2.12' THEN  
                  date='2015-06-04';     
                  WHEN' 9.2.11' THEN  
                  date='2015-05-22';     
                  WHEN' 9.2.10' THEN  
                  date='2015-02-05';     
                  WHEN' 9.2.9 ' THEN  
                  date='2014-07-24';      
                  WHEN' 9.2.8 ' THEN  
                  date='2014-03-20';      
                  WHEN' 9.2.7 ' THEN  
                  date='2014-02-20';      
                  WHEN' 9.2.6 ' THEN  
                  date='2013-12-05';      
                  WHEN' 9.2.5 ' THEN  
                  date='2013-10-10';      
                  WHEN' 9.2.4 ' THEN  
                  date='2013-04-04';      
                  WHEN' 9.2.3 ' THEN  
                  date='2013-02-07';      
                  WHEN' 9.2.2 ' THEN  
                  date='2012-12-06';      
                  WHEN' 9.2.1 ' THEN  
                  date='2012-09-24';      
                  WHEN' 9.2 on' THEN  
                  date='2012-09-10';        
                  WHEN' 9.1.24' THEN  
                  date='2016-10-27';     
                  WHEN' 9.1.23' THEN  
                  date='2016-08-11';     
                  WHEN' 9.1.22' THEN  
                  date='2016-05-12';     
                  WHEN' 9.1.21' THEN  
                  date='2016-03-31';     
                  WHEN' 9.1.20' THEN  
                  date='2016-02-11';     
                  WHEN' 9.1.19' THEN  
                  date='2015-10-08';     
                  WHEN' 9.1.18' THEN  
                  date='2015-06-12';     
                  WHEN' 9.1.17' THEN  
                  date='2015-06-04';     
                  WHEN' 9.1.16' THEN  
                  date='2015-05-22';     
                  WHEN' 9.1.15' THEN  
                  date='2015-02-05';     
                  WHEN' 9.1.14' THEN  
                  date='2014-07-24';     
                  WHEN' 9.1.13' THEN  
                  date='2014-03-20';     
                  WHEN' 9.1.12' THEN  
                  date='2014-02-20';     
                  WHEN' 9.1.11' THEN  
                  date='2013-12-05';     
                  WHEN' 9.1.10' THEN  
                  date='2013-10-10';     
                  WHEN' 9.1.9 ' THEN  
                  date='2013-04-04';      
                  WHEN' 9.1.8 ' THEN  
                  date='2013-02-07';      
                  WHEN' 9.1.7 ' THEN  
                  date='2012-12-06';      
                  WHEN' 9.1.6 ' THEN  
                  date='2012-09-24';      
                  WHEN' 9.1.5 ' THEN  
                  date='2012-08-17';      
                  WHEN' 9.1.4 ' THEN  
                  date='2012-06-04';      
                  WHEN' 9.1.3 ' THEN  
                  date='2012-02-27';      
                  WHEN' 9.1.2 ' THEN  
                  date='2011-12-05';      
                  WHEN' 9.1.1 ' THEN  
                  date='2011-09-26';      
                  WHEN' 9.1 on' THEN  
                  date='2011-09-12';        
                  WHEN' 9.0.23' THEN  
                  date='2015-10-08';     
                  WHEN' 9.0.22' THEN  
                  date='2015-06-12';     
                  WHEN' 9.0.21' THEN  
                  date='2015-06-04';     
                  WHEN' 9.0.20' THEN  
                  date='2015-05-22';     
                  WHEN' 9.0.19' THEN  
                  date='2015-02-05';     
                  WHEN' 9.0.18' THEN  
                  date='2014-07-24';     
                  WHEN' 9.0.17' THEN  
                  date='2014-03-20';     
                  WHEN' 9.0.16' THEN  
                  date='2014-02-20';     
                  WHEN' 9.0.15' THEN  
                  date='2013-12-05';     
                  WHEN' 9.0.14' THEN  
                  date='2013-10-10';     
                  WHEN' 9.0.13' THEN  
                  date='2013-04-04';     
                  WHEN' 9.0.12' THEN  
                  date='2013-02-07';     
                  WHEN' 9.0.11' THEN  
                  date='2012-12-06';     
                  WHEN' 9.0.10' THEN  
                  date='2012-09-24';     
                  WHEN' 9.0.9 ' THEN  
                  date='2012-08-17';      
                  WHEN' 9.0.8 ' THEN  
                  date='2012-06-04';      
                  WHEN' 9.0.7 ' THEN  
                  date='2012-02-27';      
                  WHEN' 9.0.6 ' THEN  
                  date='2011-12-05';      
                  WHEN' 9.0.5 ' THEN  
                  date='2011-09-26';      
                  WHEN' 9.0.4 ' THEN  
                  date='2011-04-18';      
                  WHEN' 9.0.3 ' THEN  
                  date='2011-01-31';      
                  WHEN' 9.0.2 ' THEN  
                  date='2010-12-16';      
                  WHEN' 9.0.1 ' THEN  
                  date='2010-10-04';      
                  WHEN' 9.0 on' THEN  
                  date='2010-09-20';        
                  ELSE
                  date='versione non supportata'; 

END CASE; 

RAISE NOTICE '%', date;

END first_block $$;



