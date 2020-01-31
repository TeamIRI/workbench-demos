ALTER TABLE SALE_DIM DROP CONSTRAINT ITEM_PRICE_RANGE_DIM_FK;

ALTER TABLE SALE_DIM DROP CONSTRAINT ITEM_DIM_FK;

ALTER TABLE SALE_DIM DROP CONSTRAINT PROJECT_DIM_FK;

ALTER TABLE SALE_DIM DROP CONSTRAINT CATEGORY_DIM_FK;

ALTER TABLE SALE_DIM DROP CONSTRAINT EMP_DIM_FK;

ALTER TABLE SALE_DIM DROP CONSTRAINT DEPT_DIM_FK;

ALTER TABLE SALE_DIM DROP CONSTRAINT EMP_SALARY_RANGE_DIM_FK;

ALTER TABLE EMP_SALARY_RANGE_DIM DROP CONSTRAINT EMP_SALARY_RANGE_DIM_PK;

ALTER TABLE PROJECT_DIM DROP CONSTRAINT PROJECT_DIM_PK;

ALTER TABLE EMP_DIM DROP CONSTRAINT EMP_DIM_PK;

ALTER TABLE CATEGORY_DIM DROP CONSTRAINT CATEGORY_DIM_PK;

ALTER TABLE ITEM_DIM DROP CONSTRAINT ITEM_DIM_PK;

ALTER TABLE ITEM_PRICE_RANGE_DIM DROP CONSTRAINT ITEM_PRICE_RANGE_DIM_PK;

ALTER TABLE DEPT_DIM DROP CONSTRAINT DEPT_DIM_PK;

ALTER TABLE SALE_DIM DROP CONSTRAINT SALE_DIM_PK;

DROP INDEX ITEM_PRICE_RANGE_DIM_PK;

DROP INDEX DEPT_DIM_PK;

DROP INDEX CATEGORY_DIM_PK;

DROP INDEX ITEM_DIM_PK;

DROP INDEX EMP_DIM_PK;

DROP INDEX SALE_DIM_PK;

DROP INDEX EMP_SALARY_RANGE_DIM_PK;

DROP INDEX PROJECT_DIM_PK;

DROP TABLE ITEM_DIM;

DROP TABLE ITEM_PRICE_RANGE_DIM;

DROP TABLE PROJECT_DIM;

DROP TABLE DEPT_DIM;

DROP TABLE EMP_SALARY_RANGE_DIM;

DROP TABLE EMP_DIM;

DROP TABLE CATEGORY_DIM;

DROP TABLE SALE_DIM;

CREATE TABLE ITEM_DIM (
		ITEM_ID NUMBER(22 , 0) NOT NULL,
		ITEM_NAME VARCHAR2(30)
	);

CREATE TABLE ITEM_PRICE_RANGE_DIM (
		ITEM_PRICE_RANGE_ID NUMBER(22 , 0) NOT NULL,
		RANGE_NAME VARCHAR2(30),
		RANGE_START NUMBER(22 , 0),
		RANGE_END NUMBER(22 , 0)
	);

CREATE TABLE PROJECT_DIM (
		PROJECT_ID NUMBER(22 , 0) NOT NULL,
		PROJECT_NAME VARCHAR2(30)
	);

CREATE TABLE DEPT_DIM (
		DEPT_ID NUMBER(22 , 0) NOT NULL,
		DEPT_NAME VARCHAR2(30)
	);

CREATE TABLE EMP_SALARY_RANGE_DIM (
		EMP_SALARY_RANGE_ID NUMBER(22 , 0) NOT NULL,
		RANGE_NAME VARCHAR2(30),
		RANGE_START NUMBER(22 , 0),
		RANGE_END NUMBER(22 , 0)
	);

CREATE TABLE EMP_DIM (
		EMP_ID NUMBER(22 , 0) NOT NULL,
		EMP_NAME VARCHAR2(30)
	);

CREATE TABLE CATEGORY_DIM (
		CATEGORY_ID NUMBER(22 , 0) NOT NULL,
		CATEGORY_NAME VARCHAR2(70)
	);

