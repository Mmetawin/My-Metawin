CREATE DATABASE IF NOT EXISTS FourthWeek;
USE FourthWeek;
drop table if exists  `employees` ;
CREATE TABLE `employees` (
                             `emp_no` int NOT NULL auto_increment,
                             `birth_date` date NOT NULL,
                             `first_name` varchar(100) NOT NULL,
                             `last_name` varchar(100) NOT NULL,
                             `gender` char(1) NOT NULL,
                             `hire_date` date NOT NULL,
                             PRIMARY KEY (`emp_no`)
                         )ENGINE=InnoDB auto_increment=10001 DEFAULT CHARSET=utf8;
INSERT INTO employees(birth_date, first_name, last_name, gender, hire_date) VALUES('1953-09-02','Georgi','Facello','M','1986-06-26');
INSERT INTO employees(birth_date, first_name, last_name, gender, hire_date) VALUES('1964-06-02','Bezalel','Simmel','F','1985-11-21');
INSERT INTO employees(birth_date, first_name, last_name, gender, hire_date) VALUES('1959-12-03','Parto','Bamford','M','1986-08-28');
INSERT INTO employees(birth_date, first_name, last_name, gender, hire_date) VALUES('1954-05-01','Chirstian','Koblick','M','1986-12-01');

select * from employees where hire_date=(select max(hire_date) from employees);