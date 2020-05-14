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


SELECT Instructor
FROM Instruction join Subjects
on Instruction.subject=Subjects.subject
GROUP BY Instructor
HAVING COUNT(*) = (SELECT COUNT(*) FROM Subjects)

--Created table Subjects of the all the subjects which need to be checked
--First join table Instruction and Subjects and then find the Instructor in the joined table whose subjects' number is equal to the number of the subjects in the Subjects table.