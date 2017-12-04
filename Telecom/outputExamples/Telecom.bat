@echo off
SETLOCAL EnableDelayedExpansion
set num0=0
set files0=1
set num1=0
set files1=1
set num2=0
set files2=1
sortcl /SPECIFICATION=Sort_Trunk.scl
ping 192.0.2.0 -n 1 -w 3000 >NUL
if not exist "REF-TRUNK.set" (
    echo File "REF-TRUNK.set" not found.
) else (
    echo.
    echo File "REF-TRUNK.set" found
    set /a num0+=1
)
if !num0! == !files0! (
sortcl /SPECIFICATION=Sort_Prefix.scl
ping 192.0.2.0 -n 1 -w 3000 >NUL
if not exist "REF-PREFIX.set" (
    echo File "REF-PREFIX.set" not found.
) else (
    echo.
    echo File "REF-PREFIX.set" found
    set /a num1+=1
)
if !num1! == !files1! (
sortcl /SPECIFICATION=Sort_Tariff.scl
ping 192.0.2.0 -n 1 -w 3000 >NUL
if not exist "REF-TARIFF.set" (
    echo File "REF-TARIFF.set" not found.
) else (
    echo.
    echo File "REF-TARIFF.set" found
    set /a num2+=1
)
if !num2! == !files2! (
sortcl /SPECIFICATION=Sort_CDR1.scl
sortcl /SPECIFICATION=Sort_CDR2.scl
sortcl /SPECIFICATION=Sort_CDR3.scl
sortcl /SPECIFICATION=Sort_CDR4.scl
)
)
)
