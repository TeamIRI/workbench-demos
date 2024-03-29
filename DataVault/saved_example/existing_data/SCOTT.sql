CREATE TABLE SCOTT.SAT_DV_JOB_HISTORY_HR (
		LNK_DV_JOB_HISTORY_HR_INFO_KEY CHAR(32) NOT NULL,
		SAT_LOAD_DATE TIMESTAMP NOT NULL,
		SAT_LOAD_END_DATE TIMESTAMP,
		SAT_REC_SRC VARCHAR2(100) NOT NULL,
		HASH_DIFF CHAR(32) NOT NULL,
		END_DATE DATE NOT NULL
	);

CREATE TABLE SCOTT.LNK_DV_DEPARTMENTS_HR_DV_LOCATIONS_HR (
		LNK_DV_DEPARTMENTS_HR_DV_LOCATIONS_HR_KEY CHAR(32) NOT NULL,
		HUB_DV_DEPARTMENTS_HR_KEY CHAR(32) NOT NULL,
		HUB_DV_LOCATIONS_HR_KEY CHAR(32) NOT NULL,
		LNK_LOAD_DATE TIMESTAMP NOT NULL,
		LNK_REC_SRC VARCHAR2(100) NOT NULL,
		LNK_LAST_SEEN_DATE TIMESTAMP NOT NULL
	);

CREATE TABLE SCOTT.HUB_DV_JOB_HISTORY_HR (
		HUB_DV_JOB_HISTORY_HR_KEY CHAR(32) NOT NULL,
		EMPLOYEE_ID NUMBER(6 , 0) NOT NULL,
		START_DATE DATE NOT NULL,
		HUB_LOAD_DATE TIMESTAMP NOT NULL,
		HUB_REC_SRC VARCHAR2(100) NOT NULL,
		HUB_LAST_SEEN_DATE TIMESTAMP NOT NULL
	);

CREATE TABLE SCOTT.HUB_DV_REGIONS_HR (
		HUB_DV_REGIONS_HR_KEY CHAR(32) NOT NULL,
		REGION_NAME VARCHAR2(25) NOT NULL,
		HUB_LOAD_DATE TIMESTAMP NOT NULL,
		HUB_REC_SRC VARCHAR2(100) NOT NULL,
		HUB_LAST_SEEN_DATE TIMESTAMP NOT NULL
	);

CREATE TABLE SCOTT.HUB_DV_LOCATIONS_HR (
		HUB_DV_LOCATIONS_HR_KEY CHAR(32) NOT NULL,
		LOCATION_ID NUMBER(4 , 0) NOT NULL,
		HUB_LOAD_DATE TIMESTAMP NOT NULL,
		HUB_REC_SRC VARCHAR2(100) NOT NULL,
		HUB_LAST_SEEN_DATE TIMESTAMP NOT NULL
	);

CREATE TABLE SCOTT.SAT_DV_DEPARTMENTS_HR (
		LNK_DV_DEPARTMENTS_HR_DV_LOCATIONS_HR_KEY CHAR(32) NOT NULL,
		SAT_LOAD_DATE TIMESTAMP NOT NULL,
		SAT_LOAD_END_DATE TIMESTAMP,
		SAT_REC_SRC VARCHAR2(100) NOT NULL,
		HASH_DIFF CHAR(32) NOT NULL,
		DEPARTMENT_ID NUMBER(4 , 0) NOT NULL
	);

CREATE TABLE SCOTT.SAT_DV_COUNTRIES_HR (
		LNK_DV_COUNTRIES_HR_DV_REGIONS_HR_KEY CHAR(32) NOT NULL,
		SAT_LOAD_DATE TIMESTAMP NOT NULL,
		SAT_LOAD_END_DATE TIMESTAMP,
		SAT_REC_SRC VARCHAR2(100) NOT NULL,
		HASH_DIFF CHAR(32) NOT NULL,
		COUNTRY_ID CHAR(2) NOT NULL
	);

