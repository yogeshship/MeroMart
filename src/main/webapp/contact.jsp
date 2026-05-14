<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Contact Messages - Mero Mart</title>

    <!-- Link external CSS file -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<!-- Main dashboard layout -->
<div class="dashboard-layout">

    <!-- Sidebar navigation -->
    <aside class="sidebar">
        <div class="logo">Mero Mart</div>

        <p class="sidebar-title">ADMIN PANEL</p>

        <nav>
            <a href="#">⌂ Dashboard</a>
            <a href="#">▣ Manage Products</a>
            <a href="#">＋ Add Product</a>
            <a href="#">♙ Manage Users</a>
            <a href="#">☰ Categories</a>
            <a href="#">▤ Orders</a>

            <!-- Active page -->
            <a href="contact.jsp" class="active">💬 Messages</a>
            <a href="about.jsp">ⓘ About</a>
        </nav>

        <div class="sidebar-bottom">
            <a href="#">⚙ Settings</a>
            <a href="#">↪ Log Out</a>
        </div>
    </aside>

    <!-- Main content -->
    <main class="main-content">

        <!-- Page heading -->
        <p class="section-label">CUSTOMER SUPPORT</p>
        <h1>Contact Messages</h1>

        <p class="subtitle">
            Help customers with product enquiries, delivery questions, and support messages.
        </p>

        <div class="content-grid">

            <!-- Contact form card -->
            <section class="form-card">
                <h2>Send us a message</h2>
                <p>Fill in the form below to contact the Mero Mart support team.</p>

                <!-- Show error message if form submission fails -->
                <% if (request.getAttribute("errorMessage") != null) { %>
                    <div class="error-message">
                        <%= request.getAttribute("errorMessage") %>
                    </div>
                <% } %>

                <!-- Contact form submits data to ContactServlet -->
                <form action="contact" method="post">

                    <label>Full Name *</label>
                    <input type="text" name="name" placeholder="Enter full name" required>

                    <label>Email *</label>
                    <input type="email" name="email" placeholder="Enter email address" required>

                    <label>Subject *</label>
                    <input type="text" name="subject" placeholder="Enter message subject" required>

                    <label>Message *</label>
                    <textarea name="message" placeholder="Enter your message..." required></textarea>

                    <div class="button-row">
                        <button type="submit">Send Message</button>

                        <!-- Show success message after successful database insertion -->
                        <% if (request.getAttribute("successMessage") != null) { %>
                            <span class="inline-success">
                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                    <path d="M20 6L9 17l-5-5"></path>
                                </svg>
                                <%= request.getAttribute("successMessage") %>
                            </span>
                        <% } %>
                    </div>
                </form>
            </section>

            <!-- Right side information cards -->
            <aside class="right-panel">

                <!-- Contact information card -->
                <div class="small-card">
                    <h2>Contact Information</h2>

                    <div class="contact-info-item">
                        <span class="contact-icon">
                            <!-- Location icon -->
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                <path d="M12 21s7-5.3 7-12a7 7 0 1 0-14 0c0 6.7 7 12 7 12z"></path>
                                <circle cx="12" cy="9" r="2.5"></circle>
                            </svg>
                        </span>
                        <p><strong>Location</strong><br>Kathmandu, Nepal</p>
                    </div>

                    <div class="contact-info-item">
                        <span class="contact-icon">
                            <!-- Email icon -->
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                <rect x="3" y="5" width="18" height="14" rx="2"></rect>
                                <path d="M3 7l9 6 9-6"></path>
                            </svg>
                        </span>
                        <p><strong>Email</strong><br>support@meromart.com</p>
                    </div>

                    <div class="contact-info-item">
                        <span class="contact-icon">
                            <!-- Phone icon -->
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                <path d="M22 16.9v3a2 2 0 0 1-2.2 2 19.8 19.8 0 0 1-8.6-3.1 19.5 19.5 0 0 1-6-6A19.8 19.8 0 0 1 2.1 4.2 2 2 0 0 1 4.1 2h3a2 2 0 0 1 2 1.7c.1.9.3 1.8.6 2.6a2 2 0 0 1-.4 2.1L8 9.7a16 16 0 0 0 6.3 6.3l1.3-1.3a2 2 0 0 1 2.1-.4c.8.3 1.7.5 2.6.6A2 2 0 0 1 22 16.9z"></path>
                            </svg>
                        </span>
                        <p><strong>Phone</strong><br>+977 9800000000</p>
                    </div>
                </div>

                <!-- Support notice card -->
                <div class="small-card">
                    <h2>Support Notice</h2>

                    <p>
                        Customer messages are stored securely in the contact_messages table
                        for future review and response.
                    </p>

                    <span class="badge badge-with-icon">
                        <!-- Database icon -->
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                            <ellipse cx="12" cy="5" rx="7" ry="3"></ellipse>
                            <path d="M5 5v6c0 1.7 3.1 3 7 3s7-1.3 7-3V5"></path>
                            <path d="M5 11v6c0 1.7 3.1 3 7 3s7-1.3 7-3v-6"></path>
                        </svg>
                        Stored in Database
                    </span>
                </div>

            </aside>

        </div>

        <!-- Support category section -->
        <section class="support-card">
            <h2>Support Categories</h2>

            <div class="support-items">

                <div class="support-box">
                    <!-- Cart icon -->
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                        <circle cx="9" cy="21" r="1"></circle>
                        <circle cx="20" cy="21" r="1"></circle>
                        <path d="M1 1h4l2.6 13.2a2 2 0 0 0 2 1.6h8.8a2 2 0 0 0 2-1.6L23 6H6"></path>
                    </svg>
                    Order Help
                </div>

                <div class="support-box">
                    <!-- Product box icon -->
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                        <path d="M21 16V8a2 2 0 0 0-1-1.7l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.7l7 4a2 2 0 0 0 2 0l7-4a2 2 0 0 0 1-1.7z"></path>
                        <path d="M3.3 7L12 12l8.7-5"></path>
                        <path d="M12 22V12"></path>
                    </svg>
                    Product Enquiry
                </div>

                <div class="support-box">
                    <!-- Delivery truck icon -->
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                        <path d="M10 17h4V5H2v12h3"></path>
                        <path d="M14 17h1"></path>
                        <path d="M15 17h4"></path>
                        <path d="M14 9h4l4 4v4h-3"></path>
                        <circle cx="7" cy="17" r="2"></circle>
                        <circle cx="17" cy="17" r="2"></circle>
                    </svg>
                    Delivery Support
                </div>

            </div>
        </section>

    </main>

</div>

</body>
</html>