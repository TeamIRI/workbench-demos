rem @echo off
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
