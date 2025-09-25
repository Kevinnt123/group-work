-- Class Quiz Database Setup
-- SHEMA Axel 29273
-- NTAKIRUTIMANA Kevin 29259
-- MUKUNZI Edwin 29275

-- creating the students table
CREATE TABLE Students ( student_id INT PRIMARY KEY, name VARCHAR(50) NOT NULL, 
email VARCHAR(100) UNIQUE  );

-- course table
CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL
);

-- enrollments table
CREATE TABLE Enrollments (
    enroll_id INT PRIMARY KEY,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

-- we entered some data
INSERT INTO Students VALUES 
    (1, 'Alice', 'alice@email.com'),
    (2, 'Bob', 'bob@email.com'),
    (3, 'Charlie', 'charlie@email.com');

INSERT INTO Courses VALUES 
    (101, 'Networking Basics'),
    (102, 'Database Systems'),
    (103, 'Cybersecurity');

INSERT INTO Enrollments VALUES 
    (1, 1, 101),  
    (2, 2, 102);  
    (3, 3, 103);
-- Joins

-- inner join
SELECT s.name, c.course_name
FROM Students s
INNER JOIN Enrollments e ON s.student_id = e.student_id
INNER JOIN Courses c ON e.course_id = c.course_id;

-- Left join 
SELECT s.name, c.course_name
FROM Students s
LEFT JOIN Enrollments e ON s.student_id = e.student_id
LEFT JOIN Courses c ON e.course_id = c.course_id;

-- Right join 
SELECT s.name, c.course_name
FROM Students s
RIGHT JOIN Enrollments e ON s.student_id = e.student_id
RIGHT JOIN Courses c ON e.course_id = c.course_id;

-- display full work
SELECT * FROM StudentCourses;

