rem @echo off
C:
rem cd "C:\git\workbench-demos\FieldShield_Multi_Table\restore-ssn-data"
sqlplus scott/tiger@localhost < DisableRelatedFK.sql
sortcl /SPECIFICATION=REGIONS.scl
sortcl /SPECIFICATION=LOCATIONS.scl
sortcl /SPECIFICATION=JOB_HISTORY.scl
sortcl /SPECIFICATION=JOBS.scl
sortcl /SPECIFICATION=EMPLOYEES.scl
sortcl /SPECIFICATION=DEPARTMENTS.scl
sortcl /SPECIFICATION=COUNTRIES.scl
sqlplus scott/tiger@localhost < EnableRelatedFK.sql
pause
