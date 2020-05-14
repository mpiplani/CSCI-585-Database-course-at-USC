--DB Software used livesql.oracle.com

CREATE TABLE Instruction(
    Instructor CHAR(15),
    Subject CHAR(30),
    PRIMARY KEY (Instructor, Subject));  

INSERT INTO Instruction VALUES ('Aleph', 'Scratch');        
INSERT INTO Instruction VALUES ('Aleph', 'Java');         
INSERT INTO Instruction VALUES ('Aleph', 'Processing');       
INSERT INTO Instruction VALUES ('Bit', 'Python');
INSERT INTO Instruction VALUES ('Bit', 'Javascript');
INSERT INTO Instruction VALUES ('Bit', 'Java');
INSERT INTO Instruction VALUES ('CRC', 'Python');
INSERT INTO Instruction VALUES ('CRC', 'Javascript');
INSERT INTO Instruction VALUES ('Dat', 'Scratch');
INSERT INTO Instruction VALUES ('Dat', 'Python');
INSERT INTO Instruction VALUES ('Dat', 'Javascript');
INSERT INTO Instruction VALUES ('Emscr', 'Scratch');
INSERT INTO Instruction VALUES ('Emscr', 'Processing');
INSERT INTO Instruction VALUES ('Emscr', 'Javascript');
INSERT INTO Instruction VALUES ('Emscr', 'Python');

CREATE TABLE Subjects(
    Subject Char(30),
    PRIMARY KEY(Subject));

INSERT INTO Subjects VALUES ('Javascript'); 
INSERT INTO Subjects VALUES ('Scratch'); 
INSERT INTO Subjects VALUES ('Python'); 


SELECT i1.Instructor
FROM Instruction i1
WHERE i1.Subject IN (SELECT subject FROM Subjects)
GROUP BY i1.Instructor
HAVING COUNT(*) = (SELECT COUNT(*) FROM Subjects)

--Created table Subjects of the all the subjects which need to be checked
--Then extract the instructor in the table instruction who teaches all the subjects contained in the table Subjects using count.
--implemented division.