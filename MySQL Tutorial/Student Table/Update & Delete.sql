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

SELECT * FROM student;

UPDATE student
SET major = 'Bio'
WHERE major = 'Biology';

UPDATE student
SET major = 'Comp Sci'
WHERE major = 'Computer Science';

UPDATE student
SET major = 'Comp Sci'
WHERE student_id = 4;

UPDATE student
SET major = 'Biochemistry'
WHERE major = 'Bio' OR major = 'Chemistry';

UPDATE student
SET name = 'Tom', major = 'undecided';

DELETE FROM student
WHERE name = 'Tom' AND major = 'undecided';