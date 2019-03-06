-- Use this script if the EMPLOYEES and JOB_HISTORY tables DO NOT have ID columns.
-- Remember to run the batch file in restore-ssn-data to repopulate the tables.

ALTER TABLE JOB_HISTORY DROP CONSTRAINT JHIST_EMP_FK;

ALTER TABLE EMPLOYEES DROP CONSTRAINT EMP_JOB_FK;

ALTER TABLE EMPLOYEES DROP CONSTRAINT EMP_MGNR_FK;

ALTER TABLE EMPLOYEES DROP CONSTRAINT EMP_DEPT_FK;

ALTER TABLE COUNTRIES DROP CONSTRAINT COUNTRY_REG_FK;

ALTER TABLE DEPARTMENTS DROP CONSTRAINT DEPT_MGR_FK;

ALTER TABLE JOB_HISTORY DROP CONSTRAINT JHIST_DEPT_FK;

ALTER TABLE LOCATIONS DROP CONSTRAINT LOC_C_ID_FK;

ALTER TABLE JOB_HISTORY DROP CONSTRAINT JHIS_JOB_FK;

ALTER TABLE DEPARTMENTS DROP CONSTRAINT DEPT_LOC_FK;

ALTER TABLE JOBS DROP CONSTRAINT JOB_ID_PK;

ALTER TABLE JOB_HISTORY DROP CONSTRAINT JHIST_EMP_ID_ST_DATE_PK;

ALTER TABLE COUNTRIES DROP CONSTRAINT COUNTRY_C_ID_PK;

ALTER TABLE LOCATIONS DROP CONSTRAINT LOC_ID_PK;

ALTER TABLE REGIONS DROP CONSTRAINT REG_ID_PK;

ALTER TABLE DEPARTMENTS DROP CONSTRAINT DEPT_ID_PK;

ALTER TABLE EMPLOYEES DROP CONSTRAINT EMP_EMP_ID_PK;

DROP INDEX EMP_MANAGER_IX;

DROP INDEX EMP_EMP_ID_PK;

DROP INDEX COUNTRY_C_ID_PK;

DROP INDEX REG_ID_PK;

DROP INDEX JHIST_EMP_ID_ST_DATE_PK;

DROP INDEX JHIST_DEPARTMENT_IX;

DROP INDEX EMP_NAME_IX;

DROP INDEX JOB_ID_PK;

DROP INDEX EMP_EMAIL_UK;

DROP INDEX DEPT_ID_PK;

DROP INDEX JHIST_EMPLOYEE_IX;

DROP INDEX LOC_ID_PK;

DROP INDEX EMP_DEPARTMENT_IX;

DROP INDEX LOC_STATE_PROVINCE_IX;

DROP INDEX LOC_CITY_IX;

DROP INDEX DEPT_LOCATION_IX;

DROP INDEX LOC_COUNTRY_IX;

DROP INDEX EMP_JOB_IX;

DROP INDEX JHIST_JOB_IX;

DROP TABLE JOB_HISTORY;

DROP TABLE LOCATIONS;

DROP TABLE COUNTRIES;

DROP TABLE DEPARTMENTS;

DROP TABLE REGIONS;

DROP TABLE JOBS;

DROP TABLE EMPLOYEES;

CREATE TABLE DEPARTMENTS (
		DEPARTMENT_ID NUMBER(4 , 0) NOT NULL,
		DEPARTMENT_NAME VARCHAR2(30) NOT NULL,
		MANAGER_SID VARCHAR2(9),
		LOCATION_ID NUMBER(4 , 0)
	);

CREATE TABLE LOCATIONS (
		LOCATION_ID NUMBER(4 , 0) NOT NULL,
		STREET_ADDRESS VARCHAR2(40),
		POSTAL_CODE VARCHAR2(12),
		CITY VARCHAR2(30) NOT NULL,
		STATE_PROVINCE VARCHAR2(25),
		COUNTRY_ID CHAR(2)
	);

CREATE TABLE COUNTRIES (
		COUNTRY_ID CHAR(2) NOT NULL,
		COUNTRY_NAME VARCHAR2(40),
		REGION_ID NUMBER
	);

CREATE TABLE EMPLOYEES (
		ID NUMBER(38 , 0) NOT NULL,
		EMPLOYEE_SID VARCHAR2(9) NOT NULL,
		FIRST_NAME VARCHAR2(20),
		LAST_NAME VARCHAR2(25) NOT NULL,
		EMAIL VARCHAR2(25) NOT NULL,
		PHONE_NUMBER VARCHAR2(20),
		HIRE_DATE DATE NOT NULL,
		JOB_ID VARCHAR2(10) NOT NULL,
		SALARY NUMBER(8 , 2),
		COMMISSION_PCT NUMBER(3 , 2),
		MANAGER_SID VARCHAR2(9),
		DEPARTMENT_ID NUMBER(4 , 0)
	);

