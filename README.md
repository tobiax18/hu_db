# Academic Project – SQL and NoSQL Databases

**Author:** Tobías Ath  
**Course:** Databases  
**Technologies:** PostgreSQL | MongoDB | SQL | NoSQL

---

# 📌 General Description

This repository contains the progressive development of three academic assignments focused on the **design, implementation, and analysis of databases** using both **relational (SQL)** and **non-relational (NoSQL)** models.

The project allowed the application of key database concepts such as:

- Data modeling
- Conceptual and logical database design
- Data integrity and constraints
- Advanced queries
- Transactions
- Indexing and optimization
- Aggregations and metrics in NoSQL environments

The relational approach was implemented using **PostgreSQL**, while the document-oriented approach was implemented using **MongoDB**.

---

# 🧱 Assignment 1 – Conceptual Design and Database Modeling

In the first assignment, the **conceptual and logical design of a relational database** was developed.

## ✔ Activities Performed

- Domain analysis of the problem
- Identification of entities and attributes
- Definition of relationships
- Construction of the ERD (Entity-Relationship Diagram)
- Transformation to relational model
- Normalization up to **Third Normal Form (3NF)**

## 🎯 Objective Achieved

To understand the complete process of database design, from conceptual analysis to logical representation, ensuring **data consistency and elimination of redundancy**.

---

# 🗄 Assignment 2 – Academic System (PostgreSQL)

A relational database called:

```
gestion_academica_universidad
```

was designed and implemented using **PostgreSQL**.

## ✔ Implemented Features

- Creation of tables using **PRIMARY KEY** and **FOREIGN KEY**
- Constraints such as **NOT NULL, UNIQUE, and CHECK**
- Insertion of sample data
- Queries using **JOIN, GROUP BY, and HAVING**
- Creation of **views**
- Transaction management using **BEGIN, ROLLBACK, and COMMIT**
- Access control using **roles (GRANT and REVOKE)**

## 🎯 Objective Achieved

Correct application of SQL components in a realistic academic management environment:

- **DDL (Data Definition Language)**
- **DML (Data Manipulation Language)**
- **DQL (Data Query Language)**
- **DCL (Data Control Language)**
- **TCL (Transaction Control Language)**

---

# 🎬 Assignment 3 – StreamHub (MongoDB)

A **NoSQL database model** was designed and implemented for a streaming platform called:

```
streamhub_db
```

using **MongoDB**.

## ✔ Implemented Features

- Document-based data modeling (users, content, ratings)
- Complete **CRUD operations**:
  - insert
  - find
  - update
  - delete

- Use of query operators:

```
$gt, $lt, $eq
$in
$and, $or
$regex
```

- Index creation and verification
- Aggregation pipelines using:

```
$group
$sort
$project
$unwind
```

## 📊 Generated Metrics

- Average rating by content type
- Number of contents by genre

## 🎯 Objective Achieved

To apply **NoSQL database concepts** and perform analysis of **semi-structured data** using aggregation pipelines.

---

# 🛠 Technologies Used

- PostgreSQL
- pgAdmin
- MongoDB Community Edition
- MongoDB Compass
- Mongosh
- Visual Studio Code
- Git
- GitHub

---

# 📂 Repository Structure

```
/trabajo-1-modelado
/trabajo-2-sistema-academico-sql
/trabajo-3-mongodb-streamhub
README.md
```

Each folder contains:

- Files related to each assignment
- Associated scripts or documentation
- A specific README when applicable

---

# 🎓 Skills Developed

- Conceptual and logical database design
- Database normalization up to **3NF**
- Relational implementation with **referential integrity**
- Advanced SQL querying
- Document modeling in MongoDB
- Index creation and query optimization
- Data analysis using aggregation pipelines
- Professional technical documentation

---

# 🚀 Conclusion

This repository demonstrates the evolution from **conceptual database design** to its implementation in both **relational and non-relational environments**.

It shows a comprehensive understanding of:

✔ Structured and semi-structured data modeling  
✔ Data integrity  
✔ Query optimization  
✔ Data analysis using aggregations  
✔ Professional documentation practices  

---

**Academic project developed for educational purposes.**
