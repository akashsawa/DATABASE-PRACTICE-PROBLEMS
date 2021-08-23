SELECT ID , SALARY,CASE
WHEN SALARY > 50000 THEN 'GRADE A'
WHEN SALARY > 60000 THEN 'GRADE B'
ELSE 'GRADE C' 
END
AS GRADE
FROM EMPINSERT;



Microsoft Windows [Version 10.0.19043.1052]
(c) Microsoft Corporation. All rights reserved.

C:\Users\sagar>A:

A:\>cd A:\MySQL\MySQL Server 8.0\bin

A:\MySQL\MySQL Server 8.0\bin>mysql.exe -u akash -p
Enter password: **********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 8
Server version: 8.0.25 MySQL Community Server - GPL

Copyright (c) 2000, 2021, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> SELECT ROUND(346.45,1);
+-----------------+
| ROUND(346.45,1) |
+-----------------+
|           346.5 |
+-----------------+
1 row in set (0.10 sec)

mysql> SELECT ROUND(346.45,-2);
+------------------+
| ROUND(346.45,-2) |
+------------------+
|              300 |
+------------------+
1 row in set (0.05 sec)

mysql> SELECT CEIL(346.001);
+---------------+
| CEIL(346.001) |
+---------------+
|           347 |
+---------------+
1 row in set (0.06 sec)

mysql> SELECT FLOOR(346.001);
+----------------+
| FLOOR(346.001) |
+----------------+
|            346 |
+----------------+
1 row in set (0.00 sec)

mysql> SELECT FLOOR(346.0009);
+-----------------+
| FLOOR(346.0009) |
+-----------------+
|             346 |
+-----------------+
1 row in set (0.00 sec)

mysql> SELECT FLOOR(35.348);
+---------------+
| FLOOR(35.348) |
+---------------+
|            35 |
+---------------+
1 row in set (0.00 sec)

mysql> SELECT TRUNCATE (345.567,1);
+----------------------+
| TRUNCATE (345.567,1) |
+----------------------+
|                345.5 |
+----------------------+
1 row in set (0.00 sec)

mysql> SELECT TRUNCATE (345.567,3);
+----------------------+
| TRUNCATE (345.567,3) |
+----------------------+
|              345.567 |
+----------------------+
1 row in set (0.00 sec)

mysql> SELECT TRUNCATE (345.567,1);
+----------------------+
| TRUNCATE (345.567,1) |
+----------------------+
|                345.5 |
+----------------------+
1 row in set (0.00 sec)

mysql> SELECT TRUNCATE (345.567,2);
+----------------------+
| TRUNCATE (345.567,2) |
+----------------------+
|               345.56 |
+----------------------+
1 row in set (0.00 sec)

mysql> SELECT TRUNCATE (345.567,0);
+----------------------+
| TRUNCATE (345.567,0) |
+----------------------+
|                  345 |
+----------------------+
1 row in set (0.00 sec)

mysql> SELECT TRUNCATE (345.567,3);
+----------------------+
| TRUNCATE (345.567,3) |
+----------------------+
|              345.567 |
+----------------------+
1 row in set (0.00 sec)

mysql> SELECT TRUNCATE (345.567,-1);
+-----------------------+
| TRUNCATE (345.567,-1) |
+-----------------------+
|                   340 |
+-----------------------+
1 row in set (0.00 sec)

mysql> SELECT TRUNCATE (345.567,-3);
+-----------------------+
| TRUNCATE (345.567,-3) |
+-----------------------+
|                     0 |
+-----------------------+
1 row in set (0.00 sec)

mysql> SELECT 34 DIV 4;
+----------+
| 34 DIV 4 |
+----------+
|        8 |
+----------+
1 row in set (0.02 sec)

mysql> SELECT 34 MOD 4;
+----------+
| 34 MOD 4 |
+----------+
|        2 |
+----------+
1 row in set (0.03 sec)

mysql> SELECT MOD(12,5);
+-----------+
| MOD(12,5) |
+-----------+
|         2 |
+-----------+
1 row in set (0.00 sec)

mysql> SELECT SQRT(729);
+-----------+
| SQRT(729) |
+-----------+
|        27 |
+-----------+
1 row in set (0.06 sec)

