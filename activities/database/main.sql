CREATE TABLE students (
	id				INTEGER		PRIMARY KEY,
	first_name		VARCHAR(50)	NOT NULL,
	middle_name		VARCHAR(50),
	last_name		VARCHAR(50)	NOT NULL,
	age				INTEGER		NOT NULL,
	location		VARCHAR(50) NOT NULL
);

INSERT INTO students (id, first_name, last_name, age, location)
VALUES 
(1, 'Juan', 'Cruz', 18, 'Manila'),
(2, 'Anne', 'Wall', 20, 'Manila'),
(3, 'Theresa', 'Joseph', 21, 'Manila'),
(4, 'Isaac', 'Gray', 19, 'Laguna'),
(5, 'Zack', 'Matthews', 22, 'Marikina'),
(6, 'Finn', 'Lam', 25, 'Manila');

UPDATE students
SET first_name = 'Ivan', middle_name = 'Ingram', last_name = 'Howard', age = 25, location = 'Bulacan'
WHERE id = 1;

DELETE FROM students
WHERE id = (SELECT MAX(id) FROM students);

SELECT COUNT(*) AS number_of_students FROM students;

SELECT * FROM students
WHERE location = 'Manila';

SELECT AVG(age) AS average_student_age from students;

SELECT * FROM students
ORDER BY age DESC;
