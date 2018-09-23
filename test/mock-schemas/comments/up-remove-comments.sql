
CREATE TABLE  "AGENTS"
   (
    "AGENT_CODE" CHAR(6) NOT NULL PRIMARY KEY,
	"AGENT_NAME" CHAR(40),
	"WORKING_AREA" CHAR(35),
	"COMMISSION" NUMBER(10,2),
	"PHONE_NO" CHAR(15),
	"COUNTRY" VARCHAR2(25) 
);

CREATE TABLE  "CUSTOMER"
   (	"CUST_CODE" VARCHAR2(6) NOT NULL PRIMARY KEY,
	"CUST_NAME" VARCHAR2(40) NOT NULL,
	"CUST_CITY" CHAR(35),
	"WORKING_AREA" VARCHAR2(35) NOT NULL,
	"CUST_COUNTRY" VARCHAR2(20) NOT NULL,
	"GRADE" NUMBER,
	"OPENING_AMT" NUMBER(12,2) NOT NULL,
	"RECEIVE_AMT" NUMBER(12,2) NOT NULL,
	"PAYMENT_AMT" NUMBER(12,2) NOT NULL,
	"OUTSTANDING_AMT" NUMBER(12,2) NOT NULL,
	"PHONE_NO" VARCHAR2(17) NOT NULL,
	"AGENT_CODE" CHAR(6) NOT NULL REFERENCES AGENTS
);

 
CREATE TABLE  "ORDERS" 
   (
        "ORD_NUM" NUMBER(6,0) NOT NULL PRIMARY KEY, 
	"ORD_AMOUNT" NUMBER(12,2) NOT NULL,
	"ADVANCE_AMOUNT" NUMBER(12,2) NOT NULL,
	"ORD_DATE" DATE NOT NULL,
	"CUST_CODE" VARCHAR2(6) NOT NULL REFERENCES CUSTOMER,
	"AGENT_CODE" CHAR(6) NOT NULL REFERENCES AGENTS,
	"ORD_DESCRIPTION" VARCHAR2(60) NOT NULL
   );