

CREATE TABLE CUSTOMER
(
CID INT,
NAME VARCHAR(20),
GENDER ENUM('M','F','T') NOT NULL,
EMAIL VARCHAR(30) UNIQUE,
PHONE BIGINT UNIQUE NOT NULL,
TOWN VARCHAR(15) NOT NULL,
COUNTRY VARCHAR(10),
PRIMARY KEY(CID,NAME) 
);

INSERT INTO CUSTOMER VALUES(100,'AKASH','M','AAA@GMAIL.COM',123,'MUMBAI','INDIA');

SELECT * FROM CUSTOMER;

CREATE TABLE BOOKING
(
CID1 INT ,
NAME1 VARCHAR(20),
BID INT AUTO_INCREMENT,
FROMDATE DATE ,
CONFIRMLETTER ENUM('Y','N') ,
PAYMENT1 ENUM('Y','N'),
PRIMARY KEY(BID,PAYMENT1),
FOREIGN KEY(CID1,NAME1) REFERENCES CUSTOMER (CID,NAME) ON UPDATE CASCADE
);


ALTER TABLE BOOKING AUTO_INCREMENT=1000;


INSERT INTO BOOKING(CID1,NAME1,FROMDATE,CONFIRMLETTER,PAYMENT1) VALUES('100','AKASH','2017-05-22','Y','N' );
INSERT INTO BOOKING(CID1,NAME1,FROMDATE,CONFIRMLETTER,PAYMENT1) VALUES('101','TINA','2020-11-17','N','Y' );
INSERT INTO BOOKING(CID1,NAME1,FROMDATE,CONFIRMLETTER,PAYMENT1) VALUES('102','SAGAR','20-01-10','N','N' );

SELECT * FROM BOOKING;

CREATE TABLE BOOKINGSTATUS
(
BID INT,
STATUSCODE ENUM('Y','N'),
PRIMARY KEY (BID),
FOREIGN KEY(BID,STATUSCODE) REFERENCES BOOKING(BID,PAYMENT1) ON DELETE CASCADE
);

INSERT INTO BOOKINGSTATUS VALUES(1000,'N');
INSERT INTO BOOKINGSTATUS VALUES(1001,'Y');
INSERT INTO BOOKINGSTATUS VALUES(1002,'N');

SELECT * FROM BOOKINGSTATUS;



CREATE TABLE VEHICLE
(
BID INT,
REGNO BIGINT ,
MILEGE INT CHECK(MILEGE>40),
HIRERATE INT,
SIZE INT,
PRIMARY KEY(REGNO,HIRERATE),
FOREIGN KEY (BID) REFERENCES BOOKINGSTATUS(BID) ON DELETE CASCADE
);

ALTER TABLE VEHICLE ADD REGNO BIGINT UNIQUE;

INSERT INTO VEHICLE VALUES(1000,500,50,12000,10);
INSERT INTO VEHICLE VALUES(1001,650,70,33000,15);
INSERT INTO VEHICLE VALUES(1002,900,90,17000,26);

SELECT * FROM VEHICLE;

CREATE TABLE VEHICLECAT
( 
REG BIGINT,
CATCODE VARCHAR(5) PRIMARY KEY,
FOREIGN KEY(REG) REFERENCES VEHICLE(REGNO) ON UPDATE CASCADE
);

INSERT INTO VEHICLECAT VALUES(500,'AUTO');
INSERT INTO VEHICLECAT VALUES(650,'CAR');
INSERT INTO VEHICLECAT VALUES(900,'BIKE');


SELECT * FROM VEHICLECAT;

CREATE TABLE MODEL
(
REGISTER BIGINT NOT NULL,
HIRERATE INT,
MODELCODE VARCHAR(10),
PRIMARY KEY(MODELCODE,HIRERATE),
FOREIGN KEY (REGISTER,HIRERATE)REFERENCES VEHICLE(REGNO,HIRERATE) ON DELETE CASCADE
);

INSERT INTO MODEL VALUES(500,12000,'ABC333');
INSERT INTO MODEL VALUES(650,33000,'XYZ100');
INSERT INTO MODEL VALUES(900,17000,'PQR70');
SELECT * FROM MODEL;