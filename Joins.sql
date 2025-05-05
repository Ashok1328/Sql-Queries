CREATE DATABASE practise;

USE practise;

CREATE TABLE student 
(id INT PRIMARY KEY,
name VARCHAR(50)
);

SELECT *FROM student;
SELECT *FROM course;
INSERT INTO student(student_id, name)
VALUES
(101, "ashok"),
(102, "adam"),
(103, "laxman");

CREATE TABLE course(
student_id INT PRIMARY KEY,
course VARCHAR(40)
);

INSERT INTO course(student_id, course)
VALUES
(102, "Physics"),
(105, "Mathematics"),
(103, "Chemistry"),
(107, "Nepali");



SELECT *FROM student 
INNER JOIN course
ON student.student_id = course.student_id;

CREATE TABLE employee(
id INT PRIMARY KEY,
name VARCHAR(50),
manager_id INT
);

 INSERT INTO employee(
 id, name, manager_id)
 VALUES
 (101, "adam", 103),
 (102, "casey", 104),
 (103, "bob", null),
 (104, "liso", 103);
 
 SELECT *FROM employee;
 
 SELECT a.name as manager_name, b.name
 FROM employee as a
 JOIN employee as bs
 ON a.id = b.manager_id;

SELECT name FROM employee
 UNION ALL
 SELECT name FROM employee;










/*--------Joins in SQL----------------*\

Types of Join 
1. Inner Join
2. Left Join
3. Right Join
4. Full Join