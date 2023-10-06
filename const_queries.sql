CREATE TABLE students (
	student_id INTEGER,
    name VARCHAR(55),
    age INTEGER,
    PRIMARY KEY (student_id)
);

CREATE TABLE projects (
	project_id INTEGER PRIMARY KEY,
    student_id INTEGER,
    title VARCHAR(55),
    PRIMARY KEY (project_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

SELECT * FROM projects;

DROP TABLE projects;

DESCRIBE projects;

ALTER TABLE projects
DROP FOREIGN KEY projects_ibfk_1;

ALTER TABLE projects
ADD CONSTRAINT fk_student
FOREIGN KEY (student_id) REFERENCES students(student_id);

SELECT AVG(age) FROM students;

SELECT *
FROM students
WHERE age > (
	SELECT AVG(age)
    FROM students);
    
SELECT *
FROM students
WHERE age < (
	SELECT AVG(age)
    FROM students);
    

SELECT COUNT(*) total_num, department
		FROM students
		GROUP BY department;

SELECT AVG(total_num) mean, MAX(total_num) max, MIN(total_num) min
FROM	(SELECT COUNT(*) total_num, department
		FROM students
		GROUP BY department) AS sub;

ALTER TABLE projects
DROP FOREIGN KEY student_id;