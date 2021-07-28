@echo off
SETLOCAL EnableDelayedExpansion
sqlplus scott/tiger@localhost:1521/XE < SCOTT.sql
sortcl /SPECIFICATION=Timestamp.scl
sqlplus scott/tiger@localhost:1521/XE < DisableFK_SCOTT.sql
sortcl /SPECIFICATION=DV_JOBS_HR.scl
sortcl /SPECIFICATION=DV_REGIONS_HR.scl
sortcl /SPECIFICATION=DV_COUNTRIES_HR.scl
sortcl /SPECIFICATION=DV_LOCATIONS_HR.scl
sortcl /SPECIFICATION=DV_DEPARTMENTS_HR.scl
sortcl /SPECIFICATION=DV_EMPLOYEES_HR.scl
sortcl /SPECIFICATION=DV_JOB_HISTORY_HR.scl
sqlplus scott/tiger@localhost:1521/XE < EnableFK_SCOTT.sql
echo Job Ended