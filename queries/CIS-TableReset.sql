use [CSC312-CISTeamProject];

drop table if exists [Enrollments];
drop table if exists [Prerequisites];
drop table if exists [Courses];
drop table if exists [Students];
drop table if exists [Instructors];
drop table if exists [CollegeCodes];

create table CollegeCodes (
	collegeCode varchar(3)   PRIMARY KEY,
	collegeName varchar(150) NOT NULL
);



create table Instructors (
	instructorID int IDENTITY(1,1) PRIMARY KEY,  -- ex. 1
	lastName     varchar(50) NOT NULL,		     -- ex. Zhao
	firstName    varchar(50) NOT NULL,			 -- ex. Martin
	department   varchar(50),					 -- ex. CS
	office       varchar(10),					 -- ex. WSC 224
	phoneNum     int,							 -- ex. 2452
	email        varchar(150)					 -- ex. ZHAO_MQ@mercer.edu
);



create table Students (
	MUID4     varchar(4)  PRIMARY KEY, -- ex. 0123
	lastName  varchar(50) NOT NULL,	   -- ex. Jimmy
	firstName varchar(50) NOT NULL,	   -- ex. Bob
	state     varchar(2),			   -- ex. GA
	major     varchar(50),			   -- ex. CSC, IST
	minor     varchar(50),			   -- ex. MAT
	advisor   int                      -- ex. 1 -> Zhao

	FOREIGN KEY (advisor) references Instructors(instructorID)
);



create table Courses (
	courseID          varchar(10)   PRIMARY KEY, -- ex. CSC 312
	courseName        varchar(100)  NOT NULL,	 -- ex. Database Design
	courseDescription varchar(MAX),			     -- ex. Blah Blah
	department        varchar(10)   NOT NULL,	 -- ex. CS/IST
	collegeCode	      varchar(3)    NOT NULL,	 -- ex. CLA
	creditHours       int           NOT NULL	 -- ex. 3

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



create table Prerequisites (
	prerequisiteID    int IDENTITY(1,1) PRIMARY KEY,
	courseID          varchar(10) NOT NULL,
	prereqCourseID    varchar(10),
	prereqDescription varchar(255),

	FOREIGN KEY(courseID)       references Courses(courseID),
	FOREIGN KEY(prereqCourseID) references Courses(courseID)
);
