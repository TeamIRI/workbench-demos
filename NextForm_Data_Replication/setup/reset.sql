DROP TABLE CUSTOMERS_REP;

CREATE TABLE CUSTOMERS_REP(
	SSN NUMBER(9, 0) NOT NULL,
	LASTNAME VARCHAR2(50) NOT NULL,
	FIRSTNAME VARCHAR2(50),
	ADDRESS VARCHAR2(50),
	CITY VARCHAR2(50),
	STATE VARCHAR2(2),
	ZIP VARCHAR2(5)
);

ALTER TABLE CUSTOMERS_REP ADD CONSTRAINT CUSTOMERS_REP_SSN_PK PRIMARY KEY (SSN);