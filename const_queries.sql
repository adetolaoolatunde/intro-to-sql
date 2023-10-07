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

ALTER TABLE projects
DROP FOREIGN KEY student_id;

