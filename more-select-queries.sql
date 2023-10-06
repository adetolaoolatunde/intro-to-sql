SELECT COUNT(DISTINCT department)
FROM students;

SELECT department, COUNT(amount_paid) AS transactions
FROM students
GROUP BY department;

SELECT department, SUM(amount_paid) AS total_amount
FROM students
GROUP BY department;

SELECT department, admitted_at, SUM(amount_paid) AS total_amount
FROM students
GROUP BY department, admitted_at;

SELECT admitted_at, SUM(amount_paid) AS total_amt
FROM students
GROUP BY admitted_at
ORDER BY 1;

SELECT admitted_at, SUM(amount_paid) AS total_amt
FROM students
WHERE admitted_at > '2014-09-01'
GROUP BY admitted_at
ORDER BY 1;

SELECT admitted_at, SUM(amount_paid) AS total_amt
FROM students
WHERE admitted_at > '2014-09-01'
GROUP BY admitted_at
HAVING total_amt > 40000
ORDER BY 1;

SELECT department, COUNT(amount_paid) AS transactions
FROM students
GROUP BY department
HAVING transactions > 2;

SELECT department, admitted_at, SUM(amount_paid) AS total_amt
FROM students
GROUP BY department, admitted_at
HAVING total_amt > 60000;

SELECT department, admitted_at, SUM(amount_paid) AS total_amt
FROM students
WHERE admitted_at > '2015-09-01'
GROUP BY department, admitted_at
HAVING total_amt > 30000
ORDER BY total_amt;

SELECT * FROM students;

UPDATE students
SET grade = 3.0
WHERE student_id = 12;

UPDATE students
SET age = 25, grade = 3.9
WHERE name = 'Caroline Obi';

UPDATE students
SET grade = grade + 0.2
WHERE grade = 3.1;

CREATE TABLE pupils (
	student_id INTEGER NOT NULL,
    name VARCHAR(55) NOT NULL,
    age INTEGER DEFAULT 18
);

INSERT INTO pupils
	VALUE(2, 'Oyinkan Blue');

SELECT * FROM pupils;