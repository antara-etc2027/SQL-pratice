 SELECT ENAME ,SAL
  2  FROM EMP;

ENAME             SAL
---------- ----------
SMITH             800
ALLEN            1600
WARD             1250
JONES            2975
MARTIN           1250
BLAKE            2850
CLARK            2450
SCOTT            3000
KING             5000
TURNER           1500
ADAMS            1100
JAMES             950
FORD             3000
MILLER           1300

14 rows selected.

SQL> SELECT JOB,SAL
  2  FROM EMP;

JOB              SAL
--------- ----------
CLERK            800
SALESMAN        1600
SALESMAN        1250
MANAGER         2975
SALESMAN        1250
MANAGER         2850
MANAGER         2450
ANALYST         3000
PRESIDENT       5000
SALESMAN        1500
CLERK           1100
CLERK            950
ANALYST         3000
CLERK           1300

14 rows selected.

SQL> SELECT NAME ,JOB
  2  FROM EMP
  3  ;
SELECT NAME ,JOB
       *
ERROR at line 1:
ORA-00904: "NAME": invalid identifier


SQL> SELECT ENAME,JOB
  2  FROM EMP;

ENAME      JOB
---------- ---------
SMITH      CLERK
ALLEN      SALESMAN
WARD       SALESMAN
JONES      MANAGER
MARTIN     SALESMAN
BLAKE      MANAGER
CLARK      MANAGER
SCOTT      ANALYST
KING       PRESIDENT
TURNER     SALESMAN
ADAMS      CLERK
JAMES      CLERK
FORD       ANALYST
MILLER     CLERK

14 rows selected.

SQL> SELECT*
  2  FROM EMP;

     EMPNO ENAME      JOB              MGR HIREDATE                  SAL       COMM     DEPTNO
---------- ---------- --------- ---------- ------------------ ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80                 800                    20
      7499 ALLEN      SALESMAN        7698 20-FEB-81                1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81                1250        500         30
      7566 JONES      MANAGER         7839 02-APR-81                2975                    20
      7654 MARTIN     SALESMAN        7698 28-SEP-81                1250       1400         30
      7698 BLAKE      MANAGER         7839 01-MAY-81                2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81                2450                    10
      7788 SCOTT      ANALYST         7566 19-APR-87                3000                    20
      7839 KING       PRESIDENT            17-NOV-81                5000                    10
      7844 TURNER     SALESMAN        7698 08-SEP-81                1500          0         30
      7876 ADAMS      CLERK           7788 23-MAY-87                1100                    20
      7900 JAMES      CLERK           7698 03-DEC-81                 950                    30
      7902 FORD       ANALYST         7566 03-DEC-81                3000                    20
      7934 MILLER     CLERK           7782 23-JAN-82                1300                    10

14 rows selected.

SQL> SELECT*
  2  FROM TAB;

TNAME                          TABTYPE  CLUSTERID
------------------------------ ------- ----------
DEPT                           TABLE
EMP                            TABLE

SQL> SELECT EMPNO,DEPTNO
  2  FROM EMP;

     EMPNO     DEPTNO
---------- ----------
      7369         20
      7499         30
      7521         30
      7566         20
      7654         30
      7698         30
      7782         10
      7788         20
      7839         10
      7844         30
      7876         20
      7900         30
      7902         20
      7934         10

14 rows selected.

SQL> SELECT ENAME,HIREDATE
  2  FROM EMP;

ENAME      HIREDATE
---------- ------------------
SMITH      17-DEC-80
ALLEN      20-FEB-81
WARD       22-FEB-81
JONES      02-APR-81
MARTIN     28-SEP-81
BLAKE      01-MAY-81
CLARK      09-JUN-81
SCOTT      19-APR-87
KING       17-NOV-81
TURNER     08-SEP-81
ADAMS      23-MAY-87
JAMES      03-DEC-81
FORD       03-DEC-81
MILLER     23-JAN-82

14 rows selected.

SQL> SELECT ENAME,JOB
  2  FROM EMP;

ENAME      JOB
---------- ---------
SMITH      CLERK
ALLEN      SALESMAN
WARD       SALESMAN
JONES      MANAGER
MARTIN     SALESMAN
BLAKE      MANAGER
CLARK      MANAGER
SCOTT      ANALYST
KING       PRESIDENT
TURNER     SALESMAN
ADAMS      CLERK
JAMES      CLERK
FORD       ANALYST
MILLER     CLERK

14 rows selected.

SQL> SELECT ENAME,SAL*12 AS ANUUAL_SAL
  2  FROM EMP;

ENAME      ANUUAL_SAL
---------- ----------
SMITH            9600
ALLEN           19200
WARD            15000
JONES           35700
MARTIN          15000
BLAKE           34200
CLARK           29400
SCOTT           36000
KING            60000
TURNER          18000
ADAMS           13200
JAMES           11400
FORD            36000
MILLER          15600

14 rows selected.

SQL> SELECT SAL*6 AS HALF_TERM
  2  FROM EMP;

 HALF_TERM
----------
      4800
      9600
      7500
     17850
      7500
     17100
     14700
     18000
     30000
      9000
      6600
      5700
     18000
      7800

14 rows selected.

SQL> SELECT SAL, SAL+SAL*25/100
  2  FROM EMP;

       SAL SAL+SAL*25/100
---------- --------------
       800           1000
      1600           2000
      1250         1562.5
      2975        3718.75
      1250         1562.5
      2850         3562.5
      2450         3062.5
      3000           3750
      5000           6250
      1500           1875
      1100           1375
       950         1187.5
      3000           3750
      1300           1625

14 rows selected.

SQL> SELECT ENAME,JOB,SAL+5000
  2  FROM EMP;

ENAME      JOB         SAL+5000
---------- --------- ----------
SMITH      CLERK           5800
ALLEN      SALESMAN        6600
WARD       SALESMAN        6250
JONES      MANAGER         7975
MARTIN     SALESMAN        6250
BLAKE      MANAGER         7850
CLARK      MANAGER         7450
SCOTT      ANALYST         8000
KING       PRESIDENT      10000
TURNER     SALESMAN        6500
ADAMS      CLERK           6100
JAMES      CLERK           5950
FORD       ANALYST         8000
MILLER     CLERK           6300

14 rows selected.

SQL> SELECT SUM(SAL)
  2  FROM EMP;

  SUM(SAL)
----------
     29025
