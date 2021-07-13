# @echo off
sqlplus scott/tiger@localhost < reset.sql
sortcl /SPECIFICATION=Load_Persons.scl