package com.meromart.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

    // Database connection URL
    // 3307 is the MySQL port used by XAMPP on this system
    private static final String URL = "jdbc:mysql://localhost:3307/mero_mart_db";

    // Database username and password
    private static final String USERNAME = "root";
    private static final String PASSWORD = "";

    // This method creates and returns a database connection
    public static Connection getConnection() {
        Connection conn = null;

        try {
            // Load MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Connect Java application with MySQL database
            conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);

            System.out.println("Connected to database!");

        } catch (Exception e) {
            // Print error if database connection fails
            e.printStackTrace();
        }

        return conn;
    }
}