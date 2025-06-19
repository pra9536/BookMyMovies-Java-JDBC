package entity;

import javax.print.MultiDocPrintService;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DataBaseConfig {

    static String url = "jdbc:mysql://localhost:3306/bookmymovies";

    static String username = "root";

    static String password = "Prateek1234@+";

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(url,username, password);
    }
}