CREATE TABLE SCOTT.SAT_DV_JOBS_HR (
		HUB_DV_JOBS_HR_KEY CHAR(32) NOT NULL,
		SAT_LOAD_DATE TIMESTAMP NOT NULL,
		SAT_LOAD_END_DATE TIMESTAMP,
		SAT_REC_SRC VARCHAR2(100) NOT NULL,
		HASH_DIFF CHAR(32) NOT NULL,
		JOB_ID VARCHAR2(10) NOT NULL,
		MIN_SALARY NUMBER(6 , 0),
		MAX_SALARY NUMBER(6 , 0)
	);

CREATE TABLE SCOTT.LNK_DV_LOCATIONS_HR_DV_COUNTRIES_HR (
		LNK_DV_LOCATIONS_HR_DV_COUNTRIES_HR_KEY CHAR(32) NOT NULL,
		HUB_DV_LOCATIONS_HR_KEY CHAR(32) NOT NULL,
		HUB_DV_COUNTRIES_HR_KEY CHAR(32) NOT NULL,
		LNK_LOAD_DATE TIMESTAMP NOT NULL,
		LNK_REC_SRC VARCHAR2(100) NOT NULL,
		LNK_LAST_SEEN_DATE TIMESTAMP NOT NULL
	);

CREATE TABLE SCOTT.SAT_DV_EMPLOYEES_HR (
		LNK_DV_EMPLOYEES_HR_INFO_KEY CHAR(32) NOT NULL,
		SAT_LOAD_DATE TIMESTAMP NOT NULL,
		SAT_LOAD_END_DATE TIMESTAMP,
		SAT_REC_SRC VARCHAR2(100) NOT NULL,
		HASH_DIFF CHAR(32) NOT NULL,
		FIRST_NAME VARCHAR2(20),
		LAST_NAME VARCHAR2(25) NOT NULL,
		EMAIL VARCHAR2(25) NOT NULL,
		PHONE_NUMBER VARCHAR2(20),
		HIRE_DATE DATE NOT NULL,
		SALARY NUMBER(8 , 2),
		COMMISSION_PCT NUMBER(2 , 2)
	);

CREATE TABLE SCOTT.HUB_DV_JOBS_HR (
		HUB_DV_JOBS_HR_KEY CHAR(32) NOT NULL,
		JOB_TITLE VARCHAR2(35) NOT NULL,
		HUB_LOAD_DATE TIMESTAMP NOT NULL,
		HUB_REC_SRC VARCHAR2(100) NOT NULL,
		HUB_LAST_SEEN_DATE TIMESTAMP NOT NULL
	);

CREATE TABLE SCOTT.SAT_DV_REGIONS_HR (
		HUB_DV_REGIONS_HR_KEY CHAR(32) NOT NULL,
		SAT_LOAD_DATE TIMESTAMP NOT NULL,
		SAT_LOAD_END_DATE TIMESTAMP,
		SAT_REC_SRC VARCHAR2(100) NOT NULL,
		HASH_DIFF CHAR(32) NOT NULL,
		REGION_ID NUMBER(38 , 0) NOT NULL
	);

CREATE TABLE SCOTT.LNK_DV_COUNTRIES_HR_DV_REGIONS_HR (
		LNK_DV_COUNTRIES_HR_DV_REGIONS_HR_KEY CHAR(32) NOT NULL,
		HUB_DV_COUNTRIES_HR_KEY CHAR(32) NOT NULL,
		HUB_DV_REGIONS_HR_KEY CHAR(32) NOT NULL,
		LNK_LOAD_DATE TIMESTAMP NOT NULL,
		LNK_REC_SRC VARCHAR2(100) NOT NULL,
		LNK_LAST_SEEN_DATE TIMESTAMP NOT NULL
	);

