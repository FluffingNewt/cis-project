package cis;
import javax.swing.*;
import java.awt.*;
import javax.swing.table.DefaultTableModel;
import enums.Tables;
import util.DatabaseConnector;

public class QueryPanel extends JPanel {

    private DatabaseConnector dbc = new DatabaseConnector();

    private Tables table;

    public QueryPanel(String tabName) {
        setLayout(new BorderLayout());

        switch (tabName) {
            case "Enrollments"   : this.table = Tables.ENROLLMENTS; break;
            case "Courses"       : this.table = Tables.COURSES;     break;
            case "Prerequisites" : this.table = Tables.PREREQS;     break;
            case "Students"      : this.table = Tables.STUDENTS;    break;
            case "Instructors"   : this.table = Tables.INSTRUCTORS; break;
            case "CollegeCodes"  : this.table = Tables.CCODES;      break;
        }

        JLabel label = new JLabel("Content for " + tabName, SwingConstants.CENTER);
        add(label, BorderLayout.NORTH);

        displayTableData();
    }

    private void displayTableData() {
        JTable t = new JTable();
        JScrollPane sp = new JScrollPane(t);

        try {
            DefaultTableModel tableModel = dbc.getQueryData(this.table);
            t.setModel(tableModel);

        } catch (Exception e) {
            JLabel errorLabel = new JLabel("Error retrieving data: " + e.getMessage(), SwingConstants.CENTER);
            removeAll();
            add(errorLabel, BorderLayout.CENTER);
        }

        add(sp, BorderLayout.CENTER);
    }

}
