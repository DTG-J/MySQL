# 08-Students count

SELECT count(*) AS students_count, u.name AS university_name
FROM universities u
JOIN courses c ON c.university_id = u. id
JOIN students_courses st ON st. course_id = c. id
JOIN students s ON st.student_id = s.id
GROUP BY university_name
HAVING students_count >= 8
ORDER BY students_count DESC, university_name DESC; 
