
-- we have selected the required database
mysql> use assignment;
Database changed

-- we have created the student table 
mysql> create table student(student_id varchar(10) not null primary key, first_name varchar(10) not null, last_name varchar(20) not null, mobile_no varchar(10) not null, address varchar(50) not null);
Query OK, 0 rows affected (0.19 sec)

mysql> desc student;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| student_id | varchar(10) | NO   | PRI | NULL    |       |
| first_name | varchar(10) | NO   |     | NULL    |       |
| last_name  | varchar(20) | NO   |     | NULL    |       |
| mobile_no  | varchar(10) | NO   |     | NULL    |       |
| address    | varchar(50) | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
5 rows in set (0.03 sec)


-- here we have inserted the values in the student table 
mysql> insert into student values('S101', 'Prathamesh', 'Patil',  '9145773815',  'Pen'), ('S102', 'Rohit', 'Sharma',  '8765473815',  'Mumbai'), ('S103', 'Virat', 'Kohli',  '7754373815',  'Pune'), ('S104', 'Suresh', 'Mhatre',  '8976573815',  'Nashik'), ('S105', 'Mahendra', 'Dhoni',  '8854373815',  'Mumbai');
Query OK, 5 rows affected (0.03 sec)
Records: 5  Duplicates: 0  Warnings: 0


mysql> select * from student;
+------------+------------+-----------+------------+---------+
| student_id | first_name | last_name | mobile_no  | address |
+------------+------------+-----------+------------+---------+
| S101       | Prathamesh | Patil     | 9145773815 | Pen     |
| S102       | Rohit      | Sharma    | 8765473815 | Mumbai  |
| S103       | Virat      | Kohli     | 7754373815 | Pune    |
| S104       | Suresh     | Mhatre    | 8976573815 | Nashik  |
| S105       | Mahendra   | Dhoni     | 8854373815 | Mumbai  |
+------------+------------+-----------+------------+---------+
5 rows in set (0.00 sec)


-- here we have created the enrollment table
mysql> create table enrollment(enrollment_id varchar(10) not null primary key, student_id varchar(10) not null, course_id varchar(10) not null, course_name varchar(20) not null, enrollment_status varchar(20) not null, foreign key (student_id) references student(student_id));
Query OK, 0 rows affected (0.16 sec)

mysql> desc enrollment;
+-------------------+-------------+------+-----+---------+-------+
| Field             | Type        | Null | Key | Default | Extra |
+-------------------+-------------+------+-----+---------+-------+
| enrollment_id     | varchar(10) | NO   | PRI | NULL    |       |
| student_id        | varchar(10) | NO   | MUL | NULL    |       |
| course_id         | varchar(10) | NO   |     | NULL    |       |
| course_name       | varchar(20) | NO   |     | NULL    |       |
| enrollment_status | varchar(20) | NO   |     | NULL    |       |
+-------------------+-------------+------+-----+---------+-------+
5 rows in set (0.01 sec)


-- here we have inserted the values in the enrollment table 
mysql> insert into enrollment values('E1101', 'S102', 'C2101', 'CSE', 'Confirmed'), ('E1102', 'S105', 'C2201', 'ECE', 'Confirmed'), ('E1103', 'S101', 'C2301', 'AIML', 'Pending'), ('E1104', 'S104', 'C2101', 'CSE', 'Confirmed'), ('E1105', 'S103', 'C2201', 'ECE', 'Pending');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM enrollment;
+---------------+------------+-----------+-------------+-------------------+
| enrollment_id | student_id | course_id | course_name | enrollment_status |
+---------------+------------+-----------+-------------+-------------------+
| E1101         | S102       | C2101     | CSE         | Confirmed         |
| E1102         | S105       | C2201     | ECE         | Confirmed         |
| E1103         | S101       | C2301     | AIML        | Pending           |
| E1104         | S104       | C2101     | CSE         | Confirmed         |
| E1105         | S103       | C2201     | ECE         | Pending           |
+---------------+------------+-----------+-------------+-------------------+
5 rows in set (0.00 sec)


-- here we have fetched the required data from the tables using inner join 
mysql> select student.student_id, student.first_name, student.last_name, enrollment.enrollment_id, enrollment.course_id, enrollment.course_name from student inner join enrollment on student.student_id = enrollment.student_id;
+------------+------------+-----------+---------------+-----------+-------------+
| student_id | first_name | last_name | enrollment_id | course_id | course_name |
+------------+------------+-----------+---------------+-----------+-------------+
| S101       | Prathamesh | Patil     | E1103         | C2301     | AIML        |
| S102       | Rohit      | Sharma    | E1101         | C2101     | CSE         |
| S103       | Virat      | Kohli     | E1105         | C2201     | ECE         |
| S104       | Suresh     | Mhatre    | E1104         | C2101     | CSE         |
| S105       | Mahendra   | Dhoni     | E1102         | C2201     | ECE         |
+------------+------------+-----------+---------------+-----------+-------------+
5 rows in set (0.00 sec)