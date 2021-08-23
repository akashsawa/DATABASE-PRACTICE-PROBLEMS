
CREATE TABLE EMP
       (EMPNO INT UNSIGNED NOT NULL,
        ENAME VARCHAR(10),
        JOB VARCHAR(9),
        MGR INT UNSIGNED,
        HIREDATE DATE,
        SAL FLOAT,
        COMM FLOAT,
        DEPTNO INT UNSIGNED);

INSERT INTO EMP VALUES
        (7369, 'SMITH',  'CLERK',     7902,
        STR_TO_DATE('17-DEC-1980', '%d-%b-%Y'),  800, NULL, 20);
INSERT INTO EMP VALUES
        (7499, 'ALLEN',  'SALESMAN',  7698,
        STR_TO_DATE('20-FEB-1981', '%d-%b-%Y'), 1600,  300, 30);
INSERT INTO EMP VALUES
        (7521, 'WARD',   'SALESMAN',  7698,
        STR_TO_DATE('22-FEB-1981', '%d-%b-%Y'), 1250,  500, 30);
INSERT INTO EMP VALUES
        (7566, 'JONES',  'MANAGER',   7839,
        STR_TO_DATE('2-APR-1981', '%d-%b-%Y'),  2975, NULL, 20);
INSERT INTO EMP VALUES
        (7654, 'MARTIN', 'SALESMAN',  7698,
        STR_TO_DATE('28-SEP-1981', '%d-%b-%Y'), 1250, 1400, 30);
INSERT INTO EMP VALUES
        (7698, 'BLAKE',  'MANAGER',   7839,
        STR_TO_DATE('1-MAY-1981', '%d-%b-%Y'),  2850, NULL, 30);
INSERT INTO EMP VALUES
        (7782, 'CLARK',  'MANAGER',   7839,
        STR_TO_DATE('9-JUN-1981', '%d-%b-%Y'),  2450, NULL, 10);
INSERT INTO EMP VALUES
        (7788, 'SCOTT',  'ANALYST',   7566,
        STR_TO_DATE('09-DEC-1982', '%d-%b-%Y'), 3000, NULL, 20);
INSERT INTO EMP VALUES
        (7839, 'KING',   'PRESIDENT', NULL,
        STR_TO_DATE('17-NOV-1981', '%d-%b-%Y'), 5000, NULL, 10);
INSERT INTO EMP VALUES
        (7844, 'TURNER', 'SALESMAN',  7698,
        STR_TO_DATE('8-SEP-1981', '%d-%b-%Y'),  1500,    0, 30);
INSERT INTO EMP VALUES
        (7876, 'ADAMS',  'CLERK',     7788,
        STR_TO_DATE('12-JAN-1983', '%d-%b-%Y'), 1100, NULL, 20);
INSERT INTO EMP VALUES
        (7900, 'JAMES',  'CLERK',     7698,
        STR_TO_DATE('3-DEC-1981', '%d-%b-%Y'),   950, NULL, 30);
INSERT INTO EMP VALUES
        (7902, 'FORD',   'ANALYST',   7566,
        STR_TO_DATE('3-DEC-1981', '%d-%b-%Y'),  3000, NULL, 20);
INSERT INTO EMP VALUES
        (7934, 'MILLER', 'CLERK',     7782,
        STR_TO_DATE('23-JAN-1982', '%d-%b-%Y'), 1300, NULL, 10);

CREATE TABLE DEPT
       (DEPTNO INT UNSIGNED,
        DNAME VARCHAR(14),
        LOC VARCHAR(13));

INSERT INTO DEPT VALUES (10, 'ACCOUNTING', 'NEW YORK');
INSERT INTO DEPT VALUES (20, 'RESEARCH',   'DALLAS');
INSERT INTO DEPT VALUES (30, 'SALES',      'CHICAGO');
INSERT INTO DEPT VALUES (40, 'OPERATIONS', 'BOSTON');

CREATE TABLE BONUS
        (ENAME VARCHAR(10),
         JOB   VARCHAR(9),
         SAL   INT UNSIGNED,
         COMM  INT UNSIGNED);

CREATE TABLE SALGRADE
        (GRADE INT,
         LOSAL INT,
         HISAL INT);

INSERT INTO SALGRADE VALUES (1,  700, 1200);
INSERT INTO SALGRADE VALUES (2, 1201, 1400);
INSERT INTO SALGRADE VALUES (3, 1401, 2000);
INSERT INTO SALGRADE VALUES (4, 2001, 3000);
INSERT INTO SALGRADE VALUES (5, 3001, 9999);

CREATE TABLE DUMMY
        (DUMMY INT);

INSERT INTO DUMMY VALUES (0);

SELECT * FROM EMP;
SELECT * FROM DEPT;
SELECT * FROM BONUS;
SELECT * FROM SALGRADE;
SELECT * FROM DUMMY;
 
-- 1. Display all the records in emp table 
SELECT * FROM EMP;

