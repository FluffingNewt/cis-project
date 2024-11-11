

drop table [CSC312-CISTeamProject].[dbo].[Courses];
drop table [CSC312-CISTeamProject].[dbo].[Instructor];
drop table [CSC312-CISTeamProject].[dbo].[Student];


USE [CSC312-CISTeamProject];


create table Instructors (

	instructorID int PRIMARY KEY,
	lastName     varchar(50) NOT NULL,
	firstName    varchar(50) NOT NULL,
	office       varchar(10),
	phoneNum     int,
	email        varchar(150)

);



create table Students (

	MUID4     int         PRIMARY KEY,
	lastName  varchar(50) NOT NULL,
	firstName varchar(50) NOT NULL,
	state     varchar(2),
	major     varchar(50),
	minor     varchar(50)


);



create table Courses (

	courseID          varchar(10)  PRIMARY KEY,		--ex. CSC 312
	courseName        varchar(100) NOT NULL,		--ex. Database Design
	courseDescription varchar(MAX),
	department        varchar(10)  NOT NULL,		--ex. CS/IST
	collegeCode	      varchar(10)  NOT NULL,		--ex. CLA
	prerequisites     varchar(100),
	instructorID      int,
	semester          varchar(10)  NOT NULL,		--ex. Fall
	classroom         varchar(10),					--ex WSC 212

	FOREIGN KEY (instructorID) references Instructors(instructorID)

);



select *
from [Courses];

select *
from [Instructors];

select *
from [Students];