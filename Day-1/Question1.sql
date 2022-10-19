1. Create the following table according to the following information
i) Table name- DEPOSIT
FIELD NAME DATA TYPE SIZE
ACTNO VARCHAR 25
CNAME VARCHAR 20
BNAME VARCHAR 20
AMOUNT INT
ADATE DATE

Ans : 

mysql> create database bank;
Query OK, 1 row affected (0.49 sec)
mysql> show databases;
mysql> use bank;
Database changed
mysql> create table DEPOSIT(ACTNO varchar(25),CNAME varchar(20), BNAME int,Amount int,ADATE DATE);
Query OK, 0 rows affected (0.65 sec)

mysql> desc deposit;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| ACTNO  | varchar(25) | YES  |     | NULL    |       |
| CNAME  | varchar(20) | YES  |     | NULL    |       |
| BNAME  | VARCHAR(20) | YES  |     | NULL    |       |
| Amount | int         | YES  |     | NULL    |       |
| ADATE  | date        | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
5 rows in set (0.03 sec)

ii) Table name-BRANCH
FIELD NAME DATA TYPE SIZE
BNAME VARCHAR 20
CITY VARCHAR 20


Ans :
 
mysql> create table BRANCH(BNAME VARCHAR(20), CITY VARCHAR(20));
Query OK, 0 rows affected (0.18 sec)

mysql> desc branch;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| BNAME | varchar(20) | YES  |     | NULL    |       |
| CITY  | varchar(20) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

mysql> select * from branch;
Empty set (0.00 sec)

iii) Table name-CUSTOMER
FIELD NAME DATA TYPE SIZE
CNAME VARCHAR2 20
CITY VARCHAR2 20

Ans : 
mysql> create table CUSTOMER(CNAME VARCHAR(20), CITY VARCHAR(20));
Query OK, 0 rows affected (0.14 sec)

mysql> desc branch;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| BNAME | varchar(20) | YES  |     | NULL    |       |
| CITY  | varchar(20) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> select * from customer;
Empty set (0.00 sec)

iv) Table name-BORROW
FIELD NAME DATA TYPE SIZE
LOANNO VARCHAR 5
CNAME VARCHAR 20
BNAME VARCHAR 20
AMOUNT INT

Ans :
mysql> create table BORROW(LOANNO VARCHAR(5), CNAME VARCHAR(20),BNAME varchar(20),AMOUNT int););
Query OK, 0 rows affected (0.17 sec)

ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 1
mysql> desc BORROW;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| LOANNO | varchar(5)  | YES  |     | NULL    |       |
| CNAME  | varchar(20) | YES  |     | NULL    |       |
| BNAME  | varchar(20) | YES  |     | NULL    |       |
| AMOUNT | int         | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> select * from borrow;
Empty set (0.00 sec)

