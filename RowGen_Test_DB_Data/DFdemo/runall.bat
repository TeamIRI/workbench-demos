cd "C:\IRI\CoSort95\workbench\workspace\RowGen_Test_DB_Data\DFdemo"
sortcl /spec=COMPANY_NUMBER.UNIQUE.rcl
sortcl /spec=DPSID.UNIQUE.rcl
sortcl /spec=EE_SEQ.UNIQUE.rcl
sortcl /spec=EMPLOYEE_ID.UNIQUE.rcl
sortcl /spec=JOB_CODE.UNIQUE.rcl
sortcl /spec=OU_CODE.UNIQUE.rcl
sortcl /spec=SSN.UNIQUE.rcl
sortcl /spec=DM_COMPANIES.rcl
sortcl /spec=DM_ORGANIZATIONAL_UNITS.rcl
sortcl /spec=DM_JOB_TYPES.rcl
sortcl /spec=DM_EMPLOYEES.rcl
sortcl /spec=DM_EMPLOYEE_EVALUATIONS.rcl
sortcl /spec=DM_DCTA_EVALUATIONS.rcl
sqlldr scott/tiger@localhost  DIRECT=TRUE CONTROL=DM_COMPANIES.ctl
sqlldr scott/tiger@localhost  DIRECT=TRUE CONTROL=DM_ORGANIZATIONAL_UNITS.ctl
sqlldr scott/tiger@localhost  DIRECT=TRUE CONTROL=DM_JOB_TYPES.ctl
sqlldr scott/tiger@localhost  DIRECT=TRUE CONTROL=DM_EMPLOYEES.ctl
sqlldr scott/tiger@localhost  DIRECT=TRUE CONTROL=DM_EMPLOYEE_EVALUATIONS.ctl
sqlldr scott/tiger@localhost  DIRECT=TRUE CONTROL=DM_DCTA_EVALUATIONS.ctl
pause