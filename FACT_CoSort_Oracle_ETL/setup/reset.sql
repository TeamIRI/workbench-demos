DROP TABLE ORDERS;

DROP TABLE ORDERS_SORTED;

CREATE TABLE ORDERS (
		ORDER_ID VARCHAR2(5),
		CUSTOMER VARCHAR2(50),
		EMPLOYEE VARCHAR2(50),
		SHIP_DATE TIMESTAMP,
		FREIGHT NUMBER(22 , 0)
	);

CREATE TABLE ORDERS_SORTED (
		ORDER_ID VARCHAR2(5),
		CUSTOMER VARCHAR2(50),
		EMPLOYEE VARCHAR2(50),
		SHIP_DATE TIMESTAMP,
		FREIGHT NUMBER(22 , 0)
	);
