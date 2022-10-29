ANS 1:

mysql> CREATE TABLE customers (
    -> customer_id INT PRIMARY KEY,
    -> first_name VARCHAR(255) NOT NULL,
    -> last_name VARCHAR(255) NOT NULL,
    -> email VARCHAR(255) NOT NULL,
    -> address VARCHAR(255) DEFAULT NULL,
    -> city VARCHAR(255) DEFAULT NULL,
    -> state VARCHAR(2) DEFAULT NULL,
    -> zip_code VARCHAR(5) DEFAULT NULL
    -> );
Query OK, 0 rows affected (0.15 sec)

mysql> CREATE TABLE orders (
    -> order_id INT PRIMARY KEY,
    -> customer_id INT NOT NULL,
    -> order_placed_date DATE NOT NULL,
    -> FOREIGN KEY (customer_id) REFERENCES customers
    -> (customer_id)
    -> );
Query OK, 0 rows affected (0.31 sec)

mysql> SELECT * FROM customers;
Empty set (0.10 sec)

mysql> DESC customers;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| customer_id | int          | NO   | PRI | NULL    |       |
| first_name  | varchar(255) | NO   |     | NULL    |       |
| last_name   | varchar(255) | NO   |     | NULL    |       |
| email       | varchar(255) | NO   |     | NULL    |       |
| address     | varchar(255) | YES  |     | NULL    |       |
| city        | varchar(255) | YES  |     | NULL    |       |
| state       | varchar(2)   | YES  |     | NULL    |       |
| zip_code    | varchar(5)   | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
8 rows in set (0.05 sec)

mysql> DESC orders;
+-------------------+------+------+-----+---------+-------+
| Field             | Type | Null | Key | Default | Extra |
+-------------------+------+------+-----+---------+-------+
| order_id          | int  | NO   | PRI | NULL    |       |
| customer_id       | int  | NO   | MUL | NULL    |       |
| order_placed_date | date | NO   |     | NULL    |       |
+-------------------+------+------+-----+---------+-------+
3 rows in set (0.07 sec)

mysql> INSERT INTO customers VALUES ('1','abc','a','abc@mail.com','1st street','chennai','TN','60001');
Query OK, 1 row affected (0.09 sec)

mysql> INSERT INTO customers VALUES ('2','efg','e','efg@mail.com','2nd street','Bangalore','KA','50002');
Query OK, 1 row affected (0.04 sec)

mysql> INSERT INTO customers VALUES ('3','ijk','i','ijk@mail.com','3nd street','Mumbai','MH','40002');
Query OK, 1 row affected (0.09 sec)

mysql> SELECT * FROM customers;
+-------------+------------+-----------+--------------+------------+-----------+-------+----------+
| customer_id | first_name | last_name | email        | address    | city      | state | zip_code |
+-------------+------------+-----------+--------------+------------+-----------+-------+----------+
|           1 | abc        | a         | abc@mail.com | 1st street | chennai   | TN    | 60001    |
|           2 | efg        | e         | efg@mail.com | 2nd street | Bangalore | KA    | 50002    |
|           3 | ijk        | i         | ijk@mail.com | 3nd street | Mumbai    | MH    | 40002    |
+-------------+------------+-----------+--------------+------------+-----------+-------+----------+
3 rows in set (0.00 sec)

mysql> DESC orders;
+-------------------+------+------+-----+---------+-------+
| Field             | Type | Null | Key | Default | Extra |
+-------------------+------+------+-----+---------+-------+
| order_id          | int  | NO   | PRI | NULL    |       |
| customer_id       | int  | NO   | MUL | NULL    |       |
| order_placed_date | date | NO   |     | NULL    |       |
+-------------------+------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> INSERT INTO orders VALUES (1,1, '2016-11-1');
Query OK, 1 row affected (0.25 sec)

mysql> INSERT INTO orders VALUES (2,1, '2016-10-01 ');
Query OK, 1 row affected, 1 warning (0.22 sec)


mysql> select email, count(email) cnt_order from customers join orders on customers.customer_id = orders.customer_id where order_placed_date >= '2016-01-01' and order_placed_date<= '2016-12-31' group by email order by 2 desc;
+--------------+-----------+
| email        | cnt_order |
+--------------+-----------+
| abc@mail.com |         2 |
| efg@mail.com |         1 |
+--------------+-----------+
2 rows in set (0.06 sec)