mysql> SELECT SQRT(254);
+--------------------+
| SQRT(254)          |
+--------------------+
| 15.937377450509228 |
+--------------------+
1 row in set (0.00 sec)

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| car_hire_model     |
| dacstudent         |
| day4               |
| humanresource      |
| information_schema |
| manufacturedate    |
| manufacturer       |
| mysql              |
| performance_schema |
| sakila             |
| sales              |
| schott             |
| sys                |
| world              |
+--------------------+
14 rows in set (2.01 sec)

mysql> USE DACSTUDENT;
Database changed
mysql> SELECT * FROM EMPINSERT;
+------+-------+--------+------------+-----------+
| ID   | NAME  | SALARY | DOB        | COMMISION |
+------+-------+--------+------------+-----------+
|  100 | AKASH |  80000 | 2020-02-12 |      NULL |
|  101 | SAGAR | 100000 | 2020-02-12 |      NULL |
|  102 | VIJAY |  60000 | 2014-11-25 |      NULL |
+------+-------+--------+------------+-----------+
3 rows in set (0.21 sec)

mysql> SELECT SALARY,TRUNCATE(SALARY*1.56) FROM EMPLOYEE LIMIT 2;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ') FROM EMPLOYEE LIMIT 2' at line 1
mysql> SELECT SALARY,TRUNCATE(SALARY*1.56) FROM EMPLOYEE LIMIT 3;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ') FROM EMPLOYEE LIMIT 3' at line 1
mysql> SELECT SALARY,TRUNCATE(SALARY*1.56) FROM EMPLOYEE;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ') FROM EMPLOYEE' at line 1
mysql> SELECT SALARY,TRUNCATE(SALARY*1.56) FROM EMPINSERT LIMIT 2;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ') FROM EMPINSERT LIMIT 2' at line 1
mysql> SELECT SALARY,TRUNCATE(SALARY*1.56) FROM
    -> ^C
mysql> ^C
mysql> SELECT SALARY,TRUNCATE(SALARY*1.56) FROM  EMPINSERT;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ') FROM  EMPINSERT' at line 1
mysql> SELECT SALARY FROM  EMPINSERT;
+--------+
| SALARY |
+--------+
|  80000 |
| 100000 |
|  60000 |
+--------+
3 rows in set (0.00 sec)

mysql> SELECT SALARY, ROUND(SALARY * 1.56) ,LENGTH(NAME),UPPER(NAME) FROM  EMPINSERT WHERE LOWER(NAME)='AKASH';
+--------+----------------------+--------------+-------------+
| SALARY | ROUND(SALARY * 1.56) | LENGTH(NAME) | UPPER(NAME) |
+--------+----------------------+--------------+-------------+
|  80000 |               124800 |            5 | AKASH       |
+--------+----------------------+--------------+-------------+
1 row in set (0.06 sec)

mysql> SELECT SALARY,TRUNCATE(SALARY * 1.56) FROM EMPINSERT;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ') FROM EMPINSERT' at line 1
mysql> SELECT SALARY, ROUND(SALARY * 1.56) ,LENGTH(NAME),UPPER(NAME), CONCAT(NAME," ",SALARY) FROM  EMPINSERT WHERE LOWER(NAME)='AKASH';
+--------+----------------------+--------------+-------------+-------------------------+
| SALARY | ROUND(SALARY * 1.56) | LENGTH(NAME) | UPPER(NAME) | CONCAT(NAME," ",SALARY) |
+--------+----------------------+--------------+-------------+-------------------------+
|  80000 |               124800 |            5 | AKASH       | AKASH 80000             |
+--------+----------------------+--------------+-------------+-------------------------+
1 row in set (0.04 sec)

mysql> SELECT SUBSTR(NAME,3,2) FROM EMPINSERT ;
+------------------+
| SUBSTR(NAME,3,2) |
+------------------+
| AS               |
| GA               |
| JA               |
+------------------+
3 rows in set (0.00 sec)

mysql> SELECT TRIM('      AKASH  SAWANT     ');
+----------------------------------+
| TRIM('      AKASH  SAWANT     ') |
+----------------------------------+
| AKASH  SAWANT                    |
+----------------------------------+
1 row in set (0.02 sec)

