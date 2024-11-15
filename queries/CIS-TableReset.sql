USE [CSC312-CISTeamProject];

drop table [Enrollments];
drop table [Courses];
drop table [Students];
drop table [Instructors];
drop table [CollegeCodes];


create table CollegeCodes (
	collegeCode varchar(3)   PRIMARY KEY,
	collegeName varchar(150) NOT NULL
);



create table Instructors (
	instructorID int         PRIMARY KEY,		-- ex. 1
	lastName     varchar(50) NOT NULL,		-- ex. Zhao
	firstName    varchar(50) NOT NULL,		-- ex. Martin
	department   varchar(50),			-- ex. CS/IST
	office       varchar(10),			-- ex. WSC 224
	phoneNum     int,				-- ex. 2452
	email        varchar(150)			-- ex. ZHAO_MQ@mercer.edu
);



create table Students (
	MUID4     varchar(4)  PRIMARY KEY,		-- ex. 0123
	lastName  varchar(50) NOT NULL,			-- ex. Jimmy
	firstName varchar(50) NOT NULL,			-- ex. Bob
	state     varchar(2),				-- ex. GA
	major     varchar(50),				-- ex. CSC, IST
	minor     varchar(50),				-- ex. MAT
	advisor   int

	FOREIGN KEY (advisor) references Instructors(instructorID)
);



create table Courses (
	courseID          varchar(10)   PRIMARY KEY,	-- ex. CSC 312
	courseName        varchar(100)  NOT NULL,	-- ex. Database Design
	courseDescription varchar(MAX),			-- ex. Blah Blah
	department        varchar(10)   NOT NULL,	-- ex. CS/IST
	collegeCode	      varchar(3)    NOT NULL,	-- ex. CLA
	prerequisites     varchar(100),			-- ex. CSC 123, CSC 124
	creditHours       int           NOT NULL	-- ex. 3

	FOREIGN KEY (collegeCode) references CollegeCodes(collegeCode)
);


create table Enrollments (
	MUID4        varchar(4)  NOT NULL,
	courseID     varchar(10) NOT NULL,
	instructorID int,
	section      int         NOT NULL,
	semester     varchar(10) NOT NULL,
	classroom    varchar(10)

	FOREIGN KEY (MUID4)        references Students(MUID4),
	FOREIGN KEY (courseID)     references Courses(courseID),
	FOREIGN KEY (instructorID) references Instructors(instructorID)
);



select * from [Courses];
select * from [Instructors];
select * from [Students];
select * from [Enrollments];
select * from [CollegeCodes];
