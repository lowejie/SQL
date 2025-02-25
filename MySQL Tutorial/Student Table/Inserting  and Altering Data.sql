CREATE TABLE student (
    student_id INT,
    name VARCHAR(20),
    major VARCHAR(20),
    PRIMARY KEY(student_id)
);

DESCRIBE student;

INSERT INTO student(student_id, name) VALUES(1, "Jack");
INSERT INTO student VALUES(2, "Kate", "Sociology");
INSERT INTO student VALUES(3, NULL, 'Chemistry');
INSERT INTO student VALUES(4, "Jack", "Biology");
INSERT INTO student VALUES(5, "Mike", "Computer Science");

DROP TABLE student;

ALTER TABLE student ADD gpa DECIMAL(3,2);

ALTER TABLE student DROP COLUMN gpa;