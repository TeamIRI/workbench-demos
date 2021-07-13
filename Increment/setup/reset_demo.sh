# @echo off
sqlplus scott/tiger@localhost < resetOracle.sql
mysql -uscott -ptiger -hlocalhost test < resetMySQL.ddl
sortcl /SPECIFICATION=CreateLastTime.rcl
sortcl /SPECIFICATION=SCOTT_CLIENT.rcl