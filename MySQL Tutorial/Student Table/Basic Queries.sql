DROP TABLE student;

CREATE TABLE student (
    student_id INT AUTO_INCREMENT,
    name VARCHAR(20) ,
    major VARCHAR(20) DEFAULT 'undecided',
    PRIMARY KEY(student_id)
);

INSERT INTO student VALUES(1, "Jack", 'Biology');
INSERT INTO student VALUES(2, "Kate", "Sociology");
INSERT INTO student VALUES(3, 'Claire', 'Chemistry');
INSERT INTO student VALUES(4, "Jack", "Biology");
INSERT INTO student VALUES(5, "Mike", "Computer Science");

SELECT student.name, student.major
FROM student
ORDER BY student_id DESC;

SELECT *
FROM student
ORDER BY student_id;

SELECT *
FROM student
ORDER BY major, student_id DESC;

SELECT *
FROM student
ORDER BY student_id DESC
LIMIT 2;

SELECT *
FROM student
WHERE major = 'Biology';

SELECT student.name, student.major
FROM student
WHERE major = 'Chemistry' OR name = 'Kate';

SELECT student.name, student.major
FROM student
WHERE major <> 'Chemistry';

SELECT *
FROM student
WHERE student_id <3 AND name ='Jack';

SELECT *
FROM student
WHERE name IN ('Claire', 'Kate', 'Mike');

SELECT *
FROM student
WHERE major IN ('Biology', 'Chemistry') AND student_id > 2;