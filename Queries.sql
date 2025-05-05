CREATE DATABASE Company;

USE Company;

CREATE TABLE student (
rollno INT PRIMARY KEY,
name VARCHAR(100),
marks INT NOT NULL,
grade VARCHAR(2),
city VARCHAR(50)
);


INSERT INTO student (
rollno, name, marks, grade, city)
VALUES
(10, "anil", 58, "A", "Pune"),
(11, "ajay", 78, "B", "Delhi"),
(12, "laxman", 98, "C", "Mumbai"),
(13, "romi", 56, "F", "Delhi"),
(14, "puspa", 88, "B", "Delhi"),
(15, "dekila", 48, "D", "Mumbai");

ALTER TABLE student 
CHANGE name full_name VARCHAR(50);


DELETE FROM student 
WHERE marks<80;

ALTER TABLE student
DROP COLUMN age;
SELECT *FROM student;
