# Assignment 1 – Conceptual Design and Relational Model  
**Hospital "Vida Sana"**

---

# 📌 Objective

Design a **relational database** for managing **patients, doctors, appointments, and diagnoses** for the *Hospital "Vida Sana"*.

The design applies principles of **conceptual modeling (Entity-Relationship Diagram – ERD)** and **logical modeling (Relational Model)**, ensuring normalization up to **Third Normal Form (3NF)**.

---

# 🧩 Conceptual Model (ERD)

The **Entity–Relationship Diagram (ERD)** defines the following main entities:

- **Patient**
- **Doctor**
- **Appointment**
- **Diagnosis**

## Relationships

- A **Patient** can have multiple **Appointments** *(1:N)*
- A **Doctor** can attend multiple **Appointments** *(1:N)*
- An **Appointment** can generate multiple **Diagnoses** *(1:N)*

📎 See files:

```
DER.png
DER.pdf
```

These files contain the graphical representation of the conceptual database design.

---

# 🗄 Relational Model

The **relational model** was derived directly from the ERD, maintaining a **1:1 correspondence between entities and tables**.

The design includes:

- **Primary Keys (PK)**
- **Foreign Keys (FK)**
- Appropriate **data types**
- **Uniqueness constraints** where required

This ensures that the relational schema correctly represents the conceptual design.

---

# 🔎 Normalization

The database design complies with the following normalization levels:

✔ **First Normal Form (1NF)**  
No multivalued attributes. All fields contain atomic values.

✔ **Second Normal Form (2NF)**  
No partial dependencies on composite keys.

✔ **Third Normal Form (3NF)**  
No transitive dependencies between attributes.

The model eliminates redundancy and guarantees **referential integrity**.

---

# 📂 Project Structure

```
hu_1-DER-modelo-relacional
│
├── DER.png
├── DER.zip
└── README.md
```

- **DER.png** → Visual representation of the ERD  
- **DER.zip** → Compressed version of the diagram files  
- **README.md** → Documentation of the assignment

---

# ✅ Result

A **consistent relational database design** was obtained, normalized up to **Third Normal Form (3NF)** and maintaining coherence between the **conceptual model (ERD)** and the **relational schema**.

The design is ready for future implementation in a **Database Management System (DBMS)**.
