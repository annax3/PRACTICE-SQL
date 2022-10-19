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