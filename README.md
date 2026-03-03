# Trabajo 2 – Sistema Académico en SQL  
Base de Datos: gestion_academica_universidad

## 📌 Objetivo

Diseñar e implementar una base de datos académica que gestione estudiantes, docentes, cursos e inscripciones, aplicando SQL (DDL, DML, DQL, DCL y TCL) y consultas de análisis para administrar información académica y evaluar el rendimiento estudiantil.

---

## 🗄 Estructura de la Base de Datos

Se creó la base de datos:

gestion_academica_universidad

Tablas implementadas:

- estudiantes
- docentes
- cursos
- inscripciones

Cada tabla incluye:

- ✔ Claves primarias (PRIMARY KEY)
- ✔ Claves foráneas (FOREIGN KEY)
- ✔ Restricciones NOT NULL
- ✔ Restricciones UNIQUE
- ✔ Restricciones CHECK
- ✔ Reglas ON DELETE (SET NULL y CASCADE)

---

## 📥 Inserción de Datos

Se insertaron:

- 5 estudiantes
- 3 docentes
- 4 cursos
- 8 inscripciones

Los datos permiten realizar consultas de análisis y validación de relaciones.

---

## 🔎 Consultas Implementadas

Se realizaron consultas utilizando:

- JOIN
- GROUP BY
- HAVING
- AVG
- COUNT
- ROUND
- Subconsultas (IN / EXISTS)
- ALTER TABLE
- Vista académica

Se creó la vista:

vista_historial_academico

La cual muestra:

- Nombre del estudiante
- Curso
- Docente
- Semestre
- Calificación final

---

## 🔐 Control de Acceso

Se creó el rol:

revisor_academico

Se aplicaron:

- GRANT SELECT sobre la vista
- REVOKE de permisos de modificación en inscripciones

---

## 🔄 Transacciones

Se probaron transacciones utilizando:

- BEGIN
- SAVEPOINT
- ROLLBACK
- COMMIT

Se verificó que los cambios puedan revertirse correctamente antes de confirmar.

---

## 🧪 Pruebas Realizadas

Se validó que:

- ✔ Las tablas fueron creadas correctamente.
- ✔ Las relaciones entre tablas funcionan.
- ✔ Las restricciones (CHECK, UNIQUE, FK) se aplican.
- ✔ Las consultas devuelven resultados correctos.
- ✔ La vista muestra la información esperada.
- ✔ Las transacciones permiten revertir cambios.
- ✔ Las reglas ON DELETE funcionan según lo definido.

Todas las pruebas fueron ejecutadas en PostgreSQL utilizando pgAdmin.

---

## 📂 Archivo Principal

El script completo se encuentra en:

script_completo.sql

Este archivo contiene:

- Creación de tablas
- Inserción de datos
- Consultas
- Vista
- Permisos
- Transacciones

---

# ▶ Cómo ejecutar el proyecto

Este script fue probado en **PostgreSQL** utilizando **pgAdmin**.

### Paso 1 – Abrir pgAdmin
1. Abrir pgAdmin.
2. Conectarse al servidor PostgreSQL.

### Paso 2 – Crear la base de datos
1. Clic derecho en *Databases*.
2. Seleccionar *Create → Database*.
3. Nombre:  
   gestion_academica_universidad
4. Guardar.

### Paso 3 – Abrir el Query Tool
1. Seleccionar la base creada.
2. Hacer clic en *Query Tool*.

### Paso 4 – Ejecutar el script
1. Abrir el archivo:

   script_completo.sql

2. Copiar todo su contenido.
3. Pegar en el Query Tool.
4. Ejecutar (botón ▶).

⚠ Importante:  
Si el archivo contiene `CREATE DATABASE`, eliminar esa línea antes de ejecutar.

## ✅ Resultado

Se implementó un sistema académico funcional, consistente y con control de integridad, cumpliendo con los criterios establecidos en la actividad.