mysql> SELECT LPAD('AKASH',10,'*');
+----------------------+
| LPAD('AKASH',10,'*') |
+----------------------+
| *****AKASH           |
+----------------------+
1 row in set (0.06 sec)

mysql> SELECT RPAD('AKASH',10,'*');
+----------------------+
| RPAD('AKASH',10,'*') |
+----------------------+
| AKASH*****           |
+----------------------+
1 row in set (0.02 sec)

mysql> SELECT ('AKASH','AK','SA');
ERROR 1241 (21000): Operand should contain 1 column(s)
mysql> SELECT REPLACE('AKASH','AK','SA');
+----------------------------+
| REPLACE('AKASH','AK','SA') |
+----------------------------+
| SAASH                      |
+----------------------------+
1 row in set (0.04 sec)

mysql> SELECT REPLACE('AKASH,SAWANT',',','   ');
+-----------------------------------+
| REPLACE('AKASH,SAWANT',',','   ') |
+-----------------------------------+
| AKASH   SAWANT                    |
+-----------------------------------+
1 row in set (0.00 sec)

mysql> SELECT REPLACE('AKASH','AK','PAS');
+-----------------------------+
| REPLACE('AKASH','AK','PAS') |
+-----------------------------+
| PASASH                      |
+-----------------------------+
1 row in set (0.00 sec)

mysql> SELECT DOB FROM EMPINSERT;
+------------+
| DOB        |
+------------+
| 2020-02-12 |
| 2020-02-12 |
| 2014-11-25 |
+------------+
3 rows in set (0.00 sec)

mysql> SELECT DATE_FORMAT(DOB,'%d/%m/%Y %h:%i:%s') FROM EMPINSERT;
+--------------------------------------+
| DATE_FORMAT(DOB,'%d/%m/%Y %h:%i:%s') |
+--------------------------------------+
| 12/02/2020 12:00:00                  |
| 12/02/2020 12:00:00                  |
| 25/11/2014 12:00:00                  |
+--------------------------------------+
3 rows in set (0.06 sec)

mysql> SELECT DATE_FORMAT(DOB,'%d/%m/%Y   %h:%i:%s') FROM EMPINSERT;
+----------------------------------------+
| DATE_FORMAT(DOB,'%d/%m/%Y   %h:%i:%s') |
+----------------------------------------+
| 12/02/2020   12:00:00                  |
| 12/02/2020   12:00:00                  |
| 25/11/2014   12:00:00                  |
+----------------------------------------+
3 rows in set (0.00 sec)

mysql> select now() + interval 30 day;
+-------------------------+
| now() + interval 30 day |
+-------------------------+
| 2021-08-04 08:41:46     |
+-------------------------+
1 row in set (0.07 sec)

mysql> select now() + interval 2 MONTH;
+--------------------------+
| now() + interval 2 MONTH |
+--------------------------+
| 2021-09-05 08:42:05      |
+--------------------------+
1 row in set (0.00 sec)

mysql> select now() + interval 2 YEAR;
+-------------------------+
| now() + interval 2 YEAR |
+-------------------------+
| 2023-07-05 08:42:14     |
+-------------------------+
1 row in set (0.00 sec)

mysql> select now() - interval 2 YEAR;
+-------------------------+
| now() - interval 2 YEAR |
+-------------------------+
| 2019-07-05 08:42:42     |
+-------------------------+
1 row in set (0.00 sec)

mysql> SELECT  DAY_ADD(NOW(),INTERVAL 2 MONTH);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 1
mysql> SELECT  MONTH_ADD(NOW(),INTERVAL 2 MONTH);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 1
mysql> SELECT  DATE_ADD(NOW(),INTERVAL 2 MONTH);
+----------------------------------+
| DATE_ADD(NOW(),INTERVAL 2 MONTH) |
+----------------------------------+
| 2021-09-05 08:47:37              |
+----------------------------------+
1 row in set (0.00 sec)

mysql> SELECT STR_TO_DATE('30-01-1963','%d-%M-%Y');
+--------------------------------------+
| STR_TO_DATE('30-01-1963','%d-%M-%Y') |
+--------------------------------------+
| NULL                                 |
+--------------------------------------+
1 row in set, 1 warning (0.07 sec)

