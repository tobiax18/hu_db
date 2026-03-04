# Proyecto Académico – Bases de Datos SQL y NoSQL

Autor: Tobías Ath  
Curso: Bases de Datos  
Tecnologías: PostgreSQL | MongoDB | SQL | NoSQL  

---

## 📌 Descripción General

Este repositorio reúne el desarrollo progresivo de tres trabajos académicos enfocados en el diseño, implementación y análisis de bases de datos utilizando tanto modelos relacionales (SQL) como no relacionales (NoSQL).

El proyecto permitió aplicar conceptos fundamentales como:

- Modelado de datos
- Diseño conceptual y lógico
- Integridad y restricciones
- Consultas avanzadas
- Transacciones
- Índices y optimización
- Agregaciones y métricas en entornos NoSQL

Se trabajó con PostgreSQL para el enfoque relacional y MongoDB para el enfoque documental.

---

# 🧱 Trabajo 1 – Diseño Conceptual y Modelado de Base de Datos

En el primer trabajo se desarrolló el diseño conceptual y lógico de una base de datos relacional.

## ✔ Actividades realizadas

- Análisis del dominio del problema
- Identificación de entidades y atributos
- Definición de relaciones
- Construcción del DER (Diagrama Entidad-Relación)
- Transformación a modelo relacional
- Normalización hasta Tercera Forma Normal (3FN)

## 🎯 Objetivo alcanzado

Comprender el proceso completo de diseño de una base de datos desde el análisis conceptual hasta su representación lógica, asegurando consistencia y eliminación de redundancias.

---

# 🗄 Trabajo 2 – Sistema Académico (PostgreSQL)

Se diseñó e implementó una base de datos relacional llamada:

gestion_academica_universidad

## ✔ Características implementadas

- Creación de tablas con PRIMARY KEY y FOREIGN KEY
- Restricciones NOT NULL, UNIQUE y CHECK
- Inserción de datos de prueba
- Consultas con JOIN, GROUP BY y HAVING
- Creación de vistas
- Manejo de transacciones (BEGIN, ROLLBACK, COMMIT)
- Control de acceso con roles (GRANT y REVOKE)

## 🎯 Objetivo alcanzado

Aplicar correctamente:

- DDL
- DML
- DQL
- DCL
- TCL

En un entorno realista de gestión académica.

---

# 🎬 Trabajo 3 – StreamHub (MongoDB)

Se diseñó e implementó un modelo NoSQL para una plataforma de streaming llamada:

streamhub_db

## ✔ Características implementadas

- Modelado documental (usuarios, contenidos, valoraciones)
- CRUD completo (insert, find, update, delete)
- Uso de operadores:
  - $gt, $lt, $eq
  - $in
  - $and, $or
  - $regex
- Creación y verificación de índices
- Pipelines de agregación con:
  - $group
  - $sort
  - $project
  - $unwind

## 📊 Métricas generadas

- Promedio de calificación por tipo de contenido
- Cantidad de contenidos por género

## 🎯 Objetivo alcanzado

Aplicar conceptos de bases de datos NoSQL y análisis de datos semiestructurados mediante agregaciones.

---

# 🛠 Tecnologías Utilizadas

- PostgreSQL
- pgAdmin
- MongoDB Community Edition
- MongoDB Compass
- Mongosh
- Visual Studio Code
- Git y GitHub

---

# 📂 Estructura del Repositorio

/trabajo-1-modelado
/trabajo-2-sistema-academico-sql
/trabajo-3-mongodb-streamhub
README.md


Cada carpeta contiene:

- Archivos correspondientes a cada trabajo
- Scripts o documentación asociada
- README específico cuando aplica

---

# 🎓 Competencias Desarrolladas

- Diseño conceptual y lógico de bases de datos
- Normalización hasta 3FN
- Implementación relacional con integridad referencial
- Uso avanzado de SQL
- Modelado documental en MongoDB
- Creación de índices y optimización
- Análisis de datos con agregaciones
- Documentación técnica profesional

---

# 🚀 Conclusión

Este repositorio evidencia la evolución desde el diseño conceptual de una base de datos hasta su implementación en entornos relacionales y no relacionales.

Demuestra comprensión integral de:

✔ Modelado estructurado y semiestructurado  
✔ Integridad de datos  
✔ Optimización de consultas  
✔ Análisis mediante agregaciones  
✔ Buenas prácticas de documentación  

Proyecto académico desarrollado con fines educativos.