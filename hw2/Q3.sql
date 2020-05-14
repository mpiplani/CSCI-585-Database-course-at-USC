--DB Software used livesql.oracle.com

CREATE TABLE Projects (
    ProjectID CHAR(10) NOT NULL,
    Step INTEGER NOT NULL,
    Status CHAR NOT NULL,
    PRIMARY KEY (ProjectID, Step));

INSERT INTO Projects  VALUES ('P100', 0, 'C');
INSERT INTO Projects  VALUES ('P100', 1, 'W');
INSERT INTO Projects  VALUES ('P100', 2, 'W');
INSERT INTO Projects  VALUES ('P201', 0, 'C');
INSERT INTO Projects  VALUES ('P201', 1, 'C');
INSERT INTO Projects  VALUES ('P333', 0, 'W');
INSERT INTO Projects  VALUES ('P333', 1, 'W');
INSERT INTO Projects  VALUES ('P333', 2, 'W');
INSERT INTO Projects  VALUES ('P333', 3, 'W');

SELECT DISTINCT P.ProjectID
FROM Projects Q , Projects P
WHERE Q.Step = 0 AND P.Step=1 AND P.Status='W' 
AND Q.Status = 'C' 
AND Q.ProjectID=P.ProjectID;