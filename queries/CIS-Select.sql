use [CSC312-CISTeamProject];

/*
select * from [Courses];
select * from [Instructors];
select * from [Students];
select * from [Enrollments];
select * from [CollegeCodes];
select * from [Prerequisites];
*/



-- Query 1: Viewing the top 5 courses with the highest credit hours.
SELECT TOP 5 *
FROM Courses
ORDER BY creditHours DESC, courseID;



-- Query 2: Viewing courses belonging to given departments.
SELECT *
FROM Courses
WHERE department IN ('CSC', 'MAT') 
ORDER BY CourseID;



-- Query 3: Table Join - Viewing students along with their assigned advisors.
SELECT S.MUID4, S.lastName, S.firstName, S.state, S.major, S.minor,
	IIF(S.advisor IS NULL, NULL, CONCAT(I.firstName, ' ', I.lastName)) AS 'advisor name'
FROM Students S LEFT JOIN Instructors I ON (S.advisor = I.instructorID)
ORDER BY S.lastName, S.firstName;



-- Query 4: Table Join - Viewing enrollments along with their respective student names.
SELECT S.MUID4, S.lastName, S.firstName, E.courseID, E.instructorID, E.section, E.semester, E.classroom
FROM Enrollments E JOIN Students S ON (E.MUID4 = S.MUID4)
ORDER BY E.semester, E.courseID, S.lastName, S.firstName;



-- Query 5: Self Join - Viewing courses along with their prerequisites.
SELECT C.courseID, C.courseName, C.creditHours,
       STRING_AGG(Prereq.courseID, ', ') AS PrereqCourseIDs,
       P.prereqDescription
FROM Courses C
LEFT JOIN Prerequisites P ON C.courseID = P.courseID
LEFT JOIN Courses Prereq ON P.prereqCourseID = Prereq.courseID
GROUP BY C.courseID, C.courseName, C.creditHours, P.prereqDescription
ORDER BY C.courseID;



-- Query 6: Aggregation - Viewing student enrollment counts for a given course.
SELECT courseID, instructorID, section, semester, classroom,
	   COUNT(MUID4) AS StudentCount
FROM Enrollments
GROUP BY courseID, instructorID, section, semester, classroom
ORDER BY StudentCount DESC;



-- Query 7: Aggregation - Viewing the average credits the courses in each department carry.
SELECT department, AVG(creditHours) AS AverageCreditHours
FROM Courses
GROUP BY department
ORDER BY AverageCreditHours DESC;



-- Query 8: Aggregation - Viewing the sum of credit hours students are taking in a semester. 
SELECT E.MUID4, S.lastName, S.firstName, E.semester,
       SUM(C.creditHours) as [Total Credit Hours]
FROM Enrollments E
JOIN Courses  C ON (E.courseID = C.courseID)
JOIN Students S ON (S.MUID4 = E.MUID4)
GROUP BY E.MUID4, C.creditHours, S.firstName, S.lastName, E.semester
ORDER BY E.semester, [Total Credit Hours] DESC, S.lastName, S.firstName;



-- Query 9: Scalar Functions - Determining the length of a student's full name.
SELECT CONCAT(firstName, ' ', lastName) AS 'Full Name',
       LEN(CONCAT(firstName, ' ', lastName)) AS 'Name Length'
FROM Students
ORDER BY 'Name Length' DESC;



-- Query 10: Subqueries - Viewing students who are in the same class.
SELECT MUID4, lastName, firstName, state, major, minor, advisor
FROM Students
WHERE MUID4 in (
	SELECT MUID4
	FROM Enrollments
	WHERE courseID = 'CSC 312'
);
