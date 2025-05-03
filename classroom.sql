CREATE DATABASE college;

USE college;

CREATE TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR(100),
marks INT NOT NULL,
grade VARCHAR(10),
city VARCHAR(20)
);

INSERT INTO student (
rollno, name, marks, grade, city)
VALUES
(101, "anil", 78, "C", "Pune"),
(102, "ashok", 93, "A", "Mumbai"),
(103, "kritika", 63, "B", "Mumbai"),
(104, "sweta", 88, "A", "Delhi"),
(105, "sapana", 50, "F", "Delhi"),
(106, "beast", 79, "D", "Delhi");

SELECT *FROM student 
WHERE
marks>50;

SELECT *FROM student 
WHERE
city="Mumbai";

SELECT *FROM student LIMIT 3;

SELECT *FROM student ORDER BY city DESC;

SELECT AVG(marks) FROM student;

SELECT MAX(marks) FROM student;

SELECT city,name, COUNT(rollno)
FROM student 
GROUP BY city, name;

SELECT city, AVG(marks) 
FROM student 
GROUP BY city
ORDER BY city;

SELECT COUNT(name), city
FROM student 
GROUP BY city
HAVING MAX(marks)>80;