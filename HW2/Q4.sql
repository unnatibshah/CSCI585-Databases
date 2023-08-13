--DB Software used livesql.oracle.com 

CREATE TABLE bonus
(InstructorName VARCHAR(25) NOT NULL,
 ClassName VARCHAR(50) NOT NULL,
 HourlyRate DECIMAL NOT NULL,
 ClassSize INTEGER NOT NULL,
 PRIMARY KEY (InstructorName, ClassName));

 INSERT INTO bonus VALUES ('Aleph', 'MIDI controllers', 25, 20);
 INSERT INTO bonus VALUES ('Aleph', 'Sound mixing', 25, 20);
 INSERT INTO bonus VALUES ('Aleph', 'Synthesis algorithms', 25, 10);
 INSERT INTO bonus VALUES ('Bit', 'EDM synthesis', 25, 15);
 INSERT INTO bonus VALUES ('Bit', 'Electronic Music Fundamentals', 25, 30);
 INSERT INTO bonus VALUES ('Bit', 'Sound mixing', 25, 15);
 INSERT INTO bonus VALUES ('CRC', 'EDM synthesis', 25, 20);
 INSERT INTO bonus VALUES ('CRC', 'Electronic Music Fundamentals', 25, 15);
 INSERT INTO bonus VALUES ('Dat', 'MIDI controllers', 25, 15);
 INSERT INTO bonus VALUES ('Dat', 'EDM synthesis', 25, 20);
 INSERT INTO bonus VALUES ('Dat', 'Electronic Music Fundamentals', 25, 10);
 INSERT INTO bonus VALUES ('Emscr', 'MIDI controllers', 25, 15);
 INSERT INTO bonus VALUES ('Emscr', 'Synthesis algorithms', 25, 30);
 INSERT INTO bonus VALUES ('Emscr', 'Electronic Music Fundamentals', 25, 55);
 INSERT INTO bonus VALUES ('Emscr', 'EDM synthesis', 25, 10);

SELECT MAX(SUM(HourlyRate * ClassSize * 0.1)) AS bonus_amount
FROM bonus
GROUP BY InstructorName
ORDER BY bonus_amount DESC;