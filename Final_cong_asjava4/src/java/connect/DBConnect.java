
package connect;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
    
    public static Connection getConnection(){
        Connection conn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/asjava4", "root", "12345");
            //Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            //conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433; databasename = Java5; user = sa; password = 12345;");
            System.out.println("Connect successful.");
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Connect Error");
        }
        return conn;
    }
    
    public static void main(String[] args) {
        System.out.println(getConnection());
    }
}
