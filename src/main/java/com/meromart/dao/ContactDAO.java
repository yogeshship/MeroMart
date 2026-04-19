package com.meromart.dao;

import com.meromart.db.DBConnection;
import com.meromart.model.Contact;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class ContactDAO {

    public boolean saveContact(Contact contact) {
        boolean status = false;

        String sql = "INSERT INTO contact_messages (name, email, subject, message) VALUES (?, ?, ?, ?)";

        Connection conn = null;
        PreparedStatement ps = null;

        try {
            conn = DBConnection.getConnection();

            if (conn == null) {
                System.out.println("Database connection is null.");
                return false;
            }

            ps = conn.prepareStatement(sql);

            ps.setString(1, contact.getName());
            ps.setString(2, contact.getEmail());
            ps.setString(3, contact.getSubject());
            ps.setString(4, contact.getMessage());

            int rows = ps.executeUpdate();

            if (rows > 0) {
                status = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (ps != null) {
                    ps.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return status;
    }
}