-- 2) Display all the records in emp table where employee belongs to deptno 10?

SELECT * FROM EMP WHERE DEPTNO=10;

-- 3) Display all the records in emp table where employee does not belong to deptno 30?

SELECT * FROM EMP WHERE DEPTNO!=30;

-- 4) Display total number of records in Emp table?

SELECT COUNT(EMPNO) FROM EMP;

-- 5) Display emp table with salary descending order?

SELECT * FROM EMP ORDER BY SAL DESC;

-- 6) Display all the records in emp table order by ascending deptno, descending salary?
 
SELECT * FROM EMP ORDER BY DEPTNO ASC ,SAL DESC;

-- 2. Display first two column from emp table

SELECT * FROM EMP LIMIT 2;

-- 3. Display the structure of emp, dept and salgrade table

DESC EMP;
DESC DEPT;
DESC SALGRADE;

-- 4. Display unique jobs from employee table

SELECT * FROM EMP;
SELECT * FROM DEPT;
SELECT * FROM BONUS;
SELECT * FROM SALGRADE;
SELECT * FROM DUMMY;

SELECT DISTINCT JOB FROM EMP;

-- 5. Display the output as follows 
--           SCOTT is earning 800 dollars 

SELECT CONCAT(ENAME ," IS EARNING " ,SAL, " DOLLAR ") FROM EMP WHERE ENAME = "SCOTT" ; 

-- 6. Display the output from employee table in following format

SELECT ENAME AS 'EMPLOYEE NAME',JOB AS DESIGNATION FROM EMP ;

-- 7. Display the name of employee and annual salary of each employee. Annual sal must be calculated by considering sal, comm and bonus of 1000$ for each employee

SELECT ENAME, IFNULL(SAL,0)+IFNULL(COMM,0)+1000 AS ANNUAL_SAL   FROM EMP; 

-- 8. Display the list of manager's employee number in following format. Ensure that same manager number must not be repeated. Also ensure that NULL must not be displayed in the result (display NA in place of null)

SELECT DISTINCT EMPNO, IFNULL(EMPNO,'NA') AS MANAGER_EMPNO FROM EMP WHERE UPPER(JOB)='MANAGER'; 

-- 9. Display the employee name, salary and commission and ensure that we consider the commission as 1500 for employees where commission is not paid.

SELECT DISTINCT ENAME,SAL,IFNULL(COMM,1500) FROM EMP;

-- 1. List the employees who are working in department 10

SELECT * FROM EMP WHERE  DEPTNO=10;

-- 2. List the name and salary of employees who are working as CLERK and SALESMAN

SELECT * FROM EMP;
SELECT ENAME,SAL,JOB FROM EMP WHERE JOB IN('CLERK','SALESMAN');

-- 3. List the name of employees who have joined the company after year 1981

SELECT ENAME,HIREDATE FROM EMP WHERE HIREDATE > ('1981-01-01') ;

-- 4. List the name of employees who have joined the company in year 1981

SELECT ENAME,HIREDATE FROM EMP WHERE HIREDATE LIKE '1981-__-__';

-- 5. List the details of employees who are working as CLERK and earning more then 1000$

SELECT * FROM EMP WHERE JOB='CLERK' AND  SAL>1000;

-- 6. List the details of employees who are not managed by any manager

SELECT * FROM EMP WHERE MGR !=7839;

-- 7. List the name of employees who are not earning any commission

SELECT ENAME, COMM FROM EMP WHERE COMM IS NULL;

-- 8. List the details of employees whose total salary (sal and commission) is more then $2000.

SELECT ENAME, SAL,COMM,SAL+COMM AS COMBINED_SAL FROM EMP WHERE (SAL+COMM)>2000;

-- 9. List the details of employees which are working as SALESMAN in department 10 and 30.

SELECT * FROM EMP WHERE JOB = 'SALESMAN' AND DEPTNO IN (10,30);

-- 10. List details of employees who are working as SALESMAN in department 30 and earning some commission

SELECT * FROM EMP WHERE JOB='SALESMAN' AND DEPTNO=30 AND COMM IS NOT NULL AND COMM > 0;

-- 1. Identify and query the data dictionaries which can provide following details
--       - List of tables in scott schema
--       - List of columns and correspondings data types of all the tables in scott schema
--  i)
SHOW DATABASES;
USE INFORMATION_SCHEMA;
SHOW TABLES;
SELECT TABLE_NAME FROM TABLES WHERE TABLE_SCHEMA='DAY4' ;

-- ii)
SELECT * FROM  TABLES;
SELECT * FROM COLUMNS;
SELECT COLUMN_NAME,DATA_TYPE FROM COLUMNS WHERE TABLE_SCHEMA='DAY4';

-- 2. Fetch list of all data dictionary in information schema and observe there naming convention

SHOW TABLES;
SELECT * FROM TABLES;

-- 3. List all data dictionary whose name have 'col' keyword in it.

SELECT * FROM TABLES WHERE TABLE_NAME LIKE '%COL%';





