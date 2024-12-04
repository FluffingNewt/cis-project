package cis;
import util.DatabaseConnector;
import enums.TableEnum;
import javax.swing.*;

import java.awt.*;
import java.util.ArrayList;

public class AddDataDialog extends JDialog {
    private TableEnum tableEnum;
    private JTable tableData;
    private ArrayList<JTextField> inputFields;
    private DatabaseConnector dbc;

    public AddDataDialog(JFrame parent, JTabbedPane tabbedPane, TableEnum tEnum, JTable table, DatabaseConnector dbc) {
        super(parent, "Add Row Data", true);
        this.tableEnum = tEnum;
        this.tableData = table;
        this.inputFields = new ArrayList<>();
        this.dbc = dbc;
        
        setLayout(new BorderLayout());
        setSize(400, 350);
        setLocationRelativeTo(parent);
        setResizable(false);

        // Set up GridBagLayout
        GridBagConstraints gbc = new GridBagConstraints();

        // Panel for input fields
        JPanel inputPanel = new JPanel(new GridBagLayout());
        int inputFieldNum = tableEnum.getInsertValues().length;

        for (int i = 0; i < inputFieldNum; i++) {
            gbc.gridx = 0 ; gbc.gridy = i;
            gbc.insets = new Insets(10, 20, 10, 0);
            gbc.anchor = GridBagConstraints.WEST;
            JLabel label = new JLabel(tableEnum.getInsertValues()[i] + ":");
            inputPanel.add(label, gbc);

            gbc.gridx = 1 ; gbc.gridy = i;
            gbc.insets = new Insets(10, 0, 10, 20);
            gbc.fill = GridBagConstraints.HORIZONTAL;
            gbc.weightx = 1.0;
            JTextField textField = new JTextField();
            inputPanel.add(textField, gbc);
            inputFields.add(textField);
        }

        gbc.gridy = inputFieldNum;
        inputPanel.add(new JLabel(), gbc);

        // Panel for buttons
        JPanel  buttonPanel  = new JPanel();
        JButton submitButton = new JButton("Submit");
        JButton cancelButton = new JButton("Cancel");
        buttonPanel.add(submitButton); 
        buttonPanel.add(cancelButton);

        add(inputPanel, BorderLayout.CENTER);
        add(buttonPanel, BorderLayout.SOUTH);

        // Add action listeners
        submitButton.addActionListener(e -> {

            if (anyEmptyFiles()) {
                JOptionPane.showMessageDialog(
                    this, 
                    "Please fill all fields.\nIf applicable, input \"NULL\" instead.",
                    "Error",
                    JOptionPane.ERROR_MESSAGE
                );
            } else {
                dbc.insert(tableEnum, inputFields);
                if (tabbedPane.getSelectedComponent() instanceof QueryPanel) {
                    ((QueryPanel) tabbedPane.getSelectedComponent()).refreshTableData();
                }
                dispose();
            }

        });

        cancelButton.addActionListener(e -> dispose());

        setVisible(true);
    }

    public boolean anyEmptyFiles() {
        for (JTextField tf : inputFields) {
            if (tf.getText().isEmpty()) return true;
        }

        return false;
    }
}