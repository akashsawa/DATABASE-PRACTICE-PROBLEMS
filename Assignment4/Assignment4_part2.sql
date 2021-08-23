-- 1. Write a query to display the names (first_name, last_name) using alias name “First Name", "Last Name"Go to the editor
	USE DAY4;
    CREATE TABLE NEWNAMES
    (
    NAME1 VARCHAR(10),
    NAME2 VARCHAR(10)
    );
    USE NEWNAMES;
    INSERT INTO NEWNAMES VALUES ('AKASH','SAWANT');
    SELECT NAME1 AS FIRST_NAME,NAME2 AS LAST_NAME FROM NEWNAMES;
    
2. Write a query to get unique department ID from employee table.
	USE DAY4;
    SELECT distinct DEPTNO FROM EMP;

3. Write a query to get all employee details from the employee table order by first name, descending.
	SELECT * FROM EMP ORDER BY ENAME DESC;
    
4. Write a query to get the names (first_name, last_name), salary, PF of all the employees (PF is calculated as 15% of salary).
	SELECT ENAME,SAL,(SAL*15) DIV 100 AS PF FROM EMP ;

5. Write a query to get the employee ID, names (first_name, last_name), salary in ascending order of salary.
SELECT * FROM EMP ;
SELECT * FROM EMP ORDER BY SAL,EMPNO;

6. Write a query to get the total salaries payable to employees.
SELECT SUM(SAL) FROM EMP ;

7. Write a query to get the maximum and minimum salary from employees table.
SELECT MAX(SAL),MIN(SAL) FROM EMP;

8. Write a query to get the average salary and number of employees in the employees table.
SELECT AVG(SAL) FROM EMP;

9. Write a query to get the number of employees working with the company.
SELECT COUNT(ENAME) FROM EMP;

10. Write a query to get the number of jobs available in the employees table. 
SELECT COUNT(DISTINCT JOB) FROM EMP;

11. Write a query get all first name from employees table in upper case. 
SELECT UPPER(ENAME) FROM EMP;

12. Write a query to get the first 3 characters of first name from employees table. 
SELECT SUBSTRING(ENAME,1,3) FROM EMP;

13. Write a query to calculate 171*214+625. Go to the editor14. Write a query to get the names (for example Ellen Abel, Sundar Ande etc.) of all the employees from employees table. 

15. Write a query to get first name from employees table after removing white spaces from both side. 
SELECT TRIM(ENAME) FROM EMP;

16. Write a query to get the length of the employee names (first_name, last_name) from employees table.
SELECT LENGTH(ENAME) FROM EMP;
 
17. Write a query to check if the first_name fields of the employees table contains numbers.
SELECT ENAME FROM EMP CHECK(ENAME 
 
18. Write a query to select first 10 records from a table. 
	SELECT * FROM EMP LIMIT 10;

19. Write a query to get monthly salary (round 2 decimal places) of each and every employee Go to the editor
Note : Assume the salary field provides the 'annual salary' information.
Sample table: employees
