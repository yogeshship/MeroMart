<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>About Mero Mart</title>

    <!-- Link to external CSS file -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<!-- Main dashboard layout wrapper -->
<div class="dashboard-layout">

    <!-- Left sidebar navigation -->
    <aside class="sidebar">

        <!-- System logo / brand name -->
        <div class="logo">Mero Mart</div>

        <!-- Sidebar section title -->
        <p class="sidebar-title">ADMIN PANEL</p>

        <!-- Navigation menu -->
        <nav>
            <a href="#">⌂ Dashboard</a>
            <a href="#">▣ Manage Products</a>
            <a href="#">＋ Add Product</a>
            <a href="#">♙ Manage Users</a>
            <a href="#">☰ Categories</a>
            <a href="#">▤ Orders</a>
            <a href="contact.jsp">💬 Messages</a>

            <!-- Active page link -->
            <a href="about.jsp" class="active">ⓘ About</a>
        </nav>

        <!-- Bottom sidebar links -->
        <div class="sidebar-bottom">
            <a href="#">⚙ Settings</a>
            <a href="#">↪ Log Out</a>
        </div>
    </aside>

    <!-- Main content area -->
    <main class="main-content">

        <!-- Page heading section -->
        <p class="section-label">SYSTEM OVERVIEW</p>
        <h1>About Mero Mart</h1>

        <p class="subtitle">
            Mero Mart is a grocery management system designed to support product browsing,
            cart handling, order processing, and customer communication.
        </p>

        <!-- Overview card -->
        <section class="overview-card">
            <p class="section-label">MERO MART GROCERY SYSTEM</p>

            <h2>Fresh groceries, simple shopping.</h2>

            <p>
                Mero Mart provides a simple digital platform where users can browse grocery products,
                manage cart items, place orders, and contact the store for support. The system is
                designed to make grocery shopping more organised, accessible, and user-friendly.
            </p>
        </section>

        <!-- Mission, Vision and Goal section -->
        <section class="three-card-row">

            <!-- Mission card -->
            <div class="info-card">
                <div class="card-heading-row">

                    <!-- Target icon -->
                    <span class="icon-circle">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                            <circle cx="12" cy="12" r="9"></circle>
                            <circle cx="12" cy="12" r="5"></circle>
                            <circle cx="12" cy="12" r="1.5"></circle>
                        </svg>
                    </span>

                    <h2>Our Mission</h2>
                </div>

                <p>
                    To provide a clean and reliable grocery platform that helps customers shop easily
                    and allows the store to manage products efficiently.
                </p>
            </div>

            <!-- Vision card -->
            <div class="info-card">
                <div class="card-heading-row">

                    <!-- Eye icon -->
                    <span class="icon-circle">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                            <path d="M2 12s4-7 10-7 10 7 10 7-4 7-10 7S2 12 2 12z"></path>
                            <circle cx="12" cy="12" r="3"></circle>
                        </svg>
                    </span>

                    <h2>Our Vision</h2>
                </div>

                <p>
                    To become a trusted online grocery system that connects customers with fresh
                    products and better shopping services.
                </p>
            </div>

            <!-- Goal card -->
            <div class="info-card">
                <div class="card-heading-row">

                    <!-- Flag icon -->
                    <span class="icon-circle">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                            <path d="M5 22V4"></path>
                            <path d="M5 4h12l-2 4 2 4H5"></path>
                        </svg>
                    </span>

                    <h2>Our Goal</h2>
                </div>

                <p>
                    To support product browsing, cart management, order handling, and customer
                    communication through one organised system.
                </p>
            </div>

        </section>

        <!-- Key system features section -->
        <section class="features-card">
            <h2>Key System Features</h2>

            <div class="features-row">

                <!-- Product browsing feature -->
                <div class="feature-item">
                    <span class="feature-icon">

                        <!-- Shopping cart icon -->
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                            <circle cx="9" cy="21" r="1"></circle>
                            <circle cx="20" cy="21" r="1"></circle>
                            <path d="M1 1h4l2.6 13.2a2 2 0 0 0 2 1.6h8.8a2 2 0 0 0 2-1.6L23 6H6"></path>
                        </svg>
                    </span>

                    <div>
                        <h3>Product Browsing</h3>
                        <p>Users can view grocery items and product details.</p>
                    </div>
                </div>

                <!-- Cart management feature -->
                <div class="feature-item">
                    <span class="feature-icon">

                        <!-- Basket icon -->
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                            <path d="M6 8h12l-1 12H7L6 8z"></path>
                            <path d="M9 8a3 3 0 0 1 6 0"></path>
                            <path d="M9 12v4"></path>
                            <path d="M15 12v4"></path>
                        </svg>
                    </span>

                    <div>
                        <h3>Cart Management</h3>
                        <p>Users can add products and manage quantities before placing an order.</p>
                    </div>
                </div>

                <!-- Order processing feature -->
                <div class="feature-item">
                    <span class="feature-icon">

                        <!-- Clipboard icon -->
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                            <rect x="5" y="4" width="14" height="18" rx="2"></rect>
                            <path d="M9 4h6"></path>
                            <path d="M9 12h6"></path>
                            <path d="M9 16h6"></path>
                        </svg>
                    </span>

                    <div>
                        <h3>Order Processing</h3>
                        <p>Users can proceed from cart to checkout and complete their order.</p>
                    </div>
                </div>

                <!-- Contact support feature -->
                <div class="feature-item">
                    <span class="feature-icon">

                        <!-- Message icon -->
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                            <path d="M21 15a4 4 0 0 1-4 4H8l-5 3V7a4 4 0 0 1 4-4h10a4 4 0 0 1 4 4z"></path>
                        </svg>
                    </span>

                    <div>
                        <h3>Contact Support</h3>
                        <p>Users can send enquiries through the contact form.</p>
                    </div>
                </div>

            </div>
        </section>

        <!-- Database foundation section -->
        <section class="database-card">
            <h2>Database Foundation</h2>

            <p>
                The system is supported by a relational database that stores users, products,
                categories, carts, orders, order items, and contact messages.
            </p>
        </section>

    </main>

</div>

</body>
</html>