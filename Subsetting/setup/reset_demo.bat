rem @echo off
sqlplus scott/tiger@localhost < reset.sql
sqlplus scott/tiger@localhost/XE < DisableFK_Multiple_Tables.sql
sortcl /SPECIFICATION=Load_Sale_Dim.scl
sortcl /SPECIFICATION=Load_Project_Dim.scl
sortcl /SPECIFICATION=Load_Item_Price_Range_Dim.scl
sortcl /SPECIFICATION=Load_Item_Dim.scl
sortcl /SPECIFICATION=Load_Emp_Salary_Range_Dim.scl
sortcl /SPECIFICATION=Load_Emp_Dim.scl
sortcl /SPECIFICATION=Load_Dept_Dim.scl
sortcl /SPECIFICATION=Load_Category_Dim.scl
sortcl /SPECIFICATION=Load_Sale_Dim.scl
sqlplus scott/tiger@localhost/XE < EnableFK_Multiple_Tables.sql
