@echo off
SETLOCAL EnableDelayedExpansion
sqlplus scott/tiger@localhost:1521/XE < DisableRelatedFK.sql
sortcl /SPECIFICATION=SCOTT_DEPARTMENTS.fcl
sortcl /SPECIFICATION=SCOTT_JOB_HISTORY.fcl
sortcl /SPECIFICATION=SCOTT_EMPLOYEES.fcl
sqlplus scott/tiger@localhost:1521/XE < EnableRelatedFK.sql
