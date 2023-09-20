-- 
-- Creating database for university -- 
CREATE DATABASE university;
USE university;

-- 
-- Creating a table for uni students. -- 
CREATE TABLE students (
		student_id INTEGER,
        name VARCHAR(90),
        year INTEGER);
DESCRIBE students;

--
-- insert values into students table --  
INSERT INTO students (student_id, name, year)
	VALUES (1, "Oyinda Wealthy", 3);
INSERT INTO students (student_id, name, year)
	VALUES (2, "Miriam Abubakar", 2);
INSERT INTO students (student_id, name, year)
	VALUES (3, "Dorcas Roberts", 3);
INSERT INTO students (student_id, name, year)
	VALUES (4, "Emeka Frank", 1);
    
--
-- Add more columns to student table
ALTER TABLE students
ADD COLUMN (age INTEGER,
			grade INTEGER,
            admitted_at DATE); 
            
--
-- Remove column to student table
ALTER TABLE students
DROP COLUMN year;		

--
-- Remove safe mode on updates
SET sql_safe_updates = 0;
SET GLOBAL sql_mode = 'NO_ENGINE_SUBSTITUTION';
SET SESSION sql_mode = 'NO_ENGINE_SUBSTITUTION';

--
-- Delete statements
DELETE FROM students WHERE student_id=4;

--
-- Alter column in students table
ALTER TABLE students
MODIFY COLUMN grade DECIMAL(2,1);

DESCRIBE students;

--
-- Dropping the table --
TRUNCATE students;
DROP TABLE students;
            
SELECT * FROM students;