CREATE TABLE SALE_DIM (
		SALE_ID NUMBER(22 , 0) NOT NULL,
		SALE_DATE DATE,
		QTY_SOLD NUMBER(22 , 0),
		DEPT_ID NUMBER(22 , 0),
		EMP_ID NUMBER(22 , 0),
		PROJECT_ID NUMBER(22 , 0),
		ITEM_ID NUMBER(22 , 0),
		CATEGORY_ID NUMBER(22 , 0),
		EMP_SALARY_RANGE_ID NUMBER(22 , 0),
		ITEM_PRICE_RANGE_ID NUMBER(22 , 0)
	);

CREATE UNIQUE INDEX ITEM_PRICE_RANGE_DIM_PK ON ITEM_PRICE_RANGE_DIM (ITEM_PRICE_RANGE_ID ASC);

CREATE UNIQUE INDEX DEPT_DIM_PK ON DEPT_DIM (DEPT_ID ASC);

CREATE UNIQUE INDEX CATEGORY_DIM_PK ON CATEGORY_DIM (CATEGORY_ID ASC);

CREATE UNIQUE INDEX ITEM_DIM_PK ON ITEM_DIM (ITEM_ID ASC);

CREATE UNIQUE INDEX EMP_DIM_PK ON EMP_DIM (EMP_ID ASC);

CREATE UNIQUE INDEX SALE_DIM_PK ON SALE_DIM (SALE_ID ASC);

CREATE UNIQUE INDEX EMP_SALARY_RANGE_DIM_PK ON EMP_SALARY_RANGE_DIM (EMP_SALARY_RANGE_ID ASC);

CREATE UNIQUE INDEX PROJECT_DIM_PK ON PROJECT_DIM (PROJECT_ID ASC);

ALTER TABLE EMP_SALARY_RANGE_DIM ADD CONSTRAINT EMP_SALARY_RANGE_DIM_PK PRIMARY KEY (EMP_SALARY_RANGE_ID);

ALTER TABLE PROJECT_DIM ADD CONSTRAINT PROJECT_DIM_PK PRIMARY KEY (PROJECT_ID);

ALTER TABLE EMP_DIM ADD CONSTRAINT EMP_DIM_PK PRIMARY KEY (EMP_ID);

ALTER TABLE CATEGORY_DIM ADD CONSTRAINT CATEGORY_DIM_PK PRIMARY KEY (CATEGORY_ID);

ALTER TABLE ITEM_DIM ADD CONSTRAINT ITEM_DIM_PK PRIMARY KEY (ITEM_ID);

ALTER TABLE ITEM_PRICE_RANGE_DIM ADD CONSTRAINT ITEM_PRICE_RANGE_DIM_PK PRIMARY KEY (ITEM_PRICE_RANGE_ID);

ALTER TABLE DEPT_DIM ADD CONSTRAINT DEPT_DIM_PK PRIMARY KEY (DEPT_ID);

ALTER TABLE SALE_DIM ADD CONSTRAINT SALE_DIM_PK PRIMARY KEY (SALE_ID);

ALTER TABLE SALE_DIM ADD CONSTRAINT ITEM_PRICE_RANGE_DIM_FK FOREIGN KEY (ITEM_PRICE_RANGE_ID)
	REFERENCES ITEM_PRICE_RANGE_DIM (ITEM_PRICE_RANGE_ID);

ALTER TABLE SALE_DIM ADD CONSTRAINT ITEM_DIM_FK FOREIGN KEY (ITEM_ID)
	REFERENCES ITEM_DIM (ITEM_ID);

ALTER TABLE SALE_DIM ADD CONSTRAINT PROJECT_DIM_FK FOREIGN KEY (PROJECT_ID)
	REFERENCES PROJECT_DIM (PROJECT_ID);

ALTER TABLE SALE_DIM ADD CONSTRAINT CATEGORY_DIM_FK FOREIGN KEY (CATEGORY_ID)
	REFERENCES CATEGORY_DIM (CATEGORY_ID);

ALTER TABLE SALE_DIM ADD CONSTRAINT EMP_DIM_FK FOREIGN KEY (EMP_ID)
	REFERENCES EMP_DIM (EMP_ID);

ALTER TABLE SALE_DIM ADD CONSTRAINT DEPT_DIM_FK FOREIGN KEY (DEPT_ID)
	REFERENCES DEPT_DIM (DEPT_ID);

ALTER TABLE SALE_DIM ADD CONSTRAINT EMP_SALARY_RANGE_DIM_FK FOREIGN KEY (EMP_SALARY_RANGE_ID)
	REFERENCES EMP_SALARY_RANGE_DIM (EMP_SALARY_RANGE_ID);