mysql> SELECT STR_TO_DATE('30-01-1963','%d-%m-%Y');
+--------------------------------------+
| STR_TO_DATE('30-01-1963','%d-%m-%Y') |
+--------------------------------------+
| 1963-01-30                           |
+--------------------------------------+
1 row in set (0.00 sec)

mysql> CREATE TABLE EDATE
    -> (
    -> DATEVALUE DATETIME
    -> );
Query OK, 0 rows affected (2.92 sec)

mysql> INSERT INTO EDATE VALUES(STR_TO_DATE('05-08-2011','%d/%m/%Y');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> INSERT INTO EDATE VALUES(STR_TO_DATE('05-08-2011','%d-%m-%Y');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> INSERT INTO EDATE VALUES(STR_TO_DATE('05-08-2011','%d-%m-%Y'));
Query OK, 1 row affected (0.20 sec)

mysql> select * from edate;
+---------------------+
| DATEVALUE           |
+---------------------+
| 2011-08-05 00:00:00 |
+---------------------+
1 row in set (0.00 sec)

mysql> SELECT ID , SALARY,CASE
    -> WHEN SALARY > 50000 THEN 'GRADE A'
    -> WHEN SALARY > 60000 THEN 'GRADE B'
    -> ELSE GRADE CASEEND
    ->  AS GRADEFROM EMPINSERT;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'CASEEND
 AS GRADEFROM EMPINSERT' at line 4
mysql> SELECT ID , SALARY,CASE
    -> WHEN SALARY > 50000 THEN 'GRADE A'
    -> WHEN SALARY > 60000 THEN 'GRADE B'
    -> ELSE GRADE CASEEND
    ->  AS GRADEFROM EMPINSERT;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'CASEEND
 AS GRADEFROM EMPINSERT' at line 4
mysql> SELECT ID , SALARY,CASE
    -> WHEN SALARY > 50000 THEN 'GRADE A'
    -> WHEN SALARY > 60000 THEN 'GRADE B'
    -> ELSE GRADE C
    -> END
    -> FROM EMPINSERT;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'C
END
FROM EMPINSERT' at line 4
mysql> SELECT ID , SALARY,CASE
    -> WHEN SALARY > 50000 THEN 'GRADE A'
    -> WHEN SALARY > 60000 THEN 'GRADE B'
    -> ELSE GRADE C
    -> END
    -> AS GRADE
    -> FROM EMPINSERT;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'C
END
AS GRADE
FROM EMPINSERT' at line 4
mysql> FROM EMPINSERT;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FROM EMPINSERT' at line 1
mysql> SELECT ID , SALARY,CASE
    -> WHEN SALARY > 50000 THEN 'GRADE A'
    -> WHEN SALARY > 60000 THEN 'GRADE B'
    -> ELSE 'GRADE C'
    -> END
    -> AS GRADE
    -> FROM EMPINSERT;
+------+--------+---------+
| ID   | SALARY | GRADE   |
+------+--------+---------+
|  100 |  80000 | GRADE A |
|  101 | 100000 | GRADE A |
|  102 |  60000 | GRADE A |
+------+--------+---------+
3 rows in set (0.05 sec)

mysql> SELECT COUNT(*) FROM EMPINSERT;
+----------+
| COUNT(*) |
+----------+
|        3 |
+----------+
1 row in set (0.10 sec)

mysql> SELECT COUNT(*), COUNT(COMMISSON_PCT) FROM EMPINSERT;
ERROR 1054 (42S22): Unknown column 'COMMISSON_PCT' in 'field list'
mysql> SELECT SUM(SALARY) FROM EMPINSERT;
+-------------+
| SUM(SALARY) |
+-------------+
|      240000 |
+-------------+
1 row in set (0.06 sec)

mysql> SELECT MAX(SALARY) FROM EMPINSERTL
    -> ^C
mysql> SELECT MAX(SALARY) FROM EMPINSERT;
+-------------+
| MAX(SALARY) |
+-------------+
|      100000 |
+-------------+
1 row in set (0.07 sec)

mysql> SELECT AVG(SALARY) FROM EMPINSERT;
+-------------+
| AVG(SALARY) |
+-------------+
|  80000.0000 |
+-------------+
1 row in set (0.06 sec)

mysql> SELECT COUNT(*) ,SUM(SALARY), MAX(SALARY),MIN(SALARY)  ,AVG(SALARY) FROM EMPINSERT;
+----------+-------------+-------------+-------------+-------------+
| COUNT(*) | SUM(SALARY) | MAX(SALARY) | MIN(SALARY) | AVG(SALARY) |
+----------+-------------+-------------+-------------+-------------+
|        3 |      240000 |      100000 |       60000 |  80000.0000 |
+----------+-------------+-------------+-------------+-------------+
1 row in set (0.00 sec)

mysql> SELECT SUM(SALRY) FROM EMPINSERT WHERE ID=101;
ERROR 1054 (42S22): Unknown column 'SALRY' in 'field list'
mysql> SELECT SUM(SALARY) FROM EMPINSERT WHERE ID=101;
+-------------+
| SUM(SALARY) |
+-------------+
|      100000 |
+-------------+
1 row in set (0.05 sec)

mysql> SELECT SUM(SALARY) FROM EMPINSERT WHERE ID=102;
+-------------+
| SUM(SALARY) |
+-------------+
|       60000 |
+-------------+
1 row in set (0.00 sec)

mysql> SELECT ID,NAME,SALARY FROM EMPINSERT WHERE IS IN(100,101,102);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'IS IN(100,101,102)' at line 1
mysql> SELECT ID,NAME,SALARY FROM EMPINSERT WHERE ID IN(100,101,102);
+------+-------+--------+
| ID   | NAME  | SALARY |
+------+-------+--------+
|  100 | AKASH |  80000 |
|  101 | SAGAR | 100000 |
|  102 | VIJAY |  60000 |
+------+-------+--------+
3 rows in set (0.00 sec)

mysql> SELECT ID,NAME,SALARY FROM EMPINSERT WHERE ID IN(100,101) GROUP BY ID;;
+------+-------+--------+
| ID   | NAME  | SALARY |
+------+-------+--------+
|  100 | AKASH |  80000 |
|  101 | SAGAR | 100000 |
+------+-------+--------+
2 rows in set (0.06 sec)

ERROR:
No query specified

mysql> SELECT ID,NAME,SALARY FROM EMPINSERT WHERE ID IN(100,101) GROUP BY ID;;
+------+-------+--------+
| ID   | NAME  | SALARY |
+------+-------+--------+
|  100 | AKASH |  80000 |
|  101 | SAGAR | 100000 |
+------+-------+--------+
2 rows in set (0.00 sec)

ERROR:
No query specified

mysql> SELECT ID,NAME,SALARY FROM EMPINSERT WHERE ID IN(100,101) GROUP BY ID;
+------+-------+--------+
| ID   | NAME  | SALARY |
+------+-------+--------+
|  100 | AKASH |  80000 |
|  101 | SAGAR | 100000 |
+------+-------+--------+
2 rows in set (0.03 sec)

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| car_hire_model     |
| dacstudent         |
| day4               |
| humanresource      |
| information_schema |
| manufacturedate    |
| manufacturer       |
| mysql              |
| performance_schema |
| sakila             |
| sales              |
| schott             |
| sys                |
| world              |
+--------------------+
14 rows in set (0.01 sec)

mysql> USE DAY4;
Database changed
mysql> SHOW TABLES;
+----------------+
| Tables_in_day4 |
+----------------+
| bonus          |
| dept           |
| dummy          |
| emp            |
| orders         |
| parts          |
| salgrade       |
| suppliers      |
+----------------+
8 rows in set (0.22 sec)

mysql> SELECT * FROM EMP;
+-------+--------+-----------+------+------------+------+------+--------+
| EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL  | COMM | DEPTNO |
+-------+--------+-----------+------+------------+------+------+--------+
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800 | NULL |     20 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600 |  300 |     30 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250 |  500 |     30 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975 | NULL |     20 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250 | 1400 |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850 | NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450 | NULL |     10 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000 | NULL |     20 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000 | NULL |     10 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500 |    0 |     30 |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100 | NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950 | NULL |     30 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000 | NULL |     20 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300 | NULL |     10 |
+-------+--------+-----------+------+------------+------+------+--------+
14 rows in set (0.12 sec)

mysql> SELECT SUM(SAL) FROM EMP GROUP BY DEPTNO;
+----------+
| SUM(SAL) |
+----------+
|    10875 |
|     9400 |
|     8750 |
+----------+
3 rows in set (0.07 sec)

mysql> SELECT DEPTNO,SUM(SAL),MAX(SAL),MIN(SAL) FROM EMP GROUP BY DEPTNO;
+--------+----------+----------+----------+
| DEPTNO | SUM(SAL) | MAX(SAL) | MIN(SAL) |
+--------+----------+----------+----------+
|     20 |    10875 |     3000 |      800 |
|     30 |     9400 |     2850 |      950 |
|     10 |     8750 |     5000 |     1300 |
+--------+----------+----------+----------+
3 rows in set (0.05 sec)

mysql> SELECT DEPTNO,SUM(SAL),MAX(SAL),MIN(SAL) FROM EMP GROUP BY DEPTNO ORDER BY DEPTNO DESC;
+--------+----------+----------+----------+
| DEPTNO | SUM(SAL) | MAX(SAL) | MIN(SAL) |
+--------+----------+----------+----------+
|     30 |     9400 |     2850 |      950 |
|     20 |    10875 |     3000 |      800 |
|     10 |     8750 |     5000 |     1300 |
+--------+----------+----------+----------+
3 rows in set (0.00 sec)

mysql> SELECT DEPTNO,SUM(SAL) FROM EMP GROUP BY DEPTNO;
+--------+----------+
| DEPTNO | SUM(SAL) |
+--------+----------+
|     20 |    10875 |
|     30 |     9400 |
|     10 |     8750 |
+--------+----------+
3 rows in set (0.00 sec)

mysql> SELECT DEPTNO,SUM(SAL) FROM EMP GROUP BY DEPTNO HAVING SUM(SAL)>12000;
Empty set (0.09 sec)

mysql> SELECT DEPTNO,SUM(SAL) FROM EMP GROUP BY DEPTNO HAVING SUM(SAL)>10000;
+--------+----------+
| DEPTNO | SUM(SAL) |
+--------+----------+
|     20 |    10875 |
+--------+----------+
1 row in set (0.00 sec)

mysql> SELECT DEPTNO,SUM(SAL),COUNT(*) FROM EMP GROUP BY DEPTNO HAVING SUM(SAL)>10000;
+--------+----------+----------+
| DEPTNO | SUM(SAL) | COUNT(*) |
+--------+----------+----------+
|     20 |    10875 |        5 |
+--------+----------+----------+
1 row in set (0.00 sec)

mysql> SELECT DEPTNO,SUM(SAL) FROM EMP WHERE SAL>2000 GROUP BY DEPTNO HAVING SUM(SAL) >15000 ORDER BY SUM(SAL) DESC;
Empty set (0.06 sec)

mysql> SELECT DEPTNO,SUM(SAL) FROM EMP WHERE SAL>2000 GROUP BY DEPTNO HAVING SUM(SAL) >1500 ORDER BY SUM(SAL) DESC;
+--------+----------+
| DEPTNO | SUM(SAL) |
+--------+----------+
|     20 |     8975 |
|     10 |     7450 |
|     30 |     2850 |
+--------+----------+
3 rows in set (0.00 sec)

mysql> SELECT DEPTNO,SUM(SAL)  AS CSAL FROM EMP WHERE SAL>2000 GROUP BY DEPTNO HAVING CSAL >1500 ORDER BY SUM(SAL) DESC;
+--------+------+
| DEPTNO | CSAL |
+--------+------+
|     20 | 8975 |
|     10 | 7450 |
|     30 | 2850 |
+--------+------+
3 rows in set (0.00 sec)

mysql> SELECT NOW();
+---------------------+
| NOW()               |
+---------------------+
| 2021-07-05 12:04:02 |
+---------------------+
1 row in set (0.00 sec)

mysql> SELECT CUR_DATE;
ERROR 1054 (42S22): Unknown column 'CUR_DATE' in 'field list'
mysql> SELECT CURRENT_DATE;
+--------------+
| CURRENT_DATE |
+--------------+
| 2021-07-05   |
+--------------+
1 row in set (0.03 sec)

mysql> SELECT CURRENT_TIME;
+--------------+
| CURRENT_TIME |
+--------------+
| 12:04:20     |
+--------------+
1 row in set (0.01 sec)

mysql>