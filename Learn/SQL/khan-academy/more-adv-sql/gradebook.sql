
CREATE DATABASE LearnSQL;
USE LearnSQL;
-- START HERE

CREATE TABLE student_grades (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name TEXT,
    number_grade INTEGER,
    fraction_completed REAL);

INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winston", 90, 0.805);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winnefer", 95, 0.901);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winsteen", 85, 0.906);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Wincifer", 66, 0.7054);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winster", 76, 0.5013);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winstonia", 82, 0.9045);

SELECT name, number_grade, ROUND(100*fraction_completed) as "percent_completed" from student_grades;

SELECT name,
   CASE
       WHEN number_grade > 90 THEN 'A'
       WHEN number_grade > 80 THEN 'B'
       WHEN number_grade > 70 THEN 'C'
       ELSE 'F'
   END as "letter_grade"
FROM student_grades;

SELECT
    CASE
        WHEN number_grade > 90 THEN 'A'
        WHEN number_grade > 80 THEN 'B'
        WHEN number_grade > 70 THEN 'C'
        ELSE 'F'
    END as "letter_grade",
    COUNT(*)
FROM student_grades
GROUP BY letter_grade;

-- DROPPING the database after experiment.
DROP DATABASE LearnSQL;

