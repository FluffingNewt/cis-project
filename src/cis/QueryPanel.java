package cis;
import javax.swing.*;
import java.awt.*;
import java.io.File;

import javax.swing.table.DefaultTableModel;
import javax.swing.filechooser.*;
import enums.Tables;
import util.DatabaseConnector;
import util.FileIO;

public class QueryPanel extends JPanel {

    private DatabaseConnector dbc = new DatabaseConnector();

    private Tables table;
    private JTable tableData;

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
        tableData = new JTable();
        JScrollPane scrollPane = new JScrollPane(tableData);

        try {
            DefaultTableModel tableModel = dbc.getQueryData(this.table);
            tableData.setModel(tableModel);
        } catch (Exception e) {
            JLabel errorLabel = new JLabel("Error retrieving data: " + e.getMessage(), SwingConstants.CENTER);
            removeAll();
            add(errorLabel, BorderLayout.CENTER);
        }

        add(scrollPane, BorderLayout.CENTER);
    }



    public void exportToCSV() {
        JFileChooser fileChooser = new JFileChooser();

        FileNameExtensionFilter filter = new FileNameExtensionFilter("CSV Files", "csv");
        fileChooser.setFileFilter(filter);
        fileChooser.setSelectedFile(new File("export.csv"));
        
        int option = fileChooser.showSaveDialog(this);
        if (option == JFileChooser.APPROVE_OPTION) {
            String filePath = fileChooser.getSelectedFile().getAbsolutePath();

            if (!filePath.endsWith(".csv")) filePath += ".csv";

            if (tableData != null) FileIO.exportTableToCSV(tableData, filePath);
            else JOptionPane.showMessageDialog(this, "No data to export.");
        }
    }

}
