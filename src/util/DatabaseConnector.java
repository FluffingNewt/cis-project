package util;
import java.sql.*;
import javax.swing.table.DefaultTableModel;
import enums.Tables;

public class DatabaseConnector {

    private Connection connection;

    private final static String URL  = "jdbc:sqlserver://csdata.cd4sevot432y.us-east-1.rds.amazonaws.com;";
	private final static String USER = "csc312cloud";
	private final static String PASS = "c3s!c2Cld";
    private final static String DATABASE = "databaseName=CSC312-CISTeamProject;";

    /**
     * Constructor initializes the database connection.
     */
    public DatabaseConnector() {
        try { connection = DriverManager.getConnection(URL + DATABASE, USER, PASS); }
        catch (SQLException e) { System.err.println("Failed to connect to the database: " + e.getMessage()); }
    }



    public DefaultTableModel getQueryData(Tables t) {
        DefaultTableModel table = new DefaultTableModel();

        try {
            Statement stmt = connection.createStatement();
            ResultSet rset = stmt.executeQuery(t.getQuery());
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



    /**
     * Closes the connection.
     */
    public void closeConnection() {
        try { connection.close(); }
        catch (SQLException e) { System.err.println("Failed to close connection: " + e.getMessage()); }
    }
}
