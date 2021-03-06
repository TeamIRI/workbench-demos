ALTER TABLE SCOTT.CLIENT DROP CONSTRAINT CLIENT_PK;

DROP TABLE SCOTT.CLIENT;

CREATE TABLE SCOTT.CLIENT (
		ID NUMBER(10 , 0) NOT NULL,
		LAST_NAME VARCHAR2(30),
		FIRST_NAME VARCHAR2(30),
		MIDDLE_NAME VARCHAR2(30),
		STREET VARCHAR2(50),
		CITY VARCHAR2(30),
		STATE VARCHAR2(2),
		ZIP NUMBER(9 , 0),
		PHONE NUMBER(10 , 0),
		EMAIL VARCHAR2(40),
		SSN VARCHAR2(11),
		CREATED TIMESTAMP,
		UPDATED TIMESTAMP
	);

ALTER TABLE SCOTT.CLIENT ADD CONSTRAINT CLIENT_PK PRIMARY KEY (ID);
