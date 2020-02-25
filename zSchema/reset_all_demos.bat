rem @echo off
SETLOCAL EnableDelayedExpansion
sqlplus scott/tiger@localhost < SCOTT-DDL.sql
mysql -uscott -ptiger -hlocalhost test < TEST-DDL.ddl
sqlplus scott/tiger@localhost/XE < DisableRelatedFK.sql
cd ..\Data_Classification\setup
sortcl /SPECIFICATION=Load_Persons.scl
cd ..\..\FACT_CoSort_Oracle_ETL\setup
sortcl /SPECIFICATION=Load_Orders.scl
cd ..\..\FieldShield_Multi_Table\setup
sortcl /SPECIFICATION=REGIONS.scl
sortcl /SPECIFICATION=LOCATIONS.scl
sortcl /SPECIFICATION=JOB_HISTORY.scl
sortcl /SPECIFICATION=JOBS.scl
sortcl /SPECIFICATION=EMPLOYEES.scl
sortcl /SPECIFICATION=DEPARTMENTS.scl
sortcl /SPECIFICATION=COUNTRIES.scl
cd ..\..\FieldShield_Table_File\setup
sortcl /SPECIFICATION=Load_Patient_Record.scl
cd ..\..\Flow\setup
sortcl /SPECIFICATION=Load_Customers_Flow.scl
sortcl /SPECIFICATION=Load_Orders_Flow.scl
cd ..\..\NextForm_Data_Replication\setup
sortcl /SPECIFICATION=Load_Customers_Rep.scl
cd ..\..\NextForm_DB_Migration\setup
sortcl /SPECIFICATION=Load_Companies_Test.scl
cd ..\..\NextForm_Multi_Table_Migration\setup
sortcl /SPECIFICATION=Load_Customers_NF.scl
sortcl /SPECIFICATION=Load_Orders_NF.scl
cd ..\..\Subsetting\setup
sortcl /SPECIFICATION=Load_Sale_Dim.scl
sortcl /SPECIFICATION=Load_Project_Dim.scl
sortcl /SPECIFICATION=Load_Item_Price_Range_Dim.scl
sortcl /SPECIFICATION=Load_Item_Dim.scl
sortcl /SPECIFICATION=Load_Emp_Salary_Range_Dim.scl
sortcl /SPECIFICATION=Load_Emp_Dim.scl
sortcl /SPECIFICATION=Load_Dept_Dim.scl
sortcl /SPECIFICATION=Load_Category_Dim.scl
cd ..\..\zSchema
sqlplus scott/tiger@localhost/XE < EnableRelatedFK.sql
