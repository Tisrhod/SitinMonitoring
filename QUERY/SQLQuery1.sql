



CREATE TABLE currentSession
(sessionId int Primary key ,
studentId varchar(13) not null,
Date varchar(15) not null,
TimeIn varchar(15) not null,
TimeOut varchar(15) null,
RemainingTime Decimal(18,0) null,
personid INT FOREIGN KEY REFERENCES Students (personid)
)


CREATE TABLE Students (
personid int NOT NULL Primary key,
studentId varchar(13) not null,
firstName varchar(50) not null,
middleInitial varchar(5) null,
lastName varchar(50) not null,
section varchar(10) not null,
RemainingTime decimal(5,3) null,
CARDNO int NOT NULL
)

ALTER TABLE Students
ADD CARDNO int not null


CREATE TABLE SemestersAdded
(
semester varchar(33) not null primary key,
startOfSem date null,
endOfSem date null
)

CREATE TABLE SessionLogs
(
logId int not null primary key,
studentId varchar(13) not null,
Date varchar(15) not null,
TimeIn TIME(7) not null,
TimeOut time(7) null,
TimeUsed decimal(5,3) null,
personid INT FOREIGN KEY REFERENCES Students (personid)
)



SELECT * FROM currentSession
SELECT * FROM Students
SELECT * FROM SemestersAdded
SELECT * FROM SessionLogs

UPDATE Students	
SET CARDNO = 032145678 where CARDNO = 0