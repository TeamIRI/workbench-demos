rem @echo off
sqlplus scott/tiger@localhost < Reset_demo.sql
sortcl /SPECIFICATION=Load_Customers_NF.scl
sortcl /SPECIFICATION=Load_Orders_HF.scl
