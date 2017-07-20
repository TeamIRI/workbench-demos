@echo off
C:
cd "C:/IRI/CoSort95/workbench/workspace/Flow/DM_project"
sqlplus scott/tiger@localhost < DisableRelatedFK.sql
fact SCOTT_DM_COMPANIES.ini
sortcl /SPECIFICATION=SCOTT_DM_COMPANIES.scl
sqlldr scott/tiger@localhost  DIRECT=TRUE CONTROL=SCOTT_DM_COMPANIES.ctl
fact SCOTT_DM_ORGANIZATIONAL_UNITS.ini
sortcl /SPECIFICATION=SCOTT_DM_ORGANIZATIONAL_UNITS.scl
sqlldr scott/tiger@localhost  DIRECT=TRUE CONTROL=SCOTT_DM_ORGANIZATIONAL_UNITS.ctl
fact SCOTT_DM_JOB_TYPES.ini
sortcl /SPECIFICATION=SCOTT_DM_JOB_TYPES.scl
sqlldr scott/tiger@localhost  DIRECT=TRUE CONTROL=SCOTT_DM_JOB_TYPES.ctl
fact SCOTT_DM_EMPLOYEES.ini
sortcl /SPECIFICATION=SCOTT_DM_EMPLOYEES.scl
sqlldr scott/tiger@localhost  DIRECT=TRUE CONTROL=SCOTT_DM_EMPLOYEES.ctl
fact SCOTT_DM_EMPLOYEE_EVALUATIONS.ini
sortcl /SPECIFICATION=SCOTT_DM_EMPLOYEE_EVALUATIONS.scl
sqlldr scott/tiger@localhost  DIRECT=TRUE CONTROL=SCOTT_DM_EMPLOYEE_EVALUATIONS.ctl
fact SCOTT_DM_DCTA_EVALUATIONS.ini
sortcl /SPECIFICATION=SCOTT_DM_DCTA_EVALUATIONS.scl
sqlldr scott/tiger@localhost  DIRECT=TRUE CONTROL=SCOTT_DM_DCTA_EVALUATIONS.ctl
sqlplus scott/tiger@localhost < EnableRelatedFK.sql
