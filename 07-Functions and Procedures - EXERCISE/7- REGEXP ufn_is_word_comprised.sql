# 7-Define Function
/* *Define a function ufn_is_word_comprised(set_of_letters varchar(50), word varchar(50))  that returns 1 or 0 depending on that if the word is a comprised of the given set of letters. 
Submit your query statement as Run skeleton, run queries & check DB in Judge.
/
DELIMITER $
CREATE FUNCTION  ufn_is_word_comprised(set_of_letters varchar(50), word varchar(50))
RETURNS TINYINT
DETERMINISTIC
BEGIN 
	RETURN word REGEXP CONCAT ('^[', set_of_letters, ']+$');
    END


DELIMITER $
CREATE FUNCTION ufn_is_word_comprised(set_of_letters VARCHAR(50), word VARCHAR(50))
RETURNS INT
BEGIN
    DECLARE letter_count INT;
    DECLARE i INT;
    DECLARE current_letter CHAR(1);

    -- Check if the length of the word is greater than the set of letters
    IF LENGTH(word) > LENGTH(set_of_letters) THEN
        RETURN 0;
    END IF;

    -- Iterate through each letter in the word
    SET i = 1;
    WHILE i <= LENGTH(word) DO
        SET current_letter = SUBSTRING(word, i, 1);

        -- Check if the current letter is in the set_of_letters
        IF POSITION(current_letter IN set_of_letters) = 0 THEN
            RETURN 0; -- The word contains a letter not in the set_of_letters
        END IF;

        SET i = i + 1;
    END WHILE;

    -- Check if the word contains only unique letters from the set_of_letters
    SET letter_count = LENGTH(set_of_letters);
    IF LENGTH(word) = letter_count THEN
        RETURN 1;
    ELSE
        RETURN 0;
    END IF;
END;


-- Creating the ufn_is_word_comprised function
CREATE FUNCTION ufn_is_word_comprised(set_of_letters VARCHAR(50), word VARCHAR(50))
RETURNS INT
AS
BEGIN
    DECLARE letter_count INT;
    DECLARE i INT;
    DECLARE current_letter CHAR(1);

    -- Check if the length of the word is greater than the set of letters
    IF LENGTH(word) > LENGTH(set_of_letters) THEN
        RETURN 0;
    END IF;

    -- Iterate through each letter in the word
    SET i = 1;
    WHILE i <= LENGTH(word) DO
        SET current_letter = SUBSTRING(word, i, 1);

        -- Check if the current letter is in the set_of_letters
        IF POSITION(current_letter IN set_of_letters) = 0 THEN
            RETURN 0; -- The word contains a letter not in the set_of_letters
        END IF;

        SET i = i + 1;
    END WHILE;

    -- Check if the word contains only unique letters from the set_of_letters
    SET letter_count = LENGTH(set_of_letters);
    IF LENGTH(word) = letter_count THEN
        RETURN 1;
    ELSE
        RETURN 0;
    END IF;
END;

-- Creating a table to store words and results
CREATE TABLE WordResults (
    set_of_letters VARCHAR(50),
    word VARCHAR(50),
    result INT
);

-- Inserting example data into the table
INSERT INTO WordResults (set_of_letters, word, result)
VALUES 
    ('oistmiahf', 'Sofia', ufn_is_word_comprised('oistmiahf', 'Sofia')),
    ('oistmiahf', 'halves', ufn_is_word_comprised('oistmiahf', 'halves')),
    ('bobr', 'Rob', ufn_is_word_comprised('bobr', 'Rob')),
    ('pppp', 'Guy', ufn_is_word_comprised('pppp', 'Guy'));

-- Querying the table with the desired output
SELECT set_of_letters, word
FROM WordResults
WHERE result = 1;
