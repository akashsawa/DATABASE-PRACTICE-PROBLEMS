1) Display all records in EMP table those were joined before SCOTT joined?
select * from emp where hiredate <(select hiredate from emp where ename='SCOTT') 

2) Display details of department where department has 3 employees?
SELECT * FROM DEPT WHERE DEPTNO=(SELECT DEPTNO FROM EMP GROUP BY DEPTNO HAVING COUNT(*)=3   ); 

3) Display details of department with Minimum salary and maximum salary?
SELECT * FROM EMP WHERE SAL IN (SELECT SAL FROM EMP GROUP BY DEPTNO WHERE  );


4) Display all ename, sal, deptno,dname from emp, dept table where all department which has employees as well as department does not have any employees. This query should include non matching rows.
SELECT E.ENAME,E.SAL,D.DEPTNO,DNAME FROM EMP E WHERE SAL IN ( RIGHT OUTER JOIN DEPT D ON E.DEPTNO=D.DEPTNO); 

5) Display all ename, sal, deptno from emp, dept table where all employees which has matching department as well as employee does not have any departments. This query should include non matching rows.
SELECT E.ENAME,E.SAL,D.DEPTNO,D.DNAME FROM EMP E LEFT OUTER JOIN DEPT D ON E.DEPTNO=D.DEPTNO; 

6) Display all ename, sal, dname. Result must include all employees as well as all departments. This query should include non matching rows on both the tables.
SELECT E.ENAME,E.SAL,D.DNAME,D.DEPTNO FROM EMP E INNER JOIN DEPT D ON E.DEPTNO=D.DEPTNO; 


7) Display all ename, empno, dname from emp, dept table without joining two tables
SELECT * FROM EMP,DEPT;

8) Display all the departments where department does not have any employees
SELECT DEPTNO FROM DEPT WHERE DEPTNO NOT IN (SELECT DEPTNO FROM EMP);

9) Display all the departments where department does have atleast one employee
SELECT DEPTNO FROM DEPT D WHERE D.DEPTNO IN (SELECT DEPTNO FROM EMP );

10) Display all employees those who are not managers?
SELECT * FROM EMP WHERE JOB !='MANAGER';

11) Display all the records for deptno which belongs to employee name JAMES?
SELECT * FROM EMP,DEPT  WHERE DEPTNO = (SELECT DEPTNO FROM EMP WHERE ENAME='JAMES'); 

12) Display all the records in emp table where salary should be less then or equal to ADAMS salary?
SELECT * FROM EMP WHERE SAL<=(SELECT SAL FROM EMP WHERE ENAME='ADAMS');

13) Display ename, sal, grade, dname, loc for each employee.
SELECT ENAME,SAL,DNAME,LOC FROM EMP E INNER JOIN DEPT D ON E.DEPTNO =D.DEPTNO; 
SELECT * FROM DEPT ;

14) Display all employee whose location is DALLAS?
SELECT * FROM EMP E INNER JOIN DEPT D ON E.DEPTNO=D.DEPTNO WHERE D.LOC='DALLAS';