CREATE TABLE JOB_HISTORY (
		ID NUMBER(38 , 0) NOT NULL,
		EMPLOYEE_SID VARCHAR2(9) NOT NULL,
		START_DATE DATE NOT NULL,
		END_DATE DATE NOT NULL,
		JOB_ID VARCHAR2(10) NOT NULL,
		DEPARTMENT_ID NUMBER(4 , 0)
	);

CREATE TABLE REGIONS (
		REGION_ID NUMBER NOT NULL,
		REGION_NAME VARCHAR2(25)
	);

CREATE TABLE JOBS (
		JOB_ID VARCHAR2(10) NOT NULL,
		JOB_TITLE VARCHAR2(35) NOT NULL,
		MIN_SALARY NUMBER(6 , 0),
		MAX_SALARY NUMBER(6 , 0)
	);

CREATE UNIQUE INDEX L_L_ID_PK ON LOCATIONS (LOCATION_ID ASC);

CREATE UNIQUE INDEX E_E_SID_UK ON EMPLOYEES (EMPLOYEE_SID ASC);

CREATE UNIQUE INDEX J_J_ID_PK ON JOBS (JOB_ID ASC);

CREATE UNIQUE INDEX D_D_ID_PK ON DEPARTMENTS (DEPARTMENT_ID ASC);

CREATE UNIQUE INDEX JH_E_SID_SD_UK ON JOB_HISTORY (EMPLOYEE_SID ASC, START_DATE ASC);

CREATE UNIQUE INDEX E_ID_PK ON EMPLOYEES (ID ASC);

CREATE UNIQUE INDEX C_C_ID_PK ON COUNTRIES (COUNTRY_ID ASC);

CREATE UNIQUE INDEX JH_ID_PK ON JOB_HISTORY (ID ASC);

CREATE UNIQUE INDEX R_R_ID_PK ON REGIONS (REGION_ID ASC);

ALTER TABLE COUNTRIES ADD CONSTRAINT C_C_ID_PK PRIMARY KEY (COUNTRY_ID);

ALTER TABLE DEPARTMENTS ADD CONSTRAINT D_D_ID_PK PRIMARY KEY (DEPARTMENT_ID);

ALTER TABLE LOCATIONS ADD CONSTRAINT L_L_ID_PK PRIMARY KEY (LOCATION_ID);

ALTER TABLE JOB_HISTORY ADD CONSTRAINT JH_ID_PK PRIMARY KEY (ID);

ALTER TABLE EMPLOYEES ADD CONSTRAINT E_ID_PK PRIMARY KEY (ID);

ALTER TABLE JOBS ADD CONSTRAINT J_J_ID_PK PRIMARY KEY (JOB_ID);

ALTER TABLE REGIONS ADD CONSTRAINT R_R_ID_PK PRIMARY KEY (REGION_ID);

ALTER TABLE LOCATIONS ADD CONSTRAINT L_C_ID_FK FOREIGN KEY (COUNTRY_ID)
	REFERENCES COUNTRIES (COUNTRY_ID);

ALTER TABLE DEPARTMENTS ADD CONSTRAINT D_L_ID_FK FOREIGN KEY (LOCATION_ID)
	REFERENCES LOCATIONS (LOCATION_ID);

ALTER TABLE JOB_HISTORY ADD CONSTRAINT JH_J_ID_FK FOREIGN KEY (JOB_ID)
	REFERENCES JOBS (JOB_ID);

ALTER TABLE COUNTRIES ADD CONSTRAINT C_R_ID_FK FOREIGN KEY (REGION_ID)
	REFERENCES REGIONS (REGION_ID);

ALTER TABLE EMPLOYEES ADD CONSTRAINT E_D_ID_FK FOREIGN KEY (DEPARTMENT_ID)
	REFERENCES DEPARTMENTS (DEPARTMENT_ID);

ALTER TABLE EMPLOYEES ADD CONSTRAINT E_J_ID_FK FOREIGN KEY (JOB_ID)
	REFERENCES JOBS (JOB_ID);

ALTER TABLE JOB_HISTORY ADD CONSTRAINT JH_D_ID_FK FOREIGN KEY (DEPARTMENT_ID)
	REFERENCES DEPARTMENTS (DEPARTMENT_ID);