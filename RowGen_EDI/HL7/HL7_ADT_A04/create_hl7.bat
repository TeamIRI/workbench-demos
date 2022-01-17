@echo off
SETLOCAL EnableDelayedExpansion
SET "sourcedir=adt_job.rcl"
FOR /L %%x IN (1, 1, 10) DO @ECHO %%x && SET a=%%x && sortcl /SPECIFICATION=adt_job.rcl
