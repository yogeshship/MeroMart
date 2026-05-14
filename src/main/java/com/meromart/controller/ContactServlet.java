package com.meromart.controller;

import com.meromart.dao.ContactDAO;
import com.meromart.model.Contact;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

// URL mapping for contact form submission
@WebServlet("/contact")
public class ContactServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private ContactDAO contactDAO;

    // Servlet initialization method
    @Override
    public void init() {
        contactDAO = new ContactDAO();
    }

    // Handles POST request from contact.jsp form
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Get form values from contact.jsp
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String subject = request.getParameter("subject");
        String message = request.getParameter("message");

        // Validate empty fields
        if (isEmpty(name) || isEmpty(email) || isEmpty(subject) || isEmpty(message)) {
            request.setAttribute("errorMessage", "All fields are required.");
            request.getRequestDispatcher("contact.jsp").forward(request, response);
            return;
        }

        // Basic email validation
        if (!email.contains("@") || !email.contains(".")) {
            request.setAttribute("errorMessage", "Please enter a valid email address.");
            request.getRequestDispatcher("contact.jsp").forward(request, response);
            return;
        }

        // Create Contact object using form data
        Contact contact = new Contact(
                name.trim(),
                email.trim(),
                subject.trim(),
                message.trim()
        );

        // Save contact message using DAO class
        boolean result = contactDAO.saveContact(contact);

        // Send success or error message back to contact.jsp
        if (result) {
            request.setAttribute("successMessage", "Message sent successfully.");
        } else {
            request.setAttribute("errorMessage", "Failed to send message. Please try again.");
        }

        // Forward user back to contact page
        request.getRequestDispatcher("contact.jsp").forward(request, response);
    }

    // Helper method to check empty input
    private boolean isEmpty(String value) {
        return value == null || value.trim().isEmpty();
    }
}