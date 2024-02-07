# 10-Average grades

DELIMITER $
CREATE FUNCTION udf_average_alumni_grade_by_course_name(course_name VARCHAR(60)) 
RETURNS DECIMAL (10,2)
DETERMINISTIC
BEGIN
	DECLARE result DECIMAL (10,2);
	SET result :=	(SELECT AVG (sc. grade) FROM courses c
					JOIN students_courses sc ON sc.course_id = c.id
					JOIN students s ON sc.student_id = s.id
					WHERE c.name = course_name AND s.is_graduated = 1
                    GROUP BY c.id);
    RETURN result;                
END$

DELIMITER ; 
DROP FUNCTION udf_average_alumni_grade_by_course_name;
SELECT udf_average_alumni_grade_by_course_name ('Quantum Physics');

DELIMITER $
CREATE FUNCTION udf_average_alumni_grade_by_course_name(course_name VARCHAR(60)) 
RETURNS DECIMAL (10,2)
DETERMINISTIC
BEGIN
    DECLARE result DECIMAL (10,2);
    
    SELECT AVG(sc.grade) INTO result
    FROM courses c
    JOIN students_courses sc ON sc.course_id = c.id
    JOIN students s ON sc.student_id = s.id
    WHERE c.name = course_name AND s.is_graduated = 1
    GROUP BY c.id
    LIMIT 1;

    IF result IS NULL THEN
        SET result = 0.00; -- Set a default value or handle the case where no results are found.
    END IF;

    RETURN result;
END$
