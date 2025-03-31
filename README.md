
📌 Order Management System (SQL & Database Design)  
This project is a relational database system designed for an order management system. It includes an Entity-Relationship Diagram (ERD), normalized 3NF database schema, and sample SQL scripts. The goal is to provide an optimized structure for managing orders, customers, and inventory efficiently.

📌 Key Features
✅ Optimized database design (3NF) – No redundant data, efficient queries.
✅ Structured ERD – Clearly defines relationships between entities.
✅ Ready-to-use SQL scripts – Easy setup and testing.

📂 Project Structure
📁 order-management-system/
├── ERD.png – Entity-Relationship Diagram
├── database_schema.sql – SQL script to create tables
├── insert_sample_data.sql – SQL script with sample data
└── README.md – Project documentation

🛠 Technologies Used  
- Database: MySQL  
- Normalization: 3NF  
- Entity-Relationship Diagram (ERD)  
- SQL Queries: Table creation, insertion, and retrieval

📊 Database Schema
Main Entities & Relationships
✔ Customers – Stores customer details
✔ Orders – Stores order details with timestamps
✔ Products – Stores product information
✔ Order_Items – Tracks products in each order

📌 ERD Preview:

🚀 How to Use This Database
1️⃣ Setup MySQL & Import Database
1. Open MySQL Workbench or any MySQL client.
2. Run database_schema.sql to create tables.
3. Run insert_sample_data.sql to insert sample data.
2️⃣ Sample Query - Get All Orders with Customer Names

SELECT Orders.order_id, Customers.customer_name, Orders.order_date
FROM Orders
JOIN Customers ON Orders.customer_id = Customers.customer_id;

📌 Author & Contact
📌 GitHub: whynhii3003
📧 Email: your.email@example.com
