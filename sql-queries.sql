-- 
-- Creating database for university -- 
CREATE DATABASE university;
USE university;

-- 
-- Creating a table for uni students. -- 
CREATE TABLE students (
		student_id INTEGER,
        name VARCHAR(55),
        age INTEGER,
        grade INTEGER,
		admitted_at DATE);
        
DESCRIBE students;


--
-- Alter column in students table
ALTER TABLE students
MODIFY COLUMN grade DECIMAL(2,1);

--
-- insert values into students table --  
INSERT INTO students (student_id, name, age, grade, admitted_at)
	VALUES 
		(1, 'Oyinda Wealthy', 26, 3.8, '2015-09-01'),
        (2, 'Miriam Abubakar', 24, 4.0, '2017-09-01'),
        (3, 'Dorcas Roberts', 24, 3.7, '2016-09-01'),
        (4, 'Ayomide Titilope', 25, 4.0, '2015-09-01'),
        (5, 'Emeka Jude', 24, 3.8, '2014-09-01'),
        (6, 'Caroline Obi', 27, 3.1, '2013-09-01'),
        (7, 'Franklin Oladele', 18, 3.9, '2019-09-01'),
        (8, 'Kola Ola', 28, 4.0, '2013-09-01'),
        (9, 'Emmanuel Ovi', 23, 3.1, '2016-09-01'),
        (10, 'Kareem Musa', 24, 3.3, '2016-09-01'),
        (11, 'Mustapha Ahmed', 24, 3.9, '2016-09-01'),
        (12, 'Femi Akin', 24, 0,'2017-09-01');
        
SELECT * FROM students;

SELECT DISTINCT age 
FROM students;

SELECT * 
FROM students
ORDER BY student_id DESC;

SELECT *
FROM students
ORDER BY age ASC, 
		 student_id DESC;
         
SELECT *
FROM students
WHERE age > 24;

SELECT *
FROM students
WHERE grade >= 3.1
ORDER BY grade ASC;

SELECT *
FROM students
WHERE name = 'Emmanuel Ovi';

SELECT *
FROM students
WHERE name LIKE '%M%';

SELECT *
FROM students
WHERE name LIKE '%Musa';

SELECT *
FROM students
WHERE name LIKE 'K%';

SELECT *
FROM students
WHERE age LIKE '2_';

SELECT *
FROM students
WHERE name LIKE '%O_i';

SELECT *
FROM students
WHERE admitted_at > '2015-09-01' 
	AND grade > 3.1;

SELECT *
FROM students 
WHERE age > 20 
	AND grade < 3.9;

SELECT COUNT(*)
FROM students 
WHERE age > 20 
	AND grade < 3.9;

SELECT *
FROM students
WHERE name LIKE 'M%'
	OR grade > 3.1;
    
SELECT *
FROM students
WHERE age > 20
	OR grade > 3.1
    OR admitted_at > '2017-09-01';
    
SELECT *
FROM students
WHERE NOT grade >= 3.8;

SELECT *
FROM students
WHERE NOT grade >= 3.8
	AND NOT age >= 25;
    
SELECT *
FROM students
WHERE student_id IN (12, 3, 8, 4);

SELECT * 
FROM students
WHERE admitted_at IN ('2015-09-01', '2017-09-01');

SELECT * 
FROM students
WHERE age NOT IN (18);

SELECT * 
FROM students
WHERE admitted_at NOT IN ('2015-09-01', '2017-09-01');

SELECT *
FROM students 
WHERE grade BETWEEN 3.5 AND 4.0;

SELECT *
FROM students
WHERE admitted_at BETWEEN '2015-09-01' AND '2017-09-01';

SELECT *
FROM students 
WHERE grade NOT BETWEEN 3.5 AND 4.0;

SELECT *
FROM students
WHERE admitted_at NOT BETWEEN '2015-09-01' AND '2017-09-01';

SELECT *
FROM students
WHERE admitted_at BETWEEN '2015-09-01' AND '2017-09-01'
	AND age IN (23, 24);
    
SELECT *
FROM students
WHERE admitted_at BETWEEN '2015-09-01' AND '2017-09-01'
	AND age NOT IN (23, 24);
    
UPDATE students
SET grade = NULL
WHERE grade = 0.0;

SELECT * 
FROM students
WHERE age IS NULL;

SELECT * 
FROM students
WHERE grade IS NULL;

SELECT *
FROM students
WHERE age IS NOT NULL;

SELECT *
FROM students 
WHERE grade IS NOT NULL;

SELECT *,
CASE
	WHEN age >= 26 THEN 'Upper Age Class'
    WHEN age BETWEEN 23 AND 25 THEN 'Middle Age Class'
    WHEN age < 23 THEN 'Lower Age Class'
END
FROM students;

SELECT *,
CASE grade
	WHEN 4.0 THEN 'Best Student'
    ELSE 'Normal'
END AS award
FROM students;
