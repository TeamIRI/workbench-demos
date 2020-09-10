@echo off
SETLOCAL EnableDelayedExpansion
cd /d "C:/git/workbench-demos/Increment"
SET /p LASTTIME=<LastTime.txt
sortcl /SPECIFICATION=Timestamp.scl
sortcl /SPECIFICATION=Changes.scl
if not %ERRORLEVEL% == 0 (
ERROR
EXIT
) else (
copy /Y LastTimeTemp.txt LastTime.txt
echo Job Finished
EXIT

)
