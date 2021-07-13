# @echo off
sqlplus scott/tiger@localhost < reset.sql
sortcl /SPECIFICATION=Load_Patient_Record.scl