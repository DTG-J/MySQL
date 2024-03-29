# 11- PROCEDURE -Graduate students
DELIMITER $
CREATE PROCEDURE udp_graduate_all_students_by_year (year_started INT)
	BEGIN
		UPDATE students s
		JOIN students_courses sc ON sc. student_id = s.id
		JOIN courses c ON sc.course_id = c.id
		SET s.is_graduated = 1
		WHERE YEAR (c.start_date) = year_started;
    END$
    
    DELIMITER ;
    
    SET SQL_SAFE_UPDATES = 0;
    
    CALL udp_graduate_all_students_by_year (2017);
    
    UPDATE students s
    JOIN students_courses sc ON sc. student_id = s.id
    JOIN courses c ON sc.course_id = c.id
    SET s.is_graduated = 1
    WHERE YEAR (c.start_date) = year_started;
   