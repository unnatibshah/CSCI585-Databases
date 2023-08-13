--DB Software used livesql.oracle.com

CREATE TABLE enrollment
(SID INTEGER NOT NULL,
ClassName VARCHAR(50) NOT NULL,
Grade VARCHAR(10),
PRIMARY KEY (SID, ClassName));

INSERT INTO enrollment VALUES (123, 'Synthesis algorithms', 'A');
INSERT INTO enrollment VALUES (123, 'EDM synthesis', 'B');
INSERT INTO enrollment VALUES (123, 'MIDI controllers', 'B');
INSERT INTO enrollment VALUES (662, 'Sound mixing', 'B');
INSERT INTO enrollment VALUES (662, 'EDM synthesis', 'A');
INSERT INTO enrollment VALUES (662, 'Electronic Music Fundamentals', 'A');
INSERT INTO enrollment VALUES (662, 'MIDI controllers', 'B');
INSERT INTO enrollment VALUES (345, 'MIDI controllers', 'A');
INSERT INTO enrollment VALUES (345, 'Electronic Music Fundamentals', 'B');
INSERT INTO enrollment VALUES (345, 'EDM synthesis', 'A');
INSERT INTO enrollment VALUES (555, 'EDM synthesis', 'B');
INSERT INTO enrollment VALUES (555, 'Electronic Music Fundamentals', 'B');
INSERT INTO enrollment VALUES (213, 'Electronic Music Fundamentals', 'A');

SELECT ClassName, COUNT(SID) AS Total
FROM enrollment
GROUP BY ClassName
ORDER BY 2 DESC;
