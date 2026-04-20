# MeroMart Project

## Setup Instructions

1. Clone the repository:
   git clone https://github.com/yogeshship/MeroMart.git

2. Start XAMPP:
   - Start Apache
   - Start MySQL

3. Setup Database:
   - Open phpMyAdmin
   - Create database: mero_mart_db
   - Click Import
   - Select file: database/mero_mart_db.sql

4. Configure Database Connection:
   Open DBConnection.java and update:
   - MySQL port (3306 or 3307)
   - Username (usually root)
   - Password (if set)

5. Run Project:
   - Import into Eclipse
   - Run on Tomcat

6. Open in browser:
   http://localhost:8080/MeroMart/contact.jsp

7. Test:
   - Submit contact form
   - Check data in contact_messages table