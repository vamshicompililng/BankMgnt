 Bank Management System (Java + MySQL)

A desktop-based Bank Management System developed using Java Swing for GUI and MySQL for backend database operations. This project simulates real-world banking operations with a secure and role-based workflow.

## Features

# Customer
- New User Signup (with 3-page form)
- Deposit / Withdrawal
- Balance Inquiry
- Mini Statement (Download & Email)
- PIN Change
- Fast Cash option

# Employee
- Secure Login (Card Number + PIN)
- Customer Signup Approval/Reject Dashboard
- View Customer Requests
- Perform Personal Transactions


# Technologies Used
- Java (Swing for GUI)
- JDBC for Database Connectivity
- MySQL for backend
- JavaMail (for email notifications)

---

# Project Modules
- `Login.java` – Customer/Employee login handler
- `Signup1/2/3.java` – New user registration (3 steps)
- `Transactions.java` – Banking operations menu
- `EmployeeLogin.java` – Secure employee login screen
- `EmployeeApprovalDashboard.java` – Approval UI for pending customers
- `WaitingForApproval.java` – Screen that waits for employee action

---

# Validations
- PAN and Aadhar verified during signup
- Employee must approve new users before login
- PIN authentication for secure transactions

---

# How to Run
1. Clone the repo and open in NetBeans/IntelliJ
2. Import the database SQL file to MySQL
3. Update database credentials in the DB connection class
4. Build & run the project
