SELECT COUNT(*) 
FROM students INNER JOIN projects
WHERE students.student_id = projects.student_id;

SELECT *
FROM students LEFT JOIN projects
ON students.student_id = projects.student_id
WHERE projects.project_id IS NULL;

SELECT * 
FROM projects LEFT JOIN students
ON projects.student_id = students.student_id
WHERE students.student_id IS NULL;

SELECT * 
FROM projects p RIGHT JOIN students s
ON p.student_id = s.student_id
WHERE p.project_id IS NULL;

SELECT *
FROM students s RIGHT JOIN projects p
ON p.student_id = s.student_id
WHERE s.student_id IS NULL;

ALTER TABLE projects
ADD COLUMN name VARCHAR(55);

UPDATE projects p 
INNER JOIN students s
ON p.student_id = s.student_id
SET p.name = s.name;

SELECT * 
FROM projects LEFT JOIN students
ON projects.student_id = students.student_id;

DELETE projects
FROM projects
LEFT JOIN students
ON projects.student_id = students.student_id
WHERE students.student_id IS NULL;