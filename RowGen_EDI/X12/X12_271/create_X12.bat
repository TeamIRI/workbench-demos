@echo off
setlocal enabledelayedexpansion


SET /a ISA_R=%random%
set /a ISA_S=%random%
set /a ISA_CTRL=%random%
set /a GS_CTRL=%random%
set /a ST_CTRL=%random%
ECHO !ISA_R!
ECHO !ISA_S!
ECHO !ISA_CTRL!
ECHO !GS_CTRL!
ECHO !ST_CTRL!

sortcl /SPECIFICATION=x12_271_w_dependents.rcl
sortcl /SPECIFICATION=x12_271_no_dependents.rcl