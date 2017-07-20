@echo off
C:
cd "C:/IRI/CoSort95/workbench/workspace/FieldShield_Multi_Table/saved-example"
sqlplus scott/tiger@localhost < DisableRelatedFK.sql
sortcl /SPECIFICATION=SCOTT.EMPLOYEES.fcl
sortcl /SPECIFICATION=SCOTT.DEPARTMENTS.fcl
sortcl /SPECIFICATION=SCOTT.JOB_HISTORY.fcl
sqlplus scott/tiger@localhost < EnableRelatedFK.sql
