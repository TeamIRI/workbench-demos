@echo off
SETLOCAL EnableDelayedExpansion
set num0=0
set files0=7
sqlplus scott/tiger@XE < DisableRelatedFK.sql
sortcl /SPECIFICATION=COMPANY_NUMBER_UNIQUE.rcl
sortcl /SPECIFICATION=OU_CODE_UNIQUE.rcl
sortcl /SPECIFICATION=JOB_CODE_UNIQUE.rcl
sortcl /SPECIFICATION=DPSID_UNIQUE.rcl
sortcl /SPECIFICATION=EMPLOYEE_ID_UNIQUE.rcl
sortcl /SPECIFICATION=SSN_UNIQUE.rcl
sortcl /SPECIFICATION=EE_SEQ_UNIQUE.rcl
ping 192.0.2.0 -n 1 -w 3000 >NUL
if not exist "COMPANY_NUMBER.sed" (
    echo File "COMPANY_NUMBER.sed" not found.
) else (
    echo.
    echo File "COMPANY_NUMBER.sed" found
    set /a num0+=1
)
ping 192.0.2.0 -n 1 -w 3000 >NUL
if not exist "OU_CODE.sed" (
    echo File "OU_CODE.sed" not found.
) else (
    echo.
    echo File "OU_CODE.sed" found
    set /a num0+=1
)
ping 192.0.2.0 -n 1 -w 3000 >NUL
if not exist "JOB_CODE.sed" (
    echo File "JOB_CODE.sed" not found.
) else (
    echo.
    echo File "JOB_CODE.sed" found
    set /a num0+=1
)
ping 192.0.2.0 -n 1 -w 3000 >NUL
if not exist "DPSID.sed" (
    echo File "DPSID.sed" not found.
) else (
    echo.
    echo File "DPSID.sed" found
    set /a num0+=1
)
ping 192.0.2.0 -n 1 -w 3000 >NUL
if not exist "EMPLOYEE_ID.sed" (
    echo File "EMPLOYEE_ID.sed" not found.
) else (
    echo.
    echo File "EMPLOYEE_ID.sed" found
    set /a num0+=1
)
ping 192.0.2.0 -n 1 -w 3000 >NUL
if not exist "SSN.sed" (
    echo File "SSN.sed" not found.
) else (
    echo.
    echo File "SSN.sed" found
    set /a num0+=1
)
ping 192.0.2.0 -n 1 -w 3000 >NUL
if not exist "EE_SEQ.sed" (
    echo File "EE_SEQ.sed" not found.
) else (
    echo.
    echo File "EE_SEQ.sed" found
    set /a num0+=1
)
if !num0! == !files0! (
sortcl /SPECIFICATION=SCOTT_DM_COMPANIES.rcl
sqlldr scott/tiger@XE  DIRECT=TRUE CONTROL=SCOTT_DM_COMPANIES.ctl
sortcl /SPECIFICATION=SCOTT_DM_ORGANIZATIONAL_UNITS.rcl
sqlldr scott/tiger@XE  DIRECT=TRUE CONTROL=SCOTT_DM_ORGANIZATIONAL_UNITS.ctl
sortcl /SPECIFICATION=SCOTT_DM_JOB_TYPES.rcl
sqlldr scott/tiger@XE  DIRECT=TRUE CONTROL=SCOTT_DM_JOB_TYPES.ctl
sortcl /SPECIFICATION=SCOTT_DM_EMPLOYEES.rcl
sqlldr scott/tiger@XE  DIRECT=TRUE CONTROL=SCOTT_DM_EMPLOYEES.ctl
sortcl /SPECIFICATION=SCOTT_DM_EMPLOYEE_EVALUATIONS.rcl
sqlldr scott/tiger@XE  DIRECT=TRUE CONTROL=SCOTT_DM_EMPLOYEE_EVALUATIONS.ctl
sortcl /SPECIFICATION=SCOTT_DM_DCTA_EVALUATIONS.rcl
sqlldr scott/tiger@XE  DIRECT=TRUE CONTROL=SCOTT_DM_DCTA_EVALUATIONS.ctl
sqlplus scott/tiger@XE < EnableRelatedFK.sql
)
