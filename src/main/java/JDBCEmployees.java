import java.sql.*;
import java.util.ArrayList;

import com.mysql.cj.jdbc.Driver;

public class JDBCEmployees {
    public static void main(String[] args) throws SQLException {

        DriverManager.registerDriver(new Driver());
        Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/employees?allowPublicKeyRetrieval=true&useSSL=false",
                "root",
                "codeup"
        );
        Statement statement = connection.createStatement();
//        statement.executeQuery("use employees");
//        statement.executeQuery("select * employees");
        ResultSet rs = statement.executeQuery("select * from employees limit 10");
        ArrayList<String> names = new ArrayList<>();
        while (rs.next()){
            names.add(rs.getString("first_name"));
        }
        System.out.println(names);
        ResultSet result = statement.executeQuery("select * from employees");
        while (result.next()){
            System.out.println(rs.getString("first_name"));
        }
    }
}
