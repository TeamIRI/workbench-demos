rem @echo off
sqlplus scott/tiger@localhost < reset.sql
sortcl /SPECIFICATION=Load_Customers_NF.scl
sortcl /SPECIFICATION=Load_Orders_NF.scl
