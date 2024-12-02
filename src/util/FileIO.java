package util;
import java.io.*;
import javax.swing.*;
import javax.swing.table.TableModel;

public class FileIO {
    public static void exportTableToCSV(JTable table, String filePath) {
        try (FileWriter fw = new FileWriter(filePath)) {
            TableModel model = table.getModel();
            int columnCount = model.getColumnCount();
            int rowCount = model.getRowCount();

            // Write column headers
            for (int i = 0; i < columnCount; i++) {
                fw.write(model.getColumnName(i));
                if (i < columnCount - 1) fw.write(",");
            }
            fw.write("\n");

            // Write data rows
            for (int i = 0; i < rowCount; i++) {
                for (int j = 0; j < columnCount; j++) {
                    fw.write(model.getValueAt(i, j).toString());
                    if (j < columnCount - 1) fw.write(",");
                }
                fw.write("\n");
            }

            JOptionPane.showMessageDialog(null, "CSV export successful.");
        } catch (IOException e) {
            JOptionPane.showMessageDialog(null, "Error exporting data: " + e.getMessage());
        }
    }
}