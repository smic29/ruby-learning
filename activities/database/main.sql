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

-- Start of Activity 3

SELECT * FROM research_papers; --TABLE CHECK LINE

CREATE TYPE valid_grades AS ENUM ('A','B','C','D','E','F');

CREATE TABLE research_papers (
	id int NOT NULL PRIMARY KEY,
	student_id int,
	grade valid_grades,
	FOREIGN KEY (student_id) REFERENCES students(id)
);

INSERT INTO research_papers (id, student_id, grade)
VALUES 
(6, 1, 'A'),
(7, 2, 'A'),
(8, 3, NULL),
(9, 4, 'E'),
(10, 5, 'F'),
(11, 1, 'D'),
(12, 3, 'A'),
(13, 2, 'C'),
(14, 1, 'B'),
(15, 2, NULL)
;

SELECT 
	CONCAT(UPPER(s.last_name),' ',s.first_name) AS name,
	COUNT(r.grade) AS number_of_research_papers
FROM students AS s 
JOIN research_papers AS r
ON r.student_id = s.id
GROUP BY name 
ORDER BY number_of_research_papers DESC;

SELECT
	CONCAT(UPPER(s.last_name),' ',s.first_name) AS name,
	r.id,
	r.grade
FROM students AS s 
JOIN research_papers AS r 
ON r.student_id = s.id
WHERE r.grade IS NULL;
