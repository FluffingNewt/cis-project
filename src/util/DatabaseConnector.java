package util;
import javax.swing.*;
import java.sql.*;
import java.util.ArrayList;
import javax.swing.table.DefaultTableModel;
import enums.TableEnum;

public class DatabaseConnector {

    private Connection connection;

    private final static String URL  = "jdbc:sqlserver://csdata.cd4sevot432y.us-east-1.rds.amazonaws.com;";
	private final static String USER = "csc312cloud";
	private final static String PASS = "c3s!c2Cld";
    private final static String DATABASE = "databaseName=CSC312-CISTeamProject;";

    
    public DatabaseConnector() {
        try { connection = DriverManager.getConnection(URL + DATABASE, USER, PASS); }
        catch (SQLException e) { System.err.println("Failed to connect to the database: " + e.getMessage()); }
    }



    public DefaultTableModel getQueryData(TableEnum t) {
        DefaultTableModel table = new DefaultTableModel();

        try {
            Statement stmt = connection.createStatement();
            ResultSet rset = stmt.executeQuery(t.getSelectQuery());
            ResultSetMetaData metaD = rset.getMetaData();

            int cols = metaD.getColumnCount();
            for (int i = 1; i <= cols; i++) {
                table.addColumn(metaD.getColumnName(i));
            }

            while (rset.next()) {
                Object[] rowData = new Object[cols];
                for (int i = 1; i <= cols; i++) {
                    rowData[i - 1] = rset.getObject(i);
                }
                table.addRow(rowData);
            }

        } catch (Exception e) { e.printStackTrace(); }

        return table;
    }



    public void insert(TableEnum tEnum, ArrayList<JTextField> inputFields) {
        String query     = tEnum.getInsertQuery();
        Class<?>[] types = tEnum.getInsertTypes();

        try (PreparedStatement pstmt = connection.prepareStatement(query)) {
            
            for (int i = 0; i < inputFields.size(); i++) {

                String text = inputFields.get(i).getText();

                if (text.equals("NULL")) pstmt.setNull(i + 1, java.sql.Types.INTEGER);
                else if (types[i] == Integer.class)    pstmt.setInt(i + 1, Integer.parseInt(text));
                else                              pstmt.setObject(i + 1, text);
            }

            int rowsAffected = pstmt.executeUpdate();
            System.out.println("Insert successful. Rows affected: " + rowsAffected);

        } catch (SQLException e) { e.printStackTrace(); }
    }
}
