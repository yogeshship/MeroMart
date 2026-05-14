package com.meromart.dao;

import com.meromart.db.DBConnection;
import com.meromart.model.Contact;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class ContactDAO {

    // This method saves contact form data into the database
    public boolean saveContact(Contact contact) {
        boolean status = false;

        // SQL query to insert contact message into contact_messages table
        String sql = "INSERT INTO contact_messages (name, email, subject, message) VALUES (?, ?, ?, ?)";

        // Try-with-resources automatically closes the database connection
        try (Connection conn = DBConnection.getConnection()) {

            // Check whether database connection is available
            if (conn == null) {
                System.out.println("Database connection is null.");
                return false;
            }

            // PreparedStatement is used to prevent SQL injection
            try (PreparedStatement ps = conn.prepareStatement(sql)) {

                // Set values from Contact object into SQL query
                ps.setString(1, contact.getName());
                ps.setString(2, contact.getEmail());
                ps.setString(3, contact.getSubject());
                ps.setString(4, contact.getMessage());

                // Execute insert query
                int rows = ps.executeUpdate();

                // If one or more rows are inserted, status becomes true
                if (rows > 0) {
                    status = true;
                }
            }

        } catch (Exception e) {
            // Print error if insertion fails
            e.printStackTrace();
        }

        return status;
    }
}