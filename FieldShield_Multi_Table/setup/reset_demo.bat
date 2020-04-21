rem @echo off
sqlplus scott/tiger@localhost < reset.sql
sqlplus scott/tiger@localhost < DisableRelatedFK.sql
sortcl /SPECIFICATION=REGIONS.scl
sortcl /SPECIFICATION=COUNTRIES.scl
sortcl /SPECIFICATION=LOCATIONS.scl
sortcl /SPECIFICATION=DEPARTMENTS.scl
sortcl /SPECIFICATION=JOBS.scl
sortcl /SPECIFICATION=EMPLOYEES.scl
sortcl /SPECIFICATION=JOB_HISTORY.scl
sqlplus scott/tiger@localhost < EnableRelatedFK.sql
