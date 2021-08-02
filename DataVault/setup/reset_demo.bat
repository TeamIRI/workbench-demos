@echo off
SETLOCAL EnableDelayedExpansion
sqlplus scott/tiger@localhost/XE < reset.sql
sqlplus scott/tiger@localhost/XE < DisableFK_Multiple_Tables.sql
sortcl /SPECIFICATION=Regions.scl
sortcl /SPECIFICATION=Countries.scl
sortcl /SPECIFICATION=Locations.scl
sortcl /SPECIFICATION=Departments.scl
sortcl /SPECIFICATION=Jobs.scl
sortcl /SPECIFICATION=Employees.scl
sortcl /SPECIFICATION=Job_History.scl
sqlplus scott/tiger@localhost/XE < EnableFK_Multiple_Tables.sql
sqlplus scott/tiger@localhost/XE < Drop_DV.sql
