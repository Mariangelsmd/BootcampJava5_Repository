-- CREAR TABLAS

CREATE TABLE students (
  id_student INT NOT NULL PRIMARY KEY AUTO_INCREMENT UNIQUE,
  name_student VARCHAR (25),
  age_student INT (3),
  sex_student VARCHAR(10)
);

CREATE TABLE teachers (
  id_teacher INT NOT NULL PRIMARY KEY AUTO_INCREMENT UNIQUE,
  name_teacher VARCHAR(25)
);

CREATE TABLE courses (
  id_course INT NOT NULL PRIMARY KEY AUTO_INCREMENT UNIQUE,
  name_course VARCHAR(25),
  teacher_id INT,
  FOREIGN KEY (teacher_id) REFERENCES teachers(id_teacher)
);

CREATE TABLE sc (
  id_sc INT NOT NULL PRIMARY KEY AUTO_INCREMENT UNIQUE,
  student_id INT,
  course_id INT,
  score INT,
  FOREIGN KEY (student_id) REFERENCES students(id_student),
  FOREIGN KEY (course_id) REFERENCES courses(id_course)
);

-- INSERTS

INSERT INTO students (name_student, age_student, sex_student) VALUES 
    ('John Smith', 20, 'Male'),
    ('Alice Johnson', 22, 'Female'),
    ('Bob Williams', 21, 'Male'),
    ('Samantha White', 23, 'Female'),
    ('Daniel Kim', 20, 'Male');

INSERT INTO teachers (name_teacher) VALUES 
    ('Mr. Anderson'),
    ('Mrs. Davis'),
    ('Dr. Robinson'),
    ('Ms. Taylor'),
    ('Prof. Carter');

INSERT INTO courses (name_course, teacher_id) VALUES 
    ('Mathematics', 1),
    ('English Literature', 2),
    ('Computer Science', 3),
    ('Physics', 4),
    ('History', 5);

INSERT INTO sc (student_id, course_id, score) VALUES 
    (1, 1, 85),
    (2, 2, 92),
    (3, 3, 78),
    (4, 4, 88),
    (5, 5, 95);
    
-- CONSULTAS

SELECT *
FROM students
JOIN sc ON id_student = student_id
JOIN courses ON course_id = id_course
JOIN teachers ON teacher_id = id_teacher
WHERE name_teacher = 'Mrs. Davis';

SELECT COUNT(*) AS 'num_cursos', name_teacher
FROM courses
INNER JOIN teachers ON teacher_id = id_teacher
WHERE name_teacher = 'Ms. Taylor';

SELECT COUNT(*), name_student
FROM courses
INNER JOIN students ON student_id = id_student
WHERE name_student = 'Daniel Kim';

SELECT name_student, COUNT(sc.course_id) AS total_cursos
FROM students
INNER JOIN sc ON id_student = student_id
WHERE name_student = 'Daniel Kim';
