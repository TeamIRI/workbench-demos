CREATE TABLE test.COMPANIES_TEST (
	COMPANY_NUMBER NUMERIC(19,2),
	COMPANY_NAME VARCHAR(40)
	);

ALTER TABLE test.COMPANIES_TEST ADD CONSTRAINT PRIMARY KEY (COMPANY_NUMBER);

