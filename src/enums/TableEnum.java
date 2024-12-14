package enums;

public enum TableEnum {
    ENROLLMENTS(
        "SELECT * FROM [Enrollments]",
        "INSERT INTO [Enrollments] (MUID4, courseID, instructorID, section, semester, classroom) VALUES (?,?,?,?,?,?)",
        new String[] {"MUID4", "courseID", "instructorID", "section", "semester", "classroom"},
        new Class<?>[] {String.class, String.class, String.class, Integer.class, String.class, String.class}
    ),
    COURSES(
        "SELECT * FROM [Courses]",
        "INSERT INTO [Courses] (courseID, courseName, courseDescription, department, collegeCode, creditHours) VALUES (?,?,?,?,?,?)",
        new String[] {"courseID", "courseName", "courseDescription", "department", "collegeCode", "creditHours"},
        new Class<?>[] {String.class, String.class, String.class, String.class, String.class, Integer.class}
    ),
    PREREQS(
        "SELECT * FROM [Prerequisites]",
        "INSERT INTO [Prerequisites] (courseID, prereqCourseID, prereqDescription) VALUES (?,?,?)",
        new String[] {"courseID", "prereqCourseID", "prereqDescription"},
        new Class<?>[] {String.class, String.class, String.class}
    ),
    STUDENTS(
        "SELECT * FROM [Students]",
        "INSERT INTO [Students] (MUID4, lastName, firstName, state, major, minor, advisor) VALUES (?,?,?,?,?,?,?)",
        new String[] {"MUID4", "lastName", "firstName", "state", "major", "minor", "advisor"},
        new Class<?>[] {String.class, String.class, String.class, String.class, String.class, String.class, Integer.class}
    ),
    INSTRUCTORS(
        "SELECT * FROM [Instructors]",
        "INSERT INTO [Instructors] (instructorID, lastName, firstName, department, office, phoneNum, email) VALUES (?,?,?,?,?,?,?)",
        new String[] {"instructorID", "lastName", "firstName", "department", "office", "phoneNum", "email"},
        new Class<?>[] {Integer.class, String.class, String.class, String.class, String.class, String.class, String.class}
    ),
    CCODES(
        "SELECT * FROM [CollegeCodes]",
        "INSERT INTO [CollegeCodes] (collegeCode, collegeName) VALUES (?,?)",
        new String[] {"collegeCode", "collegeName"},
        new Class<?>[] {String.class, String.class}
    );

    private final String selectQuery;
    private final String insertQuery;
    private final String[] insertValues;
    private final Class<?>[] insertTypes;

    TableEnum(String sQuery, String iQuery, String[] iValues, Class<?>[] iTypes) {
        this.selectQuery  = sQuery;
        this.insertQuery  = iQuery;
        this.insertValues = iValues;
        this.insertTypes  = iTypes;
    }

    public String getSelectQuery() { return selectQuery; }

    public String getInsertQuery() { return insertQuery; }

    public String[] getInsertValues() { return insertValues; }

    public Class<?>[] getInsertTypes() { return insertTypes; }
}
