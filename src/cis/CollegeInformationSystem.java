package cis;
import java.awt.*;
import javax.swing.*;
import javax.swing.plaf.basic.BasicTabbedPaneUI;


public class CollegeInformationSystem {

    private final static Color MAIN_COLOR = new Color(247, 104, 0);
    private final static Color SECONDARY_COLOR = Color.LIGHT_GRAY;
    
    
    public static void main(String[] args) {

        SwingUtilities.invokeLater(() -> {
            JFrame frame = new JFrame("College Management System");
            frame.setSize(800, 600);

            // Create menu bar
            JMenuBar menuBar = new JMenuBar();
            
            // "File" menu
            JMenu fileMenu = new JMenu("File");
            // JMenuItem exitItem = new JMenuItem("Exit");
            // exitItem.addActionListener(e -> System.exit(0));
            // fileMenu.add(exitItem);
            

            // "Edit" menu
            JMenu editMenu = new JMenu("Edit");
            // JMenuItem preferencesItem = new JMenuItem("Preferences");
            // preferencesItem.addActionListener(e -> 
            //     JOptionPane.showMessageDialog(frame, "Edit Preferences here.")
            // );
            // editMenu.add(preferencesItem);
            
            menuBar.add(fileMenu);
            menuBar.add(editMenu);
            

            JTabbedPane tabbedPane = new JTabbedPane();
            tabbedPane.addTab("Enrollments", new QueryPanel("Enrollments"));
            tabbedPane.addTab("Courses", new QueryPanel("Courses"));
            tabbedPane.addTab("Prerequisites", new QueryPanel("Prerequisites"));
            tabbedPane.addTab("Students", new QueryPanel("Students"));
            tabbedPane.addTab("Instructors", new QueryPanel("Instructors"));
            tabbedPane.addTab("CollegeCodes", new QueryPanel("CollegeCodes"));
            tabbedPane.setUI(new CustomTabbedPaneUI());

            frame.setJMenuBar(menuBar);
            frame.add(tabbedPane, BorderLayout.CENTER);

            frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
            frame.setVisible(true);
        });
    }

    // Inline Custom UI class
    private static class CustomTabbedPaneUI extends BasicTabbedPaneUI {

        @Override
        protected void installDefaults() {
            super.installDefaults();
            Font customFont = new Font("Arial", Font.BOLD, 14);
            tabPane.setFont(customFont);
        }

        @Override
        protected void paintTabBackground(Graphics g, int tabPlacement, int tabIndex, int x, int y, int width, int height, boolean isSelected) {
            if (isSelected) g.setColor(MAIN_COLOR);
            else g.setColor(SECONDARY_COLOR);
            g.fillRect(x, y, width, height);
        }

        @Override
        protected void paintTabBorder(Graphics g, int tabPlacement, int tabIndex, int x, int y, int w, int h, boolean isSelected) {
            if (!isSelected) super.paintTabBorder(g, tabPlacement, tabIndex, x, y, w, h, isSelected);
        }
    }
}