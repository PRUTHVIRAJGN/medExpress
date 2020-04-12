CREATE TABLE MAIN_CATEGORY (
	ID INT,
	NAME VARCHAR(50),
	DESCRIPTION VARCHAR(255),
	IMAGE_URL VARCHAR(50),
	IS_ACTIVE BOOLEAN,
	CREATED_ON VARCHAR(25),
	LAST_UPDATED_ON VARCHAR(25),
	MAKER_ID VARCHAR(10),
	AUTHOR_ID VARCHAR(10),
	CONSTRAINT PK_MAIN_CATEGORY_ID PRIMARY KEY (ID)
);

CREATE TABLE PAGE_DETAILS (
NAME VARCHAR(50),
VALUE VARCHAR(300),
DESCRIPTION VARCHAR(300),
PAGE_NAME VARCHAR(50),
CREATED_ON VARCHAR(25),
LAST_UPDATED_ON VARCHAR(25),
MAKER_ID VARCHAR(10),
AUTHOR_ID VARCHAR(10),
CONSTRAINT PK_SUB_CATEGORY_ID PRIMARY KEY (NAME)
);

CREATE TABLE SUB_CATEGORY (
	ID INT,
	NAME VARCHAR(50),
	DESCRIPTION VARCHAR(255),
	IMAGE_URL VARCHAR(50),
	TARGET_URL VARCHAR(50),
	IS_ACTIVE BOOLEAN,
	MAIN_CATEGORY_ID INT,
	CREATED_ON VARCHAR(25),
	LAST_UPDATED_ON VARCHAR(25),
	MAKER_ID VARCHAR(10),
	AUTHOR_ID VARCHAR(10),
	CONSTRAINT PK_SUB_CATEGORY_ID PRIMARY KEY (ID),
	CONSTRAINT FK_SUB_CATEGORY_MAIN_CATEGORY_ID FOREIGN KEY (MAIN_CATEGORY_ID) REFERENCES MAIN_CATEGORY (ID)
);
CREATE TABLE EXTRA_SUB_CATEGORY (
	ID INT,
	NAME VARCHAR(50),
	DESCRIPTION VARCHAR(255),
	IMAGE_URL VARCHAR(50),
	TARGET_URL VARCHAR(50),
	IS_ACTIVE BOOLEAN,
	SUB_CATEGORY_ID INT,
	CREATED_ON VARCHAR(25),
	LAST_UPDATED_ON VARCHAR(25),
	MAKER_ID VARCHAR(10),
	AUTHOR_ID VARCHAR(10),
	CONSTRAINT PK_EXTRA_SUB_CATEGORY_ID PRIMARY KEY (ID),
	CONSTRAINT FK_EXTRA_SUB_CATEGORY_SUB_CATEGORY_ID FOREIGN KEY (SUB_CATEGORY_ID) REFERENCES SUB_CATEGORY (ID)
);

CREATE TABLE USER_DETAILS (
	ID INT,
	FIRST_NAME VARCHAR(50),
	LAST_NAME VARCHAR(50),
	GENDER VARCHAR (10),
	ROLE VARCHAR(50),
	IS_ENABLED BOOLEAN,
	PASSWORD VARCHAR(60),
	EMAIL VARCHAR(100),
	CONTACT_NUMBER VARCHAR(15),
	ALTERNATE_CONTACT_NUMBER VARCHAR(15),
	CREATED_ON VARCHAR(25),
	LAST_VISITED_ON VARCHAR(25),
	CONSTRAINT PK_USER_ID PRIMARY KEY(ID)
);

CREATE TABLE USER_ADDRESS (
	ID INT AUTO_INCREMENT,
	USER_ID INT,
	ADDRESS_LINE_1 VARCHAR(100),
	ADDRESS_LINE_2 VARCHAR(100),
	LAND_MARK VARCHAR(50),
	CITY VARCHAR(25),
	STATE VARCHAR(25),
	COUNTRY VARCHAR(25),
	POSTAL_CODE VARCHAR(10),
	IS_BILLING BOOLEAN,
	IS_SHIPPING BOOLEAN,
	CONSTRAINT FK_USER_ADDRESS_USER_ID FOREIGN KEY (USER_ID) REFERENCES USER_DETAILS(ID),
	CONSTRAINT PK_USER_ADDRESS_ID PRIMARY KEY (ID)
);

CREATE TABLE PRODUCT_DETAILS (
	ID INT,
	CODE VARCHAR(20),
	NAME VARCHAR(100),
	BRAND VARCHAR(50),
	DESCRIPTION VARCHAR(300),
	PRODUCT_PRICE DECIMAL(10,2),
	DISCOUNT INT(2),
	PRESCRIPTION BOOLEAN,
	IS_IN_OFFER BOOLEAN,
	IS_IN_DISCOUNT BOOLEAN,
	QUANTITY INT,
	IMAGE_URL VARCHAR(500),
	TARGET_URL VARCHAR(500),
	IS_ACTIVE BOOLEAN,
	SUB_CATEGORY_ID INT,
	EXTRA_SUB_CATEGORY_ID INT,
	SUPPLIER_ID INT,
	PURCHASES VARCHAR(25),
	RATING DECIMAL(2,1),
	PRODUCT_PRICE_PER VARCHAR(25),
	VIEWS VARCHAR(25),
	MAKER_ID VARCHAR(10),
	AUTHOR_ID VARCHAR(10),
	CONSTRAINT PK_PRODUCT_ID PRIMARY KEY (ID),
 	CONSTRAINT FK_PRODUCT_SUB_CATEGORY_ID FOREIGN KEY (SUB_CATEGORY_ID) REFERENCES SUB_CATEGORY(ID),
	CONSTRAINT FK_PRODUCT_SUPPLIER_ID FOREIGN KEY (SUPPLIER_ID) REFERENCES USER_DETAILS(ID)
);