# HU 3 – Content and User Management in MongoDB
**System:** StreamHub  
**Database:** `streamhub_db`

---

# 📌 Overview

This project implements a **NoSQL data model using MongoDB** for a fictional streaming platform called **StreamHub**.

The system allows:

- Managing users
- Managing audiovisual content (movies and series)
- Recording user ratings
- Performing advanced queries
- Applying indexes for optimization
- Executing aggregations to generate metrics

The project applies core MongoDB concepts such as:

- Full CRUD operations
- Query operators
- Indexes
- Aggregation pipelines

---

# 🧠 1. NoSQL Data Modeling

Unlike relational databases, **MongoDB works with flexible JSON-like documents**.

The following collections were defined:

---

## 📂 Collection: `usuarios`

Represents the users registered on the platform.

### Main fields

- `nombre`
- `email`
- `edad`
- `pais`
- `fechaRegistro`
- `historialVisualizacion` (array)
- `activo` (boolean)

### Justification

This structure allows storing **dynamic data and viewing history lists** without requiring intermediate relational tables.

---

## 📂 Collection: `contenidos`

Represents the **movies and series available on the platform**.

### Fields

- `titulo`
- `tipo` (movie / series)
- `genero` (array)
- `duracionMinutos`
- `anio`
- `director`
- `calificacionPromedio`
- `disponible`

### Justification

The `genero` field uses an **array structure** to allow multiple categories without the need for relational join tables.

---

## 📂 Collection: `valoraciones`

Represents **reviews and ratings made by users**.

### Fields

- `usuarioId`
- `contenidoId`
- `puntuacion`
- `comentario`
- `fecha`

### Justification

This collection is kept separate to:

- Allow **multiple ratings per user**
- Facilitate **aggregations and analytical queries**

---

# 📥 2. Data Insertion

The following MongoDB commands were used:

- `insertOne()`
- `insertMany()`

The inserted dataset includes:

- Movies and series
- Users from different countries
- Content with different durations
- Ratings with comments

This allows performing **diverse queries and aggregation operations**.

---

# 🔎 3. Queries Using Operators

The following MongoDB operators were applied:

| Operator | Purpose |
|--------|--------|
| `$gt` | Greater than |
| `$lt` | Less than |
| `$eq` | Equal |
| `$in` | Match within an array |
| `$and` | Multiple conditions |
| `$or` | Alternative conditions |
| `$regex` | Text search |

### Example queries implemented

- Movies with **duration greater than 120 minutes**
- Users **older than 30**
- Content containing **specific keywords in the title**
- Combined filters based on **type and year**

---

# ✏ 4. Updates and Deletions

The following operations were implemented:

- `updateOne()`
- `updateMany()`
- `deleteOne()`

### Use cases

- Updating the **average rating of content**
- Deactivating users by **country**
- Deleting a **specific user**

---

# 🚀 5. Indexes for Optimization

Indexes were created on the following fields:

- `titulo`
- `genero`

### Commands used

- `createIndex()`
- `getIndexes()`

### Justification

These fields are **frequently used in search queries and filters**, so indexing them significantly improves **performance when working with large datasets**.

---

# 📊 6. Aggregations (Pipelines)

Two required **aggregation pipelines** were implemented using the following stages:

- `$match`
- `$group`
- `$sort`
- `$project`
- `$unwind`

---

## 🔹 Aggregation 1

**Average rating by content type**

This aggregation calculates the **average rating grouped by content type (movie or series)**.

Purpose:

Analyze **which type of content receives better ratings from users**.

---

## 🔹 Aggregation 2

**Number of contents per genre**

This aggregation uses `$unwind` to **decompose the genre array** and then groups the results.

Purpose:

Generate **popularity metrics by genre or category**.

---

# 🛠 Tools Used

- MongoDB Community Edition
- MongoDB Compass
- Mongosh (integrated shell)
- Text Editor (VS Code)

---

# ▶ How to Run the Project (Step by Step)

## Step 1 – Install MongoDB

If MongoDB is not installed:

Download it from:

https://www.mongodb.com/try/download/community

Install using the **default configuration**.

---

## Step 2 – Open MongoDB Compass

1. Launch **MongoDB Compass**.
2. Connect to the local server:
   mongodb://localhost:27017

---

## Step 3 – Create the Database

1. Click **"Create Database"**
2. Database name:
   streamhub_db
3. Create an initial collection (for example: `usuarios`).

---

## Step 4 – Run the Script

1. Go to the **MONGOSH** tab.
2. Open the file:
   streamhub_script.js
3. Copy **all the content**.
4. Paste it into the console.
5. Press **Enter** to execute the script.

---

# 🧾 Technical Reflection

MongoDB allowed modeling **semi-structured data with great flexibility**, avoiding the strict normalization required in relational databases.

The use of **arrays and nested documents** simplified the representation of the **StreamHub domain**, making it easier to manage elements such as viewing history, content categories, and user ratings.