CREATE TABLE SCOTT.LNK_DV_EMPLOYEES_HR_DV_EMPLOYEES_HR (
		LNK_DV_EMPLOYEES_HR_DV_EMPLOYEES_HR_KEY CHAR(32) NOT NULL,
		HUB_DV_EMPLOYEES_HR_KEY CHAR(32) NOT NULL,
		HUB_HUB_DV_EMPLOYEES_HR.MANAGER_ID_KEY CHAR(32) NOT NULL,
		LNK_LOAD_DATE TIMESTAMP NOT NULL,
		LNK_REC_SRC VARCHAR2(100) NOT NULL,
		LNK_LAST_SEEN_DATE TIMESTAMP NOT NULL
	);

CREATE TABLE SCOTT.HUB_DV_COUNTRIES_HR (
		HUB_DV_COUNTRIES_HR_KEY CHAR(32) NOT NULL,
		COUNTRY_NAME VARCHAR2(40) NOT NULL,
		HUB_LOAD_DATE TIMESTAMP NOT NULL,
		HUB_REC_SRC VARCHAR2(100) NOT NULL,
		HUB_LAST_SEEN_DATE TIMESTAMP NOT NULL
	);

CREATE TABLE SCOTT.LNK_DV_JOB_HISTORY_HR_INFO (
		LNK_DV_JOB_HISTORY_HR_INFO_KEY CHAR(32) NOT NULL,
		HUB_DV_JOB_HISTORY_HR_KEY CHAR(32) NOT NULL,
		HUB_DV_DEPARTMENTS_HR_KEY CHAR(32) NOT NULL,
		HUB_DV_EMPLOYEES_HR_KEY CHAR(32) NOT NULL,
		HUB_DV_JOBS_HR_KEY CHAR(32) NOT NULL,
		LNK_LOAD_DATE TIMESTAMP NOT NULL,
		LNK_REC_SRC VARCHAR2(100) NOT NULL,
		LNK_LAST_SEEN_DATE TIMESTAMP NOT NULL
	);

CREATE TABLE SCOTT.HUB_DV_DEPARTMENTS_HR (
		HUB_DV_DEPARTMENTS_HR_KEY CHAR(32) NOT NULL,
		DEPARTMENT_NAME VARCHAR2(30) NOT NULL,
		HUB_LOAD_DATE TIMESTAMP NOT NULL,
		HUB_REC_SRC VARCHAR2(100) NOT NULL,
		HUB_LAST_SEEN_DATE TIMESTAMP NOT NULL
	);

CREATE TABLE SCOTT.SAT_DV_LOCATIONS_HR (
		LNK_DV_LOCATIONS_HR_DV_COUNTRIES_HR_KEY CHAR(32) NOT NULL,
		SAT_LOAD_DATE TIMESTAMP NOT NULL,
		SAT_LOAD_END_DATE TIMESTAMP,
		SAT_REC_SRC VARCHAR2(100) NOT NULL,
		HASH_DIFF CHAR(32) NOT NULL,
		STREET_ADDRESS VARCHAR2(40),
		POSTAL_CODE VARCHAR2(12),
		CITY VARCHAR2(30) NOT NULL,
		STATE_PROVINCE VARCHAR2(25)
	);

CREATE TABLE SCOTT.LNK_DV_EMPLOYEES_HR_INFO (
		LNK_DV_EMPLOYEES_HR_INFO_KEY CHAR(32) NOT NULL,
		HUB_DV_EMPLOYEES_HR_KEY CHAR(32) NOT NULL,
		HUB_DV_DEPARTMENTS_HR_KEY CHAR(32) NOT NULL,
		HUB_DV_JOBS_HR_KEY CHAR(32) NOT NULL,
		LNK_LOAD_DATE TIMESTAMP NOT NULL,
		LNK_REC_SRC VARCHAR2(100) NOT NULL,
		LNK_LAST_SEEN_DATE TIMESTAMP NOT NULL
	);

