ALTER TABLE COMPANIES_TEST DROP CONSTRAINT SYS_C0011557;

DROP INDEX SYS_C0011557;

DROP TABLE COMPANIES_TEST;

CREATE TABLE COMPANIES_TEST (
		COMPANY_NUMBER NUMBER(19 , 0) NOT NULL,
		COMPANY_NAME VARCHAR2(40)
	);

CREATE UNIQUE INDEX SYS_C0011557 ON COMPANIES_TEST (COMPANY_NUMBER ASC);

ALTER TABLE COMPANIES_TEST ADD CONSTRAINT SYS_C0011557 PRIMARY KEY (COMPANY_NUMBER);
