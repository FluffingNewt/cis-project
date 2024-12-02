package enums;

public enum Tables {
    ENROLLMENTS ("SELECT * FROM [Enrollments]"),
    COURSES     ("SELECT * FROM [Courses]"),
    PREREQS     ("SELECT * FROM [Prerequisites]"),
    STUDENTS    ("SELECT * FROM [Students]"),
    INSTRUCTORS ("SELECT * FROM [Instructors]"),
    CCODES      ("SELECT * FROM [CollegeCodes]");

    private final String query;



    Tables(String query) {
        this.query = query;
    }


    
    public String getQuery() {
        return query;
    }
}