CREATE TABLE SCOTT.HUB_DV_EMPLOYEES_HR (
		HUB_DV_EMPLOYEES_HR_KEY CHAR(32) NOT NULL,
		EMPLOYEE_ID NUMBER(6 , 0) NOT NULL,
		HUB_LOAD_DATE TIMESTAMP NOT NULL,
		HUB_REC_SRC VARCHAR2(100) NOT NULL,
		HUB_LAST_SEEN_DATE TIMESTAMP NOT NULL
	);

CREATE UNIQUE INDEX SCOTT.HUB_DV_COUNTRIES_HR_IX ON SCOTT.HUB_DV_COUNTRIES_HR (COUNTRY_NAME ASC);

CREATE UNIQUE INDEX SCOTT.HUB_DV_JOBS_HR_IX ON SCOTT.HUB_DV_JOBS_HR (JOB_TITLE ASC);

CREATE UNIQUE INDEX SCOTT.HUB_DV_JOB_HISTORY_HR_IX ON SCOTT.HUB_DV_JOB_HISTORY_HR (EMPLOYEE_ID ASC, START_DATE ASC);

CREATE UNIQUE INDEX SCOTT.LNK_DV_LOCATIONS_HR_DV_COUNTRIES_HR_IX ON SCOTT.LNK_DV_LOCATIONS_HR_DV_COUNTRIES_HR (HUB_DV_LOCATIONS_HR_KEY ASC, HUB_DV_COUNTRIES_HR_KEY ASC);

CREATE UNIQUE INDEX SCOTT.LNK_DV_DEPARTMENTS_HR_DV_LOCATIONS_HR_IX ON SCOTT.LNK_DV_DEPARTMENTS_HR_DV_LOCATIONS_HR (HUB_DV_DEPARTMENTS_HR_KEY ASC, HUB_DV_LOCATIONS_HR_KEY ASC);

CREATE UNIQUE INDEX SCOTT.HUB_DV_EMPLOYEES_HR_IX ON SCOTT.HUB_DV_EMPLOYEES_HR (EMPLOYEE_ID ASC);

CREATE UNIQUE INDEX SCOTT.HUB_DV_LOCATIONS_HR_IX ON SCOTT.HUB_DV_LOCATIONS_HR (LOCATION_ID ASC);

CREATE UNIQUE INDEX SCOTT.HUB_DV_REGIONS_HR_IX ON SCOTT.HUB_DV_REGIONS_HR (REGION_NAME ASC);

CREATE UNIQUE INDEX SCOTT.LNK_DV_COUNTRIES_HR_DV_REGIONS_HR_IX ON SCOTT.LNK_DV_COUNTRIES_HR_DV_REGIONS_HR (HUB_DV_COUNTRIES_HR_KEY ASC, HUB_DV_REGIONS_HR_KEY ASC);

CREATE UNIQUE INDEX SCOTT.LNK_DV_EMPLOYEES_HR_INFO_IX ON SCOTT.LNK_DV_EMPLOYEES_HR_INFO (HUB_DV_EMPLOYEES_HR_KEY ASC, HUB_DV_DEPARTMENTS_HR_KEY ASC, HUB_DV_JOBS_HR_KEY ASC);

CREATE UNIQUE INDEX SCOTT.LNK_DV_JOB_HISTORY_HR_INFO_IX ON SCOTT.LNK_DV_JOB_HISTORY_HR_INFO (HUB_DV_JOB_HISTORY_HR_KEY ASC, HUB_DV_DEPARTMENTS_HR_KEY ASC, HUB_DV_EMPLOYEES_HR_KEY ASC, HUB_DV_JOBS_HR_KEY ASC);

CREATE UNIQUE INDEX SCOTT.HUB_DV_DEPARTMENTS_HR_IX ON SCOTT.HUB_DV_DEPARTMENTS_HR (DEPARTMENT_NAME ASC);

