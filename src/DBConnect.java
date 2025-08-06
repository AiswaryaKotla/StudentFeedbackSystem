import java.sql.*;

public class DBConnect {
    public static Connection getConnection() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection("jdbc:mysql://localhost:3306/feedback_system", "root", "Aiswarya@2004");
    }
}
