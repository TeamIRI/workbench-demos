# @echo off
sqlplus scott/tiger@localhost/XE < DisableRelatedFK.sql
sortcl /SPECIFICATION=COMPANY_NUMBER_UNIQUE.rcl
sortcl /SPECIFICATION=OU_CODE_UNIQUE.rcl
sortcl /SPECIFICATION=JOB_CODE_UNIQUE.rcl
sortcl /SPECIFICATION=DPSID_UNIQUE.rcl
sortcl /SPECIFICATION=EMPLOYEE_ID_UNIQUE.rcl
sortcl /SPECIFICATION=SSN_UNIQUE.rcl
sortcl /SPECIFICATION=EE_SEQ_UNIQUE.rcl
sleep 3
if [ ! -e "COMPANY_NUMBER.sed" ]; then
    echo file "COMPANY_NUMBER.sed" not found.
    echo Job terminated
    exit
else 
    echo
    echo file "COMPANY_NUMBER.sed" found.
fi
sleep 3
if [ ! -e "OU_CODE.sed" ]; then
    echo file "OU_CODE.sed" not found.
    echo Job terminated
    exit
else 
    echo
    echo file "OU_CODE.sed" found.
fi
sleep 3
if [ ! -e "JOB_CODE.sed" ]; then
    echo file "JOB_CODE.sed" not found.
    echo Job terminated
    exit
else 
    echo
    echo file "JOB_CODE.sed" found.
fi
sleep 3
if [ ! -e "DPSID.sed" ]; then
    echo file "DPSID.sed" not found.
    echo Job terminated
    exit
else 
    echo
    echo file "DPSID.sed" found.
fi
sleep 3
if [ ! -e "EMPLOYEE_ID.sed" ]; then
    echo file "EMPLOYEE_ID.sed" not found.
    echo Job terminated
    exit
else 
    echo
    echo file "EMPLOYEE_ID.sed" found.
fi
sleep 3
if [ ! -e "SSN.sed" ]; then
    echo file "SSN.sed" not found.
    echo Job terminated
    exit
else 
    echo
    echo file "SSN.sed" found.
fi
sleep 3
if [ ! -e "EE_SEQ.sed" ]; then
    echo file "EE_SEQ.sed" not found.
    echo Job terminated
    exit
else 
    echo
    echo file "EE_SEQ.sed" found.
fi
    
sortcl /SPECIFICATION=SCOTT_DM_COMPANIES.rcl
sqlldr scott/tiger@localhost/XE DIRECT=TRUE CONTROL=SCOTT_DM_COMPANIES.ctl
sortcl /SPECIFICATION=SCOTT_DM_ORGANIZATIONAL_UNITS.rcl
sqlldr scott/tiger@localhost/XE DIRECT=TRUE CONTROL=SCOTT_DM_ORGANIZATIONAL_UNITS.ctl
sortcl /SPECIFICATION=SCOTT_DM_JOB_TYPES.rcl
sqlldr scott/tiger@localhost/XE DIRECT=TRUE CONTROL=SCOTT_DM_JOB_TYPES.ctl
sortcl /SPECIFICATION=SCOTT_DM_EMPLOYEES.rcl
sqlldr scott/tiger@localhost/XE DIRECT=TRUE CONTROL=SCOTT_DM_EMPLOYEES.ctl
sortcl /SPECIFICATION=SCOTT_DM_EMPLOYEE_EVALUATIONS.rcl
sqlldr scott/tiger@localhost/XE DIRECT=TRUE CONTROL=SCOTT_DM_EMPLOYEE_EVALUATIONS.ctl
sortcl /SPECIFICATION=SCOTT_DM_DCTA_EVALUATIONS.rcl
sqlldr scott/tiger@localhost/XE DIRECT=TRUE CONTROL=SCOTT_DM_DCTA_EVALUATIONS.ctl
sqlplus scott/tiger@localhost/XE < EnableRelatedFK.sql
echo Job Ended