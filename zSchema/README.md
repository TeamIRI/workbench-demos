## Database Schemas for Demo Projects

The reset_all_demos.bat file will drop tables, create tables and load tables in both
MySQL and Oracle. It is useful when setting up a demo environment for the first time.

The files *SCOTT-DDL.sql*  and *TEST-DDL.ddl* contain the SQL necessary to create all 
of the tables used in the demo projects. There are usually SQL and data files in each 
project, this is just a convenient way to create the tables at one time.

If you have no existing tables, then do not execute the relevant DROP statements at the 
top of the file. 
