# @echo off
sqlplus scott/tiger@eclipse.iri.com:1521/XE < DisableRelatedFK.sql
sortcl /SPECIFICATION=SCOTT_DEPARTMENTS.fcl
sortcl /SPECIFICATION=SCOTT_JOB_HISTORY.fcl
sortcl /SPECIFICATION=SCOTT_EMPLOYEES.fcl
sqlplus scott/tiger@eclipse.iri.com:1521/XE < EnableRelatedFK.sql