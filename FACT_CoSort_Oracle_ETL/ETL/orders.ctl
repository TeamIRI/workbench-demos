LOAD DATA
INFILE 'C:\git\workbench-demos\FACT_CoSort_Oracle_ETL\TargetFiles\table_output.dat'
TRUNCATE
INTO TABLE orders_sorted
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
	"ORDER_ID"	CHAR(5), 
	"CUSTOMER"	CHAR(200), 
	"EMPLOYEE"	CHAR(200), 
	"SHIP_DATE"	TIMESTAMP	"SYYYYMMDDHH24MISS.FF6", 
	"FREIGHT"	INTEGER EXTERNAL
)

