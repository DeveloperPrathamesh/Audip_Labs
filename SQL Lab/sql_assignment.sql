mysql> create database assignment;
Query OK, 1 row affected (0.01 sec)

mysql> use assignment;
Database changed

mysql> create table customer(customer_id varchar(10) not null primary key, name varchar(20) not null, email varchar(50) not  null, address varchar(20) not null, city varchar(10) not null, pin_code integer not null, phone_no varchar(15) not null);
Query OK, 0 rows affected (0.08 sec)

mysql> desc customer;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| customer_id | varchar(10) | NO   | PRI | NULL    |       |
| name        | varchar(20) | NO   |     | NULL    |       |
| email       | varchar(50) | NO   |     | NULL    |       |
| address     | varchar(20) | NO   |     | NULL    |       |
| city        | varchar(10) | NO   |     | NULL    |       |
| pin_code    | int         | NO   |     | NULL    |       |
| phone_no    | varchar(15) | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

mysql> insert into customer values('C1', 'Prathamesh', 'prathamesh@gmail.com', 'Ramwadi, Pen', 'Pen', 402107, '9145773815'), ('C2', 'Rohit', 'rohit@gmail.com', 'Building No.2, Thane', 'Thane', 400132, '8975433815'), ('C3', 'suresh', 'suresh@gmail.com', 'ganesh book, Mumbai', 'Mumbai', 400107, '7865373815'), ('C4', 'sahil', 'sahil@gmail.com', 'sector 4, Panvel', 'Panvel', 412007, '8890373815'), ('C5', 'Rakesh', 'rakesh@gmail.com', 'near station, Turbhe', 'Turbhe', 402157, '9764373815');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from customer;
+-------------+------------+----------------------+----------------------+--------+----------+------------+
| customer_id | name       | email                | address              | city   | pin_code | phone_no   |
+-------------+------------+----------------------+----------------------+--------+----------+------------+
| C1          | Prathamesh | prathamesh@gmail.com | Ramwadi, Pen         | Pen    |   402107 | 9145773815 |
| C2          | Rohit      | rohit@gmail.com      | Building No.2, Thane | Thane  |   400132 | 8975433815 |
| C3          | suresh     | suresh@gmail.com     | ganesh book, Mumbai  | Mumbai |   400107 | 7865373815 |
| C4          | sahil      | sahil@gmail.com      | sector 4, Panvel     | Panvel |   412007 | 8890373815 |
| C5          | Rakesh     | rakesh@gmail.com     | near station, Turbhe | Turbhe |   402157 | 9764373815 |
+-------------+------------+----------------------+----------------------+--------+----------+------------+
5 rows in set (0.00 sec)


mysql> create table product(product_id varchar(10) not null primary key, product_name varchar(15) not null, category varchar(15) not null, sub_category varchar(15) not  null, original_price integer not null, selling_price integer not null, stock integer not null);
Query OK, 0 rows affected (0.08 sec)

mysql> desc product;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| product_id     | varchar(10) | NO   | PRI | NULL    |       |
| product_name   | varchar(15) | NO   |     | NULL    |       |
| category       | varchar(15) | NO   |     | NULL    |       |
| sub_category   | varchar(15) | NO   |     | NULL    |       |
| original_price | int         | NO   |     | NULL    |       |
| selling_price  | int         | NO   |     | NULL    |       |
| stock          | int         | NO   |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
7 rows in set (0.01 sec)


mysql> insert into product values('P1', 'Iphone 15', 'Mobiles', '5G Phones', 129999, 99999, 10), ('P2', 'H&M tshirt', 'Clothing', 'Tshirts', 1999, 999, 50), ('P3', 'Lewis Jeans', 'Clothing', 'Jeans', 1999, 1499, 100), ('P4', 'Dell Laptop', 'Electronics', 'Laptops', 99999, 69999, 20), ('P5', 'AC', 'Electronics', 'ACs', 49999, 39999, 10);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from product;
+------------+--------------+-------------+--------------+----------------+---------------+-------+
| product_id | product_name | category    | sub_category | original_price | selling_price | stock |
+------------+--------------+-------------+--------------+----------------+---------------+-------+
| P1         | Iphone 15    | Mobiles     | 5G Phones    |         129999 |         99999 |    10 |
| P2         | H&M tshirt   | Clothing    | Tshirts      |           1999 |           999 |    50 |
| P3         | Lewis Jeans  | Clothing    | Jeans        |           1999 |          1499 |   100 |
| P4         | Dell Laptop  | Electronics | Laptops      |          99999 |         69999 |    20 |
| P5         | AC           | Electronics | ACs          |          49999 |         39999 |    10 |
+------------+--------------+-------------+--------------+----------------+---------------+-------+
5 rows in set (0.00 sec)

mysql> create table orders(order_id varchar(10) not null primary key, customer_id varchar(10) not null, product_id varchar(10), quantity integer not null, total_price integer not null, order_status varchar(15) not null, order_date varchar(20) not null, payment_mode varchar(15) not null, foreign key(customer_id) REFERENCES customer(customer_id), foreign key(product_id) REFERENCES product(product_id));
Query OK, 0 rows affected (0.48 sec)

mysql> desc orders;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| order_id     | varchar(10) | NO   | PRI | NULL    |       |
| customer_id  | varchar(10) | NO   | MUL | NULL    |       |
| product_id   | varchar(10) | YES  | MUL | NULL    |       |
| quantity     | int         | NO   |     | NULL    |       |
| total_price  | int         | NO   |     | NULL    |       |
| order_status | varchar(15) | NO   |     | NULL    |       |
| order_date   | varchar(20) | NO   |     | NULL    |       |
| payment_mode | varchar(15) | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
8 rows in set (0.08 sec)



mysql> insert into orders values('O1', 'c1', 'P1', 1, 99999, 'shipped', '07/07/2025', 'UPI'), ('O2', 'c3', 'P2', 3, 2997, 'delivered', '05/07/2025', 'debit card'), ('O3', 'c2', 'P3', 1, 69999, 'pending', '09/07/2025', 'credit card'), ('O4', 'c5', 'P3', 2, 3998, 'shipped', '06/07/2025', 'COD'), ('O5', 'c4', 'P5', 1, 39999, 'delivered', '01/07/2025', 'UPI');
Query OK, 5 rows affected (0.08 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from orders;
+----------+-------------+------------+----------+-------------+--------------+------------+--------------+
| order_id | customer_id | product_id | quantity | total_price | order_status | order_date | payment_mode |
+----------+-------------+------------+----------+-------------+--------------+------------+--------------+
| O1       | c1          | P1         |        1 |       99999 | shipped      | 07/07/2025 | UPI          |
| O2       | c3          | P2         |        3 |        2997 | delivered    | 05/07/2025 | debit card   |
| O3       | c2          | P3         |        1 |       69999 | pending      | 09/07/2025 | credit card  |
| O4       | c5          | P3         |        2 |        3998 | shipped      | 06/07/2025 | COD          |
| O5       | c4          | P5         |        1 |       39999 | delivered    | 01/07/2025 | UPI          |
+----------+-------------+------------+----------+-------------+--------------+------------+--------------+
5 rows in set (0.00 sec)