CREATE UNIQUE INDEX SCOTT.LNK_DV_EMPLOYEES_HR_DV_EMPLOYEES_HR_IX ON SCOTT.LNK_DV_EMPLOYEES_HR_DV_EMPLOYEES_HR (HUB_DV_EMPLOYEES_HR_KEY ASC, HUB_HUB_DV_EMPLOYEES_HR.MANAGER_ID_KEY ASC);

ALTER TABLE SCOTT.LNK_DV_EMPLOYEES_HR_INFO ADD CONSTRAINT LNK_DV_EMPLOYEES_HR_INFO_PK PRIMARY KEY (LNK_DV_EMPLOYEES_HR_INFO_KEY);

ALTER TABLE SCOTT.LNK_DV_DEPARTMENTS_HR_DV_LOCATIONS_HR ADD CONSTRAINT LNK_DV_DEPARTMENTS_HR_DV_LOCATIONS_HR_PK PRIMARY KEY (LNK_DV_DEPARTMENTS_HR_DV_LOCATIONS_HR_KEY);

ALTER TABLE SCOTT.LNK_DV_JOB_HISTORY_HR_INFO ADD CONSTRAINT LNK_DV_JOB_HISTORY_HR_INFO_PK PRIMARY KEY (LNK_DV_JOB_HISTORY_HR_INFO_KEY);

ALTER TABLE SCOTT.LNK_DV_LOCATIONS_HR_DV_COUNTRIES_HR ADD CONSTRAINT LNK_DV_LOCATIONS_HR_DV_COUNTRIES_HR_PK PRIMARY KEY (LNK_DV_LOCATIONS_HR_DV_COUNTRIES_HR_KEY);

ALTER TABLE SCOTT.LNK_DV_EMPLOYEES_HR_DV_EMPLOYEES_HR ADD CONSTRAINT LNK_DV_EMPLOYEES_HR_DV_EMPLOYEES_HR_PK PRIMARY KEY (LNK_DV_EMPLOYEES_HR_DV_EMPLOYEES_HR_KEY);

ALTER TABLE SCOTT.SAT_DV_JOBS_HR ADD CONSTRAINT SAT_DV_JOBS_HR_PK PRIMARY KEY (HUB_DV_JOBS_HR_KEY, SAT_LOAD_DATE);

ALTER TABLE SCOTT.SAT_DV_REGIONS_HR ADD CONSTRAINT SAT_DV_REGIONS_HR_PK PRIMARY KEY (HUB_DV_REGIONS_HR_KEY, SAT_LOAD_DATE);

ALTER TABLE SCOTT.HUB_DV_COUNTRIES_HR ADD CONSTRAINT HUB_DV_COUNTRIES_HR_PK PRIMARY KEY (HUB_DV_COUNTRIES_HR_KEY);

ALTER TABLE SCOTT.HUB_DV_JOB_HISTORY_HR ADD CONSTRAINT HUB_DV_JOB_HISTORY_HR_PK PRIMARY KEY (HUB_DV_JOB_HISTORY_HR_KEY);

ALTER TABLE SCOTT.SAT_DV_EMPLOYEES_HR ADD CONSTRAINT SAT_DV_EMPLOYEES_HR_PK PRIMARY KEY (LNK_DV_EMPLOYEES_HR_INFO_KEY, SAT_LOAD_DATE);

ALTER TABLE SCOTT.SAT_DV_COUNTRIES_HR ADD CONSTRAINT SAT_DV_COUNTRIES_HR_PK PRIMARY KEY (LNK_DV_COUNTRIES_HR_DV_REGIONS_HR_KEY, SAT_LOAD_DATE);

ALTER TABLE SCOTT.SAT_DV_LOCATIONS_HR ADD CONSTRAINT SAT_DV_LOCATIONS_HR_PK PRIMARY KEY (LNK_DV_LOCATIONS_HR_DV_COUNTRIES_HR_KEY, SAT_LOAD_DATE);

