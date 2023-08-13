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

CREATE TABLE Subjects(
    Subject VARCHAR(30),
    PRIMARY KEY(Subject));

INSERT INTO Subjects VALUES ('Electronic Music Fundamentals'); 
INSERT INTO Subjects VALUES ('MIDI controllers'); 
INSERT INTO Subjects VALUES ('EDM synthesis'); 


SELECT I.InstructorName
FROM Instruction I
WHERE I.Subject IN (SELECT subject FROM Subjects)
GROUP BY I.InstructorName
HAVING COUNT(*) = (SELECT COUNT(*) FROM Subjects)

--Subjects table was created with all of the subjects that needed to be checked.
--After that, use count to identify the InstructorName in the table Instruction who teaches every subject listed under Subjects.
--Division was implemented.