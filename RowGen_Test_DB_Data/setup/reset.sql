ALTER TABLE DM_EMPLOYEE_EVALUATIONS DROP CONSTRAINT DM_EE_JT_FK;

ALTER TABLE DM_JOB_TYPES DROP CONSTRAINT DM_JT_FK_PARENT_TOP;

ALTER TABLE DM_EMPLOYEES DROP CONSTRAINT DM_EMP_MGR_FK;

ALTER TABLE DM_DCTA_EVALUATIONS DROP CONSTRAINT DM_EE_DCTAE_FK;

ALTER TABLE DM_EMPLOYEES DROP CONSTRAINT DM_EMP_EMP_FK;

ALTER TABLE DM_EMPLOYEE_EVALUATIONS DROP CONSTRAINT DM_EE_EMP_FK;

ALTER TABLE DM_EMPLOYEE_EVALUATIONS DROP CONSTRAINT DM_EE_OU_FK;

ALTER TABLE DM_JOB_TYPES DROP CONSTRAINT DM_JT_COMPANIES_FK;

ALTER TABLE DM_ORGANIZATIONAL_UNITS DROP CONSTRAINT DM_OU_COMPANIES_FK;

ALTER TABLE DM_JOB_TYPES DROP CONSTRAINT DM_JT_FK_PARENT;

ALTER TABLE DM_EMPLOYEES DROP CONSTRAINT DM_EMP_PK;

ALTER TABLE DM_DCTA_EVALUATIONS DROP CONSTRAINT DM_DCTAE_PK;

ALTER TABLE DM_COMPANIES DROP CONSTRAINT DM_COMPANIES_PK;

ALTER TABLE DM_JOB_TYPES DROP CONSTRAINT DM_JT_PK;

ALTER TABLE DM_ORGANIZATIONAL_UNITS DROP CONSTRAINT DM_OU_PK;

ALTER TABLE DM_EMPLOYEE_EVALUATIONS DROP CONSTRAINT DM_EE_PK;

DROP INDEX DM_EMP_UK;

DROP INDEX DM_JT_PK;

DROP INDEX DM_DCTAE_PK;

DROP INDEX DM_EE_PK;

DROP INDEX DM_OU_PK;

DROP INDEX DM_COMPANIES_PK;

DROP INDEX DM_EMP_UK2;

DROP INDEX DM_EMP_PK;

DROP TABLE DM_DCTA_EVALUATIONS;

DROP TABLE DM_JOB_TYPES;

DROP TABLE DM_EMPLOYEE_EVALUATIONS;

DROP TABLE DM_COMPANIES;

DROP TABLE DM_ORGANIZATIONAL_UNITS;

DROP TABLE DM_EMPLOYEES;

CREATE TABLE DM_DCTA_EVALUATIONS (
		DPSID VARCHAR2(9) NOT NULL,
		EE_SEQ NUMBER(4 , 0) NOT NULL,
		DCTAE_TYPE VARCHAR2(10) NOT NULL,
		PLAN_CODE VARCHAR2(6) NOT NULL,
		SEMESTER_DUE VARCHAR2(10) NOT NULL,
		YEAR_DUE NUMBER(4 , 0) NOT NULL,
		JOB_FTE_CODE VARCHAR2(10),
		SRC_USER_ID VARCHAR2(10),
		SRC_UPDATE_DATE DATE
	);

CREATE TABLE DM_JOB_TYPES (
		COMPANY_NUMBER NUMBER(4 , 0) NOT NULL,
		JOB_CODE VARCHAR2(5) NOT NULL,
		DESCRIPTION VARCHAR2(4000) NOT NULL,
		JOB_CLASS_CODE VARCHAR2(3),
		BIGGER_JOB_COMPANY NUMBER(4 , 0) NOT NULL,
		BIGGER_JOB_CODE VARCHAR2(5) NOT NULL,
		SUPER_JOB_COMPANY NUMBER(4 , 0) NOT NULL,
		SUPER_JOB_CODE VARCHAR2(5) NOT NULL,
		CREATED_BY VARCHAR2(40) NOT NULL,
		CREATION_DATE DATE NOT NULL,
		UPDATED_BY VARCHAR2(40),
		LAST_UPDATE_DATE DATE
	);

