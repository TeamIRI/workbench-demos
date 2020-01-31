rem @echo off
sqlplus scott/tiger@localhost < reset.sql
sortcl /SPECIFICATION=Load_Customers_Flow.scl
sortcl /SPECIFICATION=Load_Orders_Flow.scl
