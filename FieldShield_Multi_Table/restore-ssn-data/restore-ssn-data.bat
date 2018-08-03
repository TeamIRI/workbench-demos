rem @echo off
C:
rem cd "C:\git\workbench-demos\FieldShield_Multi_Table\restore-ssn-data"
sqlplus scott/tiger@localhost < DisableRelatedFK.sql
sortcl /SPECIFICATION=HR.REGIONS.scl
sortcl /SPECIFICATION=HR.LOCATIONS.scl
sortcl /SPECIFICATION=HR.JOB_HISTORY.scl
sortcl /SPECIFICATION=HR.JOBS.scl
sortcl /SPECIFICATION=HR.EMPLOYEES.scl
sortcl /SPECIFICATION=HR.DEPARTMENTS.scl
sortcl /SPECIFICATION=HR.COUNTRIES.scl
sqlplus scott/tiger@localhost < EnableRelatedFK.sql
pause
