Question 2: Describe the tables which are already created.
Ans :
mysql> desc DEPOSIT;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| ACTNO  | varchar(25) | YES  |     | NULL    |       |
| CNAME  | varchar(20) | YES  |     | NULL    |       |
| BNAME  | varchar(20) | YES  |     | NULL    |       |
| Amount | int         | YES  |     | NULL    |       |
| ADATE  | date        | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> DESC BRANCH;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| BNAME | varchar(20) | YES  |     | NULL    |       |
| CITY  | varchar(20) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> DESC customer;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| CNAME | varchar(20) | YES  |     | NULL    |       |
| CITY  | varchar(20) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> DESC borrow;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| LOANNO | varchar(5)  | YES  |     | NULL    |       |
| CNAME  | varchar(20) | YES  |     | NULL    |       |
| BNAME  | varchar(20) | YES  |     | NULL    |       |
| AMOUNT | int         | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)