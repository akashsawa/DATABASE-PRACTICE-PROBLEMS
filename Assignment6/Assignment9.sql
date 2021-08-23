1. Write a program to take the input as empno and return the experience of employee in terms of number of years.

DELIMITER /
DROP function IF EXISTS OP1 /
CREATE FUNCTION OP1(X INT) RETURNS INT
BEGIN 
declare YOE INT;
SELECT YEAR(HIRE_DATE) INTO YOE FROM employees WHERE X=employee_id; 
SET YOE=2021-YOE;
RETURN YOE;
END /
DELIMITER ;

SELECT OP1(100) AS YEARS_OF_EXPERIENCE  ;

2. Write a program to take the input as deptno and return the comma separated list of employee names



DELIMITER /
DROP procedure IF EXISTS OP2 /
CREATE procedure OP2(X INT) 
BEGIN
declare EMPNAME VARCHAR (500);
DECLARE DEPTID INT;
DECLARE FLAG INT DEFAULT 0;
DECLARE CUR_1 CURSOR FOR SELECT DEPARTMENT_ID, CONCAT(FIRST_NAME," ",LAST_NAME) AS EMPNAME FROM EMPLOYEES WHERE X=DEPARTMENT_ID;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET FLAG=1;
CREATE TEMPORARY TABLE DETAILS(DEPTID INT, EMPNAME VARCHAR(700));

OPEN CUR_1;
LEVEL_1 : LOOP

FETCH CUR_1 INTO DEPTID,EMPNAME;

IF FLAG=1 THEN
LEAVE LEVEL_1;
END IF ;
INSERT INTO DETAILS VALUES(DEPTID,EMPNAME);

END LOOP LEVEL_1 ;

SELECT DISTINCT DEPTID, EMPNAME  FROM DETAILS;
DROP TABLE DETAILS;
END /
DELIMITER ;

CALL OP2(50);

-- SELECT GROUP_CONCAT(FIRST_NAME," ",LAST_NAME) INTO NAMES FROM EMPLOYEES WHERE X=DEPARTMENT_ID;
-- RETURN NAMES;


3. Add a new column incentive to emp table. Write a program to calculate and update the incentive using following logic.
     If employees salary is more then avg salary of dept then incentive is 0
	 If employees salary is less then avg salary of dept then incentive is 10% of salary


DELIMITER /
DROP procedure IF EXISTS OP3 /
CREATE procedure OP3(X INT)
BEGIN 
declare YOE INT;
SELECT YEAR(HIRE_DATE) INTO YOE FROM employees WHERE X=employee_id; 
SET YOE=2021-YOE;
RETURN YOE;
END /
DELIMITER ;

SELECT FIRST_NAME,SALARY,DEPARTMENT_ID FROM EMPLOYEES;
SELECT DEPARTMENT_ID,AVG(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENT_ID;

SELECT FIRST_NAME,SALARY,DEPARTMENT_ID FROM EMPLOYEES E WHERE E.SALARY>(SELECT AVG(SALARY) FROM EMPLOYEES V GROUP BY department_ID HAVING E.DEPARTMENT_ID=V.DEPARTMENT_ID);

SELECT EMPLOYEE_ID,department_id,salary FROM EMPLOYEES e WHERE E.SALARY> ( SELECT AVG(SALARY) FROM employees v GROUP BY department_id HAVING E.department_id=v.department_id) ;

-- select avg(salary) from employees where department_id=50;



SELECT OP1(100) AS YEARS_OF_EXPERIENCE  ;


3. Add a new column incentive to emp table. Write a program to calculate and update the incentive using following logic.
     If employees salary is more then avg salary of dept then incentive is 0
	 If employees salary is less then avg salary of dept then incentive is 10% of salary

DELIMITER /
DROP PROCEDURE IF EXISTS F1 /
DROP TABLE IF EXISTS EMP_INCENTIVE/
CREATE PROCEDURE F1()
BEGIN 
declare deptid int;
declare empid int;
declare sal double;
declare INCENTIVE double;
declare flag int default 0;
declare c int;
declare cur_1 cursor for SELECT department_id,EMPLOYEE_ID,salary FROM EMPLOYEES ;

CREATE TEMPORARY TABLE EMP_INCENTIVE(empid int,INCENTIVE double);
select count(*) into c from employees;
open cur_1;
level_1:loop 
fetch cur_1 into deptid,empid,sal;
if(c<0) then
leave level_1;
end if ;

if(sal>(SELECT AVG(SALARY) FROM employees  GROUP BY department_id having deptid=department_id)) then
set INCENTIVE=0;
INSERT INTO EMP_INCENTIVE VALUES(EMPID,INCENTIVE);
end if;

set c=c-1;
end loop;
SELECT * FROM EMP_INCENTIVE;
end /
delimiter ;

call F1();

