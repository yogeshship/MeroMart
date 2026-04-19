package com.meromart.dao;

import com.meromart.model.Contact;

public class TestContact {

    public static void main(String[] args) {

        Contact c = new Contact();
        c.setName("Yogesh");
        c.setEmail("yogesh@test.com");
        c.setSubject("Test Message");
        c.setMessage("Hello this is a test from backend");

        ContactDAO dao = new ContactDAO();
        boolean result = dao.saveContact(c);

        if (result) {
            System.out.println("Message saved successfully!");
        } else {
            System.out.println("Failed to save message.");
        }
    }
}