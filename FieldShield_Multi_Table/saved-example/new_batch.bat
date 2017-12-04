@echo off
SETLOCAL EnableDelayedExpansion
sqlplus scott/tiger@XE < DisableRelatedFK.sql
sortcl /SPECIFICATION=SCOTT_EMPLOYEES.fcl
sortcl /SPECIFICATION=SCOTT_DEPARTMENTS.fcl
sortcl /SPECIFICATION=SCOTT_JOB_HISTORY.fcl
sqlplus scott/tiger@XE < EnableRelatedFK.sql
