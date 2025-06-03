


CREATE DATABASE DNTS_STUDENTS_RECORDS

create table Students(
personid int identity(1,1) PRIMARY KEY NOT NULL,
studentId varchar(13) NOT NULL,
firstName varchar(50) NOT NULL,
middleInitial varchar(5),
lastName varchar(50) NOT NULL,
section varchar(10) NOT NULL,
RemainingTime decimal(5, 3),

CONSTRAINT UQ_StudentTermEnrolled UNIQUE(studentId, section)
);

go

ALTER TABLE Students
ADD CARDNO varchar(20) not null

CREATE TABLE SemestersAdded
(
semester varchar(33) not null primary key,
startOfSem date null,
endOfSem date null
)

create table currentSession(
sessionId int identity(1,1) PRIMARY KEY NOT NULL,
studentId varchar(13) NOT NULL,
Date varchar(15) NOT NULL,
TimeIn varchar(15) NOT NULL,
TimeOut varchar(15),
RemainingTime decimal,
personid int NOT NULL,

CONSTRAINT FK_currentStudent FOREIGN KEY(personid)
REFERENCES Students(personid)
);

create table SessionLogs(
logId int identity(1,1) PRIMARY KEY NOT NULL,
studentId varchar(13) NOT NULL,
Date varchar(15) NOT NULL,
TimeIn time NOT NULL,
TimeOut time,
TimeUsed decimal(5, 3),
personid int NOT NULL,

CONSTRAINT FK_LogStudent FOREIGN KEY(personid)
REFERENCES Students(personid)
);


select * from Students