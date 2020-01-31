rem @echo off
sqlplus scott/tiger@localhost < reset.sql
sqlplus scott/tiger@localhost/XE < DisableFK_Multiple_Tables.sql
sortcl /SPECIFICATION=Load_Customers_Flow.scl
sortcl /SPECIFICATION=Load_Orders_Flow.scl
sqlplus scott/tiger@localhost/XE < EnableFK_Multiple_Tables.sql
