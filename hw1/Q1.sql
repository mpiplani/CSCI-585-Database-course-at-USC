--DB Software used livesql.oracle.com

CREATE TABLE ProjectRoomBookings
(roomNum INTEGER NOT NULL,
startTime INTEGER NOT NULL,
endTime INTEGER NOT NULL,
groupName CHAR(10) NOT NULL,
PRIMARY KEY (roomNum, startTime),
CONSTRAINT Check_time CHECK (startTime<endTime));
    
CREATE OR REPLACE TRIGGER roomcheck
BEFORE INSERT OR UPDATE ON ProjectRoomBookings
FOR EACH ROW
DECLARE
count_room_booking NUMBER;
BEGIN
select count(*) into count_room_booking
from ProjectRoomBookings
where :new.roomNum=roomNum and NOT (:new.startTime>=endTime or :new.endTime<=startTime);
IF count_room_booking>0
THEN
  RAISE_APPLICATION_ERROR(-20001, 'Error in entry');
END IF;
END;
/


INSERT INTO ProjectRoomBookings VALUES (12001, 12, 15, 'A');
INSERT INTO ProjectRoomBookings VALUES (12001, 13, 15, 'B');
INSERT INTO ProjectRoomBookings VALUES (12001, 1, 5, 'D');
INSERT INTO ProjectRoomBookings VALUES (20001, 4, 9, 'C');
INSERT INTO ProjectRoomBookings VALUES (20001, 9, 12, 'C');

SELECT * 
FROM ProjectRoomBookings;