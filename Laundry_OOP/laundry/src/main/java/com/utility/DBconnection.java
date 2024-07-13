package com.utility;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBconnection {
    public static Connection getConnection() {
        Connection connection = null;
        
        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            // Database connection details
            String url = "jdbc:mysql://localhost:3307/laundry";
            String username = "root";
            String password = "1815";
            
            // Establish the connection
            connection = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace(); // Handle the exception according to your needs
        }
        
        return connection;
    }
}