ALTER TABLE SCOTT.SAT_DV_DEPARTMENTS_HR ADD CONSTRAINT SAT_DV_DEPARTMENTS_HR_PK PRIMARY KEY (LNK_DV_DEPARTMENTS_HR_DV_LOCATIONS_HR_KEY, SAT_LOAD_DATE);

ALTER TABLE SCOTT.HUB_DV_REGIONS_HR ADD CONSTRAINT HUB_DV_REGIONS_HR_PK PRIMARY KEY (HUB_DV_REGIONS_HR_KEY);

ALTER TABLE SCOTT.HUB_DV_DEPARTMENTS_HR ADD CONSTRAINT HUB_DV_DEPARTMENTS_HR_PK PRIMARY KEY (HUB_DV_DEPARTMENTS_HR_KEY);

ALTER TABLE SCOTT.LNK_DV_COUNTRIES_HR_DV_REGIONS_HR ADD CONSTRAINT LNK_DV_COUNTRIES_HR_DV_REGIONS_HR_PK PRIMARY KEY (LNK_DV_COUNTRIES_HR_DV_REGIONS_HR_KEY);

ALTER TABLE SCOTT.HUB_DV_LOCATIONS_HR ADD CONSTRAINT HUB_DV_LOCATIONS_HR_PK PRIMARY KEY (HUB_DV_LOCATIONS_HR_KEY);

ALTER TABLE SCOTT.HUB_DV_EMPLOYEES_HR ADD CONSTRAINT HUB_DV_EMPLOYEES_HR_PK PRIMARY KEY (HUB_DV_EMPLOYEES_HR_KEY);

ALTER TABLE SCOTT.SAT_DV_JOB_HISTORY_HR ADD CONSTRAINT SAT_DV_JOB_HISTORY_HR_PK PRIMARY KEY (LNK_DV_JOB_HISTORY_HR_INFO_KEY, SAT_LOAD_DATE);

ALTER TABLE SCOTT.HUB_DV_JOBS_HR ADD CONSTRAINT HUB_DV_JOBS_HR_PK PRIMARY KEY (HUB_DV_JOBS_HR_KEY);

ALTER TABLE SCOTT.LNK_DV_LOCATIONS_HR_DV_COUNTRIES_HR ADD CONSTRAINT LNK_DV_LOCATIONS_HR_DV_COUNTRIES_HR_FK2 FOREIGN KEY (HUB_DV_COUNTRIES_HR_KEY)
	REFERENCES SCOTT.HUB_DV_COUNTRIES_HR (HUB_DV_COUNTRIES_HR_KEY);

ALTER TABLE SCOTT.LNK_DV_DEPARTMENTS_HR_DV_LOCATIONS_HR ADD CONSTRAINT LNK_DV_DEPARTMENTS_HR_DV_LOCATIONS_HR_FK1 FOREIGN KEY (HUB_DV_DEPARTMENTS_HR_KEY)
	REFERENCES SCOTT.HUB_DV_DEPARTMENTS_HR (HUB_DV_DEPARTMENTS_HR_KEY);

ALTER TABLE SCOTT.SAT_DV_JOB_HISTORY_HR ADD CONSTRAINT SAT_DV_JOB_HISTORY_HR_FK1 FOREIGN KEY (LNK_DV_JOB_HISTORY_HR_INFO_KEY)
	REFERENCES SCOTT.LNK_DV_JOB_HISTORY_HR_INFO (LNK_DV_JOB_HISTORY_HR_INFO_KEY);

ALTER TABLE SCOTT.LNK_DV_JOB_HISTORY_HR_INFO ADD CONSTRAINT LNK_DV_JOB_HISTORY_HR_INFO_FK2 FOREIGN KEY (HUB_DV_DEPARTMENTS_HR_KEY)
	REFERENCES SCOTT.HUB_DV_DEPARTMENTS_HR (HUB_DV_DEPARTMENTS_HR_KEY);

