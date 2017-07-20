@echo off
C:
cd "C:/IRI/CoSort95/workbench/workspace/Telecom"
sortcl /SPECIFICATION=Sort_Trunk.scl
set num=0 
set files=1 
IF NOT EXIST "REF-TRUNK.set" (
    ECHO File "REF-TRUNK.set" not found. Waiting 3 seconds
    TIMEOUT /t 3 /nobreak
) ELSE (
    ECHO.
    ECHO File "REF-TRUNK.set" found
    set /a num+=1
)
IF %num% == %files% (
    sortcl /SPECIFICATION=Sort_Prefix.scl
)
set num=0 
set files=1 
IF NOT EXIST "REF-PREFIX.set" (
    ECHO File "REF-PREFIX.set" not found. Waiting 3 seconds
    TIMEOUT /t 3 /nobreak
) ELSE (
    ECHO.
    ECHO File "REF-PREFIX.set" found
    set /a num+=1
)
IF %num% == %files% (
    sortcl /SPECIFICATION=Sort_Tariff.scl
)
set num=0 
set files=1 
IF NOT EXIST "REF-TARIFF.set" (
    ECHO File "REF-TARIFF.set" not found. Waiting 3 seconds
    TIMEOUT /t 3 /nobreak
) ELSE (
    ECHO.
    ECHO File "REF-TARIFF.set" found
    set /a num+=1
)
IF %num% == %files% (
    sortcl /SPECIFICATION=Sort_CDR1.scl
)
sortcl /SPECIFICATION=Sort_CDR2.scl
sortcl /SPECIFICATION=Sort_CDR3.scl
sortcl /SPECIFICATION=Sort_CDR4.scl
