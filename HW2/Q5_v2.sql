--DB Software used livesql.oracle.com

CREATE TABLE Instruction(
    InstructorName VARCHAR(20),
    Subject VARCHAR(50),
    PRIMARY KEY (InstructorName, Subject));  

INSERT INTO Instruction VALUES ('Aleph', 'MIDI controllers');        
INSERT INTO Instruction VALUES ('Aleph', 'Sound mixing');         
INSERT INTO Instruction VALUES ('Aleph', 'Synthesis algorithms');       
INSERT INTO Instruction VALUES ('Bit', 'EDM synthesis');
INSERT INTO Instruction VALUES ('Bit', 'Electronic Music Fundamentals');
INSERT INTO Instruction VALUES ('Bit', 'Sound mixing');
INSERT INTO Instruction VALUES ('CRC', 'EDM synthesis');
INSERT INTO Instruction VALUES ('CRC', 'Electronic Music Fundamentals');
INSERT INTO Instruction VALUES ('Dat', 'MIDI controllers');
INSERT INTO Instruction VALUES ('Dat', 'EDM synthesis');
INSERT INTO Instruction VALUES ('Dat', 'Electronic Music Fundamentals');
INSERT INTO Instruction VALUES ('Emscr', 'MIDI controllers');
INSERT INTO Instruction VALUES ('Emscr', 'Synthesis algorithms');
INSERT INTO Instruction VALUES ('Emscr', 'Electronic Music Fundamentals');
INSERT INTO Instruction VALUES ('Emscr', 'EDM synthesis');

SELECT InstructorName as I
FROM Instruction
WHERE Subject = 'Electronic Music Fundamentals'
INTERSECT
SELECT InstructorName 
FROM Instruction
WHERE Subject = 'MIDI controllers'
INTERSECT
SELECT InstructorName
FROM Instruction
WHERE Subject = 'EDM synthesis';

--By initially identifying InstructorName who are capable of teaching each needed subject respectively and then intersecting them, this query determines InstructorName who can teach all three subjects.