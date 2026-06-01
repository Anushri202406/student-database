-- 1. Show all students
SELECT * FROM students;

-- 2. Show all marks above 80
SELECT * FROM marks WHERE marks > 80;

-- 3. Students with their marks using JOIN
SELECT s.name, s.city, m.subject, m.marks 
FROM students s 
JOIN marks m ON s.student_id = m.student_id;

-- 4. Average marks per student
SELECT s.name, AVG(m.marks) AS avg_marks
FROM students s 
JOIN marks m ON s.student_id = m.student_id 
GROUP BY s.name;

-- 5. Students from Delhi
SELECT * FROM students WHERE city = 'Delhi';
