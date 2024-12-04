package cis;
import javax.swing.*;
import java.awt.*;
import java.io.File;
import javax.swing.table.DefaultTableCellRenderer;
import javax.swing.table.DefaultTableModel;
import javax.swing.filechooser.*;
import enums.TableEnum;
import util.DatabaseConnector;
import util.FileIO;

public class QueryPanel extends JPanel {

    private final static Color MAIN_COLOR = new Color(247, 104, 0);
    private final static Color SECONDARY_COLOR = new Color(201, 201, 201);

    private final static Font boldHeader = new Font("Arial", Font.BOLD, 14);
    private final static Font boldCell = new Font("Arial", Font.BOLD, 12);
    private final static Font normalCell = new Font("Arial", Font.PLAIN, 12);

    private DatabaseConnector dbc = new DatabaseConnector();

    private TableEnum table;
    private JTable tableData;

    public QueryPanel(String tabName) {
        setLayout(new BorderLayout());

        switch (tabName) {
            case "Enrollments"   : this.table = TableEnum.ENROLLMENTS; break;
            case "Courses"       : this.table = TableEnum.COURSES;     break;
            case "Prerequisites" : this.table = TableEnum.PREREQS;     break;
            case "Students"      : this.table = TableEnum.STUDENTS;    break;
            case "Instructors"   : this.table = TableEnum.INSTRUCTORS; break;
            case "CollegeCodes"  : this.table = TableEnum.CCODES;      break;
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

            int dataRowHeight = boldCell.getSize() + 5; // Font size + padding (10px extra)
            tableData.setRowHeight(dataRowHeight);  // Set height for data rows
            
            // Table formatting
            tableData.getTableHeader().setDefaultRenderer(new DefaultTableCellRenderer() {
                @Override
                public Component getTableCellRendererComponent(JTable table, Object value, boolean isSelected, boolean hasFocus, int row, int column) {
                    JLabel label = (JLabel) super.getTableCellRendererComponent(table, value, isSelected, hasFocus, row, column);
                    label.setHorizontalAlignment(SwingConstants.LEFT);
                    label.setVerticalAlignment(SwingConstants.CENTER);
                    label.setBorder(BorderFactory.createCompoundBorder(
                        UIManager.getBorder("TableHeader.cellBorder"),
                        BorderFactory.createEmptyBorder(0, 3, 0, 5)
                    ));
                    label.setBackground(MAIN_COLOR);
                    label.setFont(boldHeader);
                    return label;
                }
            });

            tableData.setDefaultRenderer(Object.class, new DefaultTableCellRenderer() {
                @Override
                public Component getTableCellRendererComponent(JTable table, Object value, boolean isSelected, boolean hasFocus, int row, int column) {
                    JLabel label = (JLabel) super.getTableCellRendererComponent(table, value, isSelected, hasFocus, row, column);
                
                    label.setHorizontalAlignment(SwingConstants.LEFT);
                    label.setVerticalAlignment(SwingConstants.CENTER);
                    label.setBorder(BorderFactory.createEmptyBorder(2, 5, 0, 5));

                    if (column == 0) {
                        label.setBackground(SECONDARY_COLOR);
                        label.setFont(boldCell);
                    } else {
                        label.setBackground(Color.WHITE);
                        label.setFont(normalCell);
                    }
                
                    return label;
                }
            });

        } catch (Exception e) {
            JLabel errorLabel = new JLabel("Error retrieving data: " + e.getMessage(), SwingConstants.CENTER);
            removeAll();
            add(errorLabel, BorderLayout.CENTER);
        }

        add(scrollPane, BorderLayout.CENTER);
    }

    public void refreshTableData() {
        try {
            DefaultTableModel tableModel = dbc.getQueryData(this.table);
            tableData.setModel(tableModel);
            tableData.revalidate();
            tableData.repaint();
        } catch (Exception e) { e.printStackTrace(); }
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

    public TableEnum getTableEnum() {
        return this.table;
    }

    public JTable getTableData() {
        return this.tableData;
    }

    public DatabaseConnector getDatabaseConnector() {
        return this.dbc;
    }

}
