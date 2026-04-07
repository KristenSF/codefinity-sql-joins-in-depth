-- Original (unoptimized) query for reference:
-- SELECT students.name, classes.class_name, teachers.name, grades.subject, grades.score
-- FROM students
-- JOIN classes ON students.class_id = classes.class_id
-- JOIN teachers ON classes.teacher_id = teachers.teacher_id
-- JOIN grades ON students.student_id = grades.student_id
-- WHERE grades.score > 80;

SELECT
    s.student_id,
    s.name AS student_name,
    c.class_name,
    t.name  AS teacher_name,
    g.subject,
    g.score
FROM students AS s
JOIN classes AS c on s.class_id = c.class_id
JOIN teachers AS t ON c.teacher_id = t.teacher_id
JOIN grades AS g ON s.student_id = g.student_id    
WHERE g.score > 80;

