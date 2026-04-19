package com.meromart.controller;

import com.meromart.dao.ContactDAO;
import com.meromart.model.Contact;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/contact")
public class ContactServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String subject = request.getParameter("subject");
        String message = request.getParameter("message");

        if (name == null || name.trim().isEmpty() ||
            email == null || email.trim().isEmpty() ||
            subject == null || subject.trim().isEmpty() ||
            message == null || message.trim().isEmpty()) {

            response.getWriter().println("All fields are required.");
            return;
        }

        Contact contact = new Contact(name, email, subject, message);

        ContactDAO dao = new ContactDAO();
        boolean result = dao.saveContact(contact);

        if (result) {
            response.getWriter().println("Message Sent Successfully!");
        } else {
            response.getWriter().println("Failed to send message.");
        }
    }
}