LOAD DATA
INFILE 'C:/git/workbench-demos/Flow/setup/CUSTOMERS.out'
APPEND INTO TABLE CUSTOMERS_FLOW
REENABLE
FIELDS TERMINATED BY "	"
TRAILING NULLCOLS
(
ID NULLIF(ID="{NULL}") ,
NAME NULLIF(NAME="{NULL}") ,
STATE NULLIF(STATE="{NULL}") ,
PHONE NULLIF(PHONE="{NULL}") 
)