ALTER TABLE SCOTT.LNK_DV_EMPLOYEES_HR_INFO ADD CONSTRAINT LNK_DV_EMPLOYEES_HR_INFO_FK2 FOREIGN KEY (HUB_DV_DEPARTMENTS_HR_KEY)
	REFERENCES SCOTT.HUB_DV_DEPARTMENTS_HR (HUB_DV_DEPARTMENTS_HR_KEY);

ALTER TABLE SCOTT.LNK_DV_JOB_HISTORY_HR_INFO ADD CONSTRAINT LNK_DV_JOB_HISTORY_HR_INFO_FK4 FOREIGN KEY (HUB_DV_JOBS_HR_KEY)
	REFERENCES SCOTT.HUB_DV_JOBS_HR (HUB_DV_JOBS_HR_KEY);

ALTER TABLE SCOTT.SAT_DV_LOCATIONS_HR ADD CONSTRAINT SAT_DV_LOCATIONS_HR_FK1 FOREIGN KEY (LNK_DV_LOCATIONS_HR_DV_COUNTRIES_HR_KEY)
	REFERENCES SCOTT.LNK_DV_LOCATIONS_HR_DV_COUNTRIES_HR (LNK_DV_LOCATIONS_HR_DV_COUNTRIES_HR_KEY);

ALTER TABLE SCOTT.LNK_DV_JOB_HISTORY_HR_INFO ADD CONSTRAINT LNK_DV_JOB_HISTORY_HR_INFO_FK1 FOREIGN KEY (HUB_DV_JOB_HISTORY_HR_KEY)
	REFERENCES SCOTT.HUB_DV_JOB_HISTORY_HR (HUB_DV_JOB_HISTORY_HR_KEY);

ALTER TABLE SCOTT.LNK_DV_EMPLOYEES_HR_DV_EMPLOYEES_HR ADD CONSTRAINT LNK_DV_EMPLOYEES_HR_DV_EMPLOYEES_HR_FK2 FOREIGN KEY (HUB_HUB_DV_EMPLOYEES_HR.MANAGER_ID_KEY)
	REFERENCES SCOTT.HUB_DV_EMPLOYEES_HR (HUB_DV_EMPLOYEES_HR_KEY);

ALTER TABLE SCOTT.LNK_DV_EMPLOYEES_HR_INFO ADD CONSTRAINT LNK_DV_EMPLOYEES_HR_INFO_FK3 FOREIGN KEY (HUB_DV_JOBS_HR_KEY)
	REFERENCES SCOTT.HUB_DV_JOBS_HR (HUB_DV_JOBS_HR_KEY);

ALTER TABLE SCOTT.SAT_DV_JOBS_HR ADD CONSTRAINT SAT_DV_JOBS_HR_FK1 FOREIGN KEY (HUB_DV_JOBS_HR_KEY)
	REFERENCES SCOTT.HUB_DV_JOBS_HR (HUB_DV_JOBS_HR_KEY);

ALTER TABLE SCOTT.LNK_DV_EMPLOYEES_HR_DV_EMPLOYEES_HR ADD CONSTRAINT LNK_DV_EMPLOYEES_HR_DV_EMPLOYEES_HR_FK1 FOREIGN KEY (HUB_DV_EMPLOYEES_HR_KEY)
	REFERENCES SCOTT.HUB_DV_EMPLOYEES_HR (HUB_DV_EMPLOYEES_HR_KEY);

ALTER TABLE SCOTT.LNK_DV_COUNTRIES_HR_DV_REGIONS_HR ADD CONSTRAINT LNK_DV_COUNTRIES_HR_DV_REGIONS_HR_FK1 FOREIGN KEY (HUB_DV_COUNTRIES_HR_KEY)
	REFERENCES SCOTT.HUB_DV_COUNTRIES_HR (HUB_DV_COUNTRIES_HR_KEY);

ALTER TABLE SCOTT.SAT_DV_EMPLOYEES_HR ADD CONSTRAINT SAT_DV_EMPLOYEES_HR_FK1 FOREIGN KEY (LNK_DV_EMPLOYEES_HR_INFO_KEY)
	REFERENCES SCOTT.LNK_DV_EMPLOYEES_HR_INFO (LNK_DV_EMPLOYEES_HR_INFO_KEY);

ALTER TABLE SCOTT.LNK_DV_DEPARTMENTS_HR_DV_LOCATIONS_HR ADD CONSTRAINT LNK_DV_DEPARTMENTS_HR_DV_LOCATIONS_HR_FK2 FOREIGN KEY (HUB_DV_LOCATIONS_HR_KEY)
	REFERENCES SCOTT.HUB_DV_LOCATIONS_HR (HUB_DV_LOCATIONS_HR_KEY);

ALTER TABLE SCOTT.LNK_DV_LOCATIONS_HR_DV_COUNTRIES_HR ADD CONSTRAINT LNK_DV_LOCATIONS_HR_DV_COUNTRIES_HR_FK1 FOREIGN KEY (HUB_DV_LOCATIONS_HR_KEY)
	REFERENCES SCOTT.HUB_DV_LOCATIONS_HR (HUB_DV_LOCATIONS_HR_KEY);

ALTER TABLE SCOTT.SAT_DV_COUNTRIES_HR ADD CONSTRAINT SAT_DV_COUNTRIES_HR_FK1 FOREIGN KEY (LNK_DV_COUNTRIES_HR_DV_REGIONS_HR_KEY)
	REFERENCES SCOTT.LNK_DV_COUNTRIES_HR_DV_REGIONS_HR (LNK_DV_COUNTRIES_HR_DV_REGIONS_HR_KEY);

ALTER TABLE SCOTT.SAT_DV_REGIONS_HR ADD CONSTRAINT SAT_DV_REGIONS_HR_FK1 FOREIGN KEY (HUB_DV_REGIONS_HR_KEY)
	REFERENCES SCOTT.HUB_DV_REGIONS_HR (HUB_DV_REGIONS_HR_KEY);

ALTER TABLE SCOTT.LNK_DV_COUNTRIES_HR_DV_REGIONS_HR ADD CONSTRAINT LNK_DV_COUNTRIES_HR_DV_REGIONS_HR_FK2 FOREIGN KEY (HUB_DV_REGIONS_HR_KEY)
	REFERENCES SCOTT.HUB_DV_REGIONS_HR (HUB_DV_REGIONS_HR_KEY);

ALTER TABLE SCOTT.SAT_DV_DEPARTMENTS_HR ADD CONSTRAINT SAT_DV_DEPARTMENTS_HR_FK1 FOREIGN KEY (LNK_DV_DEPARTMENTS_HR_DV_LOCATIONS_HR_KEY)
	REFERENCES SCOTT.LNK_DV_DEPARTMENTS_HR_DV_LOCATIONS_HR (LNK_DV_DEPARTMENTS_HR_DV_LOCATIONS_HR_KEY);

ALTER TABLE SCOTT.LNK_DV_JOB_HISTORY_HR_INFO ADD CONSTRAINT LNK_DV_JOB_HISTORY_HR_INFO_FK3 FOREIGN KEY (HUB_DV_EMPLOYEES_HR_KEY)
	REFERENCES SCOTT.HUB_DV_EMPLOYEES_HR (HUB_DV_EMPLOYEES_HR_KEY);

ALTER TABLE SCOTT.LNK_DV_EMPLOYEES_HR_INFO ADD CONSTRAINT LNK_DV_EMPLOYEES_HR_INFO_FK1 FOREIGN KEY (HUB_DV_EMPLOYEES_HR_KEY)
	REFERENCES SCOTT.HUB_DV_EMPLOYEES_HR (HUB_DV_EMPLOYEES_HR_KEY);

