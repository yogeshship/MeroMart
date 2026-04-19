package com.meromart.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

	private static final String URL = "jdbc:mysql://localhost:3307/mero_mart_db";
	private static final String USERNAME = "root";
	private static final String PASSWORD = "";

    public static Connection getConnection() {
        Connection conn = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            System.out.println("Connected to database!");
        } catch (Exception e) {
            e.printStackTrace();
        }

        return conn;
    }
}