CREATE TABLE DM_EMPLOYEE_EVALUATIONS (
		DPSID VARCHAR2(9) NOT NULL,
		EE_SEQ NUMBER(4 , 0) NOT NULL,
		EE_TYPE VARCHAR2(10) NOT NULL,
		STATUS_CODE VARCHAR2(10) NOT NULL,
		FREQUENCY_CODE VARCHAR2(5) NOT NULL,
		REMEDIATION_FLAG VARCHAR2(1) NOT NULL,
		SPECIAL_EVAL_FLAG VARCHAR2(1) NOT NULL,
		COMPLETE_DATE DATE,
		GOALS_MET_FLAG VARCHAR2(1),
		COMPANY_NUMBER NUMBER(4 , 0) NOT NULL,
		JOB_CODE VARCHAR2(5),
		OU_CODE VARCHAR2(5) NOT NULL,
		CREATED_BY VARCHAR2(40) NOT NULL,
		CREATION_DATE DATE NOT NULL,
		UPDATED_BY VARCHAR2(40),
		LAST_UPDATE_DATE DATE
	);

CREATE TABLE DM_COMPANIES (
		COMPANY_NUMBER NUMBER(4 , 0) NOT NULL,
		COMPANY_NAME VARCHAR2(40)
	);

CREATE TABLE DM_ORGANIZATIONAL_UNITS (
		COMPANY_NUMBER NUMBER(4 , 0) NOT NULL,
		OU_CODE VARCHAR2(5) NOT NULL,
		DESCRIPTION VARCHAR2(4000) NOT NULL,
		CREATED_BY VARCHAR2(40) NOT NULL,
		CREATION_DATE DATE NOT NULL,
		UPDATED_BY VARCHAR2(40),
		LAST_UPDATE_DATE DATE
	);

CREATE TABLE DM_EMPLOYEES (
		DPSID VARCHAR2(9) NOT NULL,
		EMPLOYEE_ID NUMBER NOT NULL,
		STATUS_CODE VARCHAR2(3),
		END_DATE DATE,
		HIRE_DATE DATE,
		SUPERVISOR_DPSID VARCHAR2(9),
		MANAGER_DPSID VARCHAR2(9),
		OPT_IN_DATE DATE,
		DOB DATE,
		GENDER VARCHAR2(1),
		LAST_NAME VARCHAR2(100) NOT NULL,
		FIRST_NAME VARCHAR2(100),
		MIDDLE_NAME VARCHAR2(100),
		GENERATION VARCHAR2(4),
		SSN VARCHAR2(9),
		ETHNIC_CODE VARCHAR2(3),
		EMAIL_ADDRESS VARCHAR2(60),
		ADDRESS_ID NUMBER(10 , 0),
		USER_STAMP VARCHAR2(10),
		DATE_STAMP DATE,
		TIME_STAMP NUMBER,
		CREATED_BY VARCHAR2(40) NOT NULL,
		CREATION_DATE DATE NOT NULL,
		UPDATED_BY VARCHAR2(40),
		LAST_UPDATE_DATE DATE
	);

CREATE UNIQUE INDEX DM_EMP_UK ON DM_EMPLOYEES (EMPLOYEE_ID ASC);

CREATE UNIQUE INDEX DM_JT_PK ON DM_JOB_TYPES (COMPANY_NUMBER ASC, JOB_CODE ASC);

CREATE UNIQUE INDEX DM_DCTAE_PK ON DM_DCTA_EVALUATIONS (DPSID ASC, EE_SEQ ASC);

CREATE UNIQUE INDEX DM_EE_PK ON DM_EMPLOYEE_EVALUATIONS (DPSID ASC, EE_SEQ ASC);

CREATE UNIQUE INDEX DM_OU_PK ON DM_ORGANIZATIONAL_UNITS (COMPANY_NUMBER ASC, OU_CODE ASC);

CREATE UNIQUE INDEX DM_COMPANIES_PK ON DM_COMPANIES (COMPANY_NUMBER ASC);

CREATE UNIQUE INDEX DM_EMP_UK2 ON DM_EMPLOYEES (SSN ASC);

CREATE UNIQUE INDEX DM_EMP_PK ON DM_EMPLOYEES (DPSID ASC);

ALTER TABLE DM_EMPLOYEES ADD CONSTRAINT DM_EMP_PK PRIMARY KEY (DPSID);

ALTER TABLE DM_DCTA_EVALUATIONS ADD CONSTRAINT DM_DCTAE_PK PRIMARY KEY (DPSID, EE_SEQ);

ALTER TABLE DM_COMPANIES ADD CONSTRAINT DM_COMPANIES_PK PRIMARY KEY (COMPANY_NUMBER);

ALTER TABLE DM_JOB_TYPES ADD CONSTRAINT DM_JT_PK PRIMARY KEY (COMPANY_NUMBER, JOB_CODE);

ALTER TABLE DM_ORGANIZATIONAL_UNITS ADD CONSTRAINT DM_OU_PK PRIMARY KEY (COMPANY_NUMBER, OU_CODE);

ALTER TABLE DM_EMPLOYEE_EVALUATIONS ADD CONSTRAINT DM_EE_PK PRIMARY KEY (DPSID, EE_SEQ);

ALTER TABLE DM_EMPLOYEE_EVALUATIONS ADD CONSTRAINT DM_EE_JT_FK FOREIGN KEY (COMPANY_NUMBER, JOB_CODE)
	REFERENCES DM_JOB_TYPES (COMPANY_NUMBER, JOB_CODE);

ALTER TABLE DM_JOB_TYPES ADD CONSTRAINT DM_JT_FK_PARENT_TOP FOREIGN KEY (SUPER_JOB_COMPANY, SUPER_JOB_CODE)
	REFERENCES DM_JOB_TYPES (COMPANY_NUMBER, JOB_CODE);

ALTER TABLE DM_EMPLOYEES ADD CONSTRAINT DM_EMP_MGR_FK FOREIGN KEY (MANAGER_DPSID)
	REFERENCES DM_EMPLOYEES (DPSID);

ALTER TABLE DM_DCTA_EVALUATIONS ADD CONSTRAINT DM_EE_DCTAE_FK FOREIGN KEY (DPSID, EE_SEQ)
	REFERENCES DM_EMPLOYEE_EVALUATIONS (DPSID, EE_SEQ);

ALTER TABLE DM_EMPLOYEES ADD CONSTRAINT DM_EMP_EMP_FK FOREIGN KEY (SUPERVISOR_DPSID)
	REFERENCES DM_EMPLOYEES (DPSID);

ALTER TABLE DM_EMPLOYEE_EVALUATIONS ADD CONSTRAINT DM_EE_EMP_FK FOREIGN KEY (DPSID)
	REFERENCES DM_EMPLOYEES (DPSID);

ALTER TABLE DM_EMPLOYEE_EVALUATIONS ADD CONSTRAINT DM_EE_OU_FK FOREIGN KEY (COMPANY_NUMBER, OU_CODE)
	REFERENCES DM_ORGANIZATIONAL_UNITS (COMPANY_NUMBER, OU_CODE);

ALTER TABLE DM_JOB_TYPES ADD CONSTRAINT DM_JT_COMPANIES_FK FOREIGN KEY (COMPANY_NUMBER)
	REFERENCES DM_COMPANIES (COMPANY_NUMBER);

ALTER TABLE DM_ORGANIZATIONAL_UNITS ADD CONSTRAINT DM_OU_COMPANIES_FK FOREIGN KEY (COMPANY_NUMBER)
	REFERENCES DM_COMPANIES (COMPANY_NUMBER);

ALTER TABLE DM_JOB_TYPES ADD CONSTRAINT DM_JT_FK_PARENT FOREIGN KEY (BIGGER_JOB_COMPANY, BIGGER_JOB_CODE)
	REFERENCES DM_JOB_TYPES (COMPANY_NUMBER, JOB_CODE);

