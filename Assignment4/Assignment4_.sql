SHOW DATABASES;
USE DAY4;
SHOW TABLES;
SELECT * FROM EMP;

-- 1) Display all the employee whose salary greater then average salary of there department.
SELECT * FROM EMP WHERE SAL> ALL(SELECT AVG(SAL)FROM EMP GROUP BY DEPTNO);

-- 2) Display employees where length of ename is 5
SELECT * FROM EMP WHERE LENGTH(ENAME)=5;

-- 3) Display all employees where ename start with J and ends with S
SELECT * FROM EMP WHERE ENAME LIKE 'J%S';

-- 4) Display all employees where employee does not belong to 10,20,40
-- department_id
SELECT * FROM EMP WHERE DEPTNO NOT IN (10,20,40);

-- 5) Display all employees where jobs does not belong to PRESIDENT and MANAGER?
SELECT * FROM EMP WHERE JOB NOT IN ('PRESIDENT','MANAGER');

-- 6) Display all three figures salary in emp table
SELECT * FROM EMP WHERE SAL LIKE '___';

-- 7) Display all records in emp table for employee who does not receive any commission
SELECT * FROM EMP WHERE COMM IS NULL OR COMM=0;

-- 8) Display all ename where first character could be anything, but second character should be L?
SELECT * FROM EMP WHERE ENAME LIKE '_L%';

-- 9) Display nth highest and nth lowest salary in emp table?
SELECT ENAME,MAX(SAL) FROM EMP;
SELECT ENAME,MIN(SAL) FROM EMP;

-- 10) Display all the departments where department has 3 employees?
SELECT DEPTNO,COUNT(*)AS COUNT FROM EMP GROUP BY DEPTNO HAVING COUNT=3;

-- 11) Display emp name and corresponding subordinates. Use CONNECT BY clause.


-- 12) Display all ename, sal, deptno,dname from emp, dept table where all department which has employees as well as department does not have any employees. This query should include non matching rows.
SELECT * FROM DEPT;
SELECT DNAME,COUNT(ENAME) FROM EMP,DEPT GROUP BY ENAME,DNAME  ;



-- 15) Display all ename, empno, dname, loc from emp, dept table without joining two tables
SELECT * FROM EMP,DEPT ;

-- 16) Display all the departments where department does not have any employees
SELECT * FROM DEPT;
SELECT DNAME,DEPTNO FROM DEPT WHERE DEPTNO NOT IN( SELECT DEPTNO FROM EMP);
SELECT * FROM EMP;

-- 17) Display all the departments where department does have atleast one employee
SELECT DEPTNO,DNAME FROM DEPT WHERE DEPTNO IN (SELECT DEPTNO FROM EMP);

-- 18) Display all employees those who are not managers?
SELECT * FROM EMP WHERE MGR != 7839;

-- 19) Display ename, deptno from emp table with format of {ename} belongs to {deptno}
SELECT CONCAT(ENAME,' BELONGS TO DEPTNO. ',DEPTNO) FROM EMP ;

-- 20) Display total number of employees hired for 1980,1981,1982. The output should be in one record.
SELECT DATE_FORMAT(HIREDATE,'%Y') AS DATEFORM ,COUNT(*) AS COUNT FROM EMP GROUP BY DATEFORM;

-- 21) Display ename, deptno from employee table. Also add another column in the same query and it should display ten for dept 10, twenty for dept 20, thirty for dept 30, fourty for dept 40
SELECT ENAME,
CASE
	WHEN DEPTNO=10 THEN  'TEN'
    WHEN DEPTNO=20 THEN  'TWENTY'
    WHEN DEPTNO=30 THEN  'THIRTY'
    ELSE
    'FOURTY'
END AS DISPLAY
 FROM EMP;

-- 22) Display all the records in emp table. The ename should be lower case. The job first character should be upper case and rest of the character in job field should be lower case.
SELECT LOWER(ENAME),JOB UPDATE JOB SET  ;

-- 23) Display all employees those who have joined in first week of the month ?
select * from emp where to_CHAR(hiredate,'W') = 1; 

-- 24) Display all empoyees those who have joined in the 49th week of the year?

select * from emp where to_char(hiredate,'WW') = 49;

-- 25) Display empno, deptno, salary, salary difference between current record and previous record in emp table. Deptno should be in descending order.

-- 26) Create table emp1 and copy the emp table for deptno 10 while creating the table

-- 27) Create table emp2 with same structure of emp table. Do not copy the data

-- 28) Insert new record in emp1 table, Merge the emp1 table on emp table.

-- 29) Display all the records for deptno which belongs to employee name JAMES? 

-- 30) Display all the records in emp table where salary should be less then or equal to ADAMS salary?

-- 31) Display all employees those were joined before employee WARD joined?

