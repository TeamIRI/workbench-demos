rem @echo off
SETLOCAL EnableDelayedExpansion
sqlplus scott/tiger@localhost < SCOTT-DDL.sql
mysql -uscott -ptiger -hlocalhost test < TEST-DDL.ddl
sqlplus scott/tiger@localhost/XE < DisableRelatedFK.sql
sortcl /SPECIFICATION=C:\git\workbench-demos\Data_Classification\setup\Load_Persons.scl
sortcl /SPECIFICATION=C:\git\workbench-demos\FACT_CoSort_Oracle_ETL\setup\Load_Orders.scl
sortcl /SPECIFICATION=C:\git\workbench-demos\FieldShield_Multi_Table\setup\REGIONS.scl
sortcl /SPECIFICATION=C:\git\workbench-demos\FieldShield_Multi_Table\setup\LOCATIONS.scl
sortcl /SPECIFICATION=C:\git\workbench-demos\FieldShield_Multi_Table\setup\JOB_HISTORY.scl
sortcl /SPECIFICATION=C:\git\workbench-demos\FieldShield_Multi_Table\setup\JOBS.scl
sortcl /SPECIFICATION=C:\git\workbench-demos\FieldShield_Multi_Table\setup\EMPLOYEES.scl
sortcl /SPECIFICATION=C:\git\workbench-demos\FieldShield_Multi_Table\setup\DEPARTMENTS.scl
sortcl /SPECIFICATION=C:\git\workbench-demos\FieldShield_Multi_Table\setup\COUNTRIES.scl
sortcl /SPECIFICATION=C:\git\workbench-demos\FieldShield_Table_File\setup\Load_Patient_Record.scl
sortcl /SPECIFICATION=C:\git\workbench-demos\Flow\setup\Load_Customers_Flow.scl
sortcl /SPECIFICATION=C:\git\workbench-demos\Flow\setup\Load_Orders_Flow.scl
sortcl /SPECIFICATION=C:\git\workbench-demos\NextForm_Data_Replication\setup\Load_Customers_Rep.scl
sortcl /SPECIFICATION=C:\git\workbench-demos\NextForm_DB_Migration\setup\Load_Companies_Test.scl
sortcl /SPECIFICATION=C:\git\workbench-demos\NextForm_Multi_Table_Migration\setup\Load_Customers_NF.scl
sortcl /SPECIFICATION=C:\git\workbench-demos\NextForm_Multi_Table_Migration\setup\Load_Orders_NF.scl
sortcl /SPECIFICATION=C:\git\workbench-demos\Subsetting\setup\Load_Sale_Dim.scl
sortcl /SPECIFICATION=C:\git\workbench-demos\Subsetting\setup\Load_Project_Dim.scl
sortcl /SPECIFICATION=C:\git\workbench-demos\Subsetting\setup\Load_Item_Price_Range_Dim.scl
sortcl /SPECIFICATION=C:\git\workbench-demos\Subsetting\setup\Load_Item_Dim.scl
sortcl /SPECIFICATION=C:\git\workbench-demos\Subsetting\setup\Load_Emp_Salary_Range_Dim.scl
sortcl /SPECIFICATION=C:\git\workbench-demos\Subsetting\setup\Load_Emp_Dim.scl
sortcl /SPECIFICATION=C:\git\workbench-demos\Subsetting\setup\Load_Dept_Dim.scl
sortcl /SPECIFICATION=C:\git\workbench-demos\Subsetting\setup\Load_Category_Dim.scl
sqlplus scott/tiger@localhost/XE < EnableRelatedFK.sql
