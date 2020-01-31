rem @echo off
sqlplus scott/tiger@localhost < reset.sql
mysql -uscott -ptiger -hlocalhost test < resetMySql.ddl
sortcl /SPECIFICATION=Load_Customers_Rep.scl
