# Assignment 2 – Academic System in SQL  
**Database:** gestion_academica_universidad

---

# 📌 Objective

Design and implement an **academic database system** to manage **students, teachers, courses, and enrollments** using SQL.

The project applies different SQL components:

- **DDL (Data Definition Language)**
- **DML (Data Manipulation Language)**
- **DQL (Data Query Language)**
- **DCL (Data Control Language)**
- **TCL (Transaction Control Language)**

The database also includes analytical queries to manage academic information and evaluate student performance.

---

# 🗄 Database Structure

The database created is:

```
gestion_academica_universidad
```

## Implemented Tables

- **estudiantes** (students)
- **docentes** (teachers)
- **cursos** (courses)
- **inscripciones** (enrollments)

Each table includes:

✔ **Primary Keys (PRIMARY KEY)**  
✔ **Foreign Keys (FOREIGN KEY)**  
✔ **NOT NULL constraints**  
✔ **UNIQUE constraints**  
✔ **CHECK constraints**  
✔ **ON DELETE rules (SET NULL and CASCADE)**

These constraints ensure **data integrity and consistency across the database**.

---

# 📥 Data Insertion

The following sample data was inserted:

- **5 students**
- **3 teachers**
- **4 courses**
- **8 enrollments**

The data allows the execution of **analytical queries and validation of relational integrity**.

---

# 🔎 Implemented Queries

The project includes queries using:

- **JOIN**
- **GROUP BY**
- **HAVING**
- **AVG**
- **COUNT**
- **ROUND**
- **Subqueries (IN / EXISTS)**
- **ALTER TABLE**

These queries allow analysis of academic data such as student performance and course statistics.

---

# 📊 Academic View

A view was created to simplify the visualization of academic history:

```
vista_historial_academico
```

This view displays:

- Student name
- Course name
- Teacher
- Semester
- Final grade

The view allows easier access to academic records without directly querying multiple tables.

---

# 🔐 Access Control

A database role was created:

```
revisor_academico
```

The following permissions were applied:

- **GRANT SELECT** on the academic view
- **REVOKE modification permissions** on the enrollments table

This simulates a **read-only academic reviewer role**.

---

# 🔄 Transactions

Transaction management was tested using:

```
BEGIN
SAVEPOINT
ROLLBACK
COMMIT
```

These commands ensure that changes can be **reverted before being permanently saved**, maintaining database consistency.

---

# 🧪 Tests Performed

The following validations were successfully performed:

✔ Tables were created correctly  
✔ Relationships between tables work as expected  
✔ Constraints (**CHECK, UNIQUE, FK**) are enforced  
✔ Queries return correct results  
✔ The view displays the expected information  
✔ Transactions allow reverting changes  
✔ **ON DELETE rules** behave as defined  

All tests were executed using **PostgreSQL with pgAdmin**.

---

# 📂 Main Script

The complete SQL script is located in:

```
script_completo.sql
```

This file contains:

- Table creation
- Data insertion
- Queries
- View creation
- Permissions
- Transactions

---

# ▶ How to Run the Project

This script was tested using **PostgreSQL with pgAdmin**.

---

## Step 1 – Open pgAdmin

1. Open **pgAdmin**.
2. Connect to the PostgreSQL server.

---

## Step 2 – Create the Database

1. Right-click on **Databases**.
2. Select **Create → Database**.
3. Database name:

```
gestion_academica_universidad
```

4. Save the database.

---

## Step 3 – Open the Query Tool

1. Select the created database.
2. Click **Query Tool**.

---

## Step 4 – Execute the Script

1. Open the file:

```
script_completo.sql
```

2. Copy the entire content.
3. Paste it into the **Query Tool**.
4. Execute the script using the **Run (▶) button**.

---

⚠ **Important**

If the script contains:

```
CREATE DATABASE
```

remove that line before executing the script.

---

# ✅ Result

A **functional academic database system** was successfully implemented, ensuring:

- Data integrity
- Referential relationships
- Access control
- Transaction management
- Analytical queries

The project meets all the requirements established for the assignment.
