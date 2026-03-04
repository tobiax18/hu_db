
# Hu 3 – Gestión de Contenido y Usuarios en MongoDB  
Sistema: StreamHub  
Base de datos: streamhub_db  

---

## 📌 Descripción General

Este proyecto implementa un modelo NoSQL en MongoDB para una plataforma de streaming ficticia llamada **StreamHub**.

El sistema permite:

- Gestionar usuarios
- Administrar contenido audiovisual (películas y series)
- Registrar valoraciones
- Realizar consultas avanzadas
- Aplicar índices para optimización
- Ejecutar agregaciones para generar métricas

Se aplican conceptos fundamentales de MongoDB como:

- CRUD completo
- Operadores de consulta
- Índices
- Pipelines de agregación

---

# 🧠 1. Modelado NoSQL

A diferencia de bases de datos relacionales, MongoDB trabaja con documentos JSON flexibles.

Se definieron las siguientes colecciones:

## 📂 Colección: usuarios

Representa a las personas registradas en la plataforma.

Campos principales:

- nombre
- email
- edad
- pais
- fechaRegistro
- historialVisualizacion (array)
- activo (boolean)

Justificación:
Permite almacenar datos dinámicos y listas de visualización sin necesidad de tablas intermedias.

---

## 📂 Colección: contenidos

Representa películas y series disponibles en la plataforma.

Campos:

- titulo
- tipo (pelicula / serie)
- genero (array)
- duracionMinutos
- anio
- director
- calificacionPromedio
- disponible

Justificación:
Se utiliza un arreglo en "genero" para permitir múltiples categorías sin tablas relacionales.

---

## 📂 Colección: valoraciones

Representa reseñas y puntuaciones realizadas por usuarios.

Campos:

- usuarioId
- contenidoId
- puntuacion
- comentario
- fecha

Justificación:
Se mantiene separada para permitir múltiples valoraciones por usuario y facilitar agregaciones.

---

# 📥 2. Inserción de datos

Se utilizaron:

- insertOne()
- insertMany()

Se incluyeron:

- Películas y series
- Usuarios de diferentes países
- Diferentes duraciones
- Valoraciones con comentarios

Esto permite realizar consultas y agregaciones variadas.

---

# 🔎 3. Consultas con operadores

Se aplicaron los siguientes operadores:

| Operador | Uso |
|----------|------|
| $gt | Mayor que |
| $lt | Menor que |
| $eq | Igual |
| $in | Coincidencia en arreglo |
| $and | Condiciones múltiples |
| $or | Alternativas |
| $regex | Búsqueda por texto |

Ejemplos implementados:

- Películas con duración > 120 minutos
- Usuarios mayores de 30
- Contenido que contiene cierta palabra en el título
- Filtros combinados por tipo y año

---

# ✏ 4. Actualizaciones y Eliminaciones

Se implementó:

- updateOne()
- updateMany()
- deleteOne()

Casos aplicados:

- Actualizar calificación promedio
- Desactivar usuarios por país
- Eliminar un usuario específico

---

# 🚀 5. Índices para optimización

Se crearon índices en:

- titulo
- genero

Comandos utilizados:

- createIndex()
- getIndexes()

Justificación:

Estos campos son consultados frecuentemente en búsquedas y filtros, por lo que indexarlos mejora significativamente el rendimiento en grandes volúmenes de datos.

---

# 📊 6. Agregaciones (Pipelines)

Se implementaron 2 pipelines obligatorios utilizando:

- $match
- $group
- $sort
- $project
- $unwind

## 🔹 Agregación 1

Promedio de calificación por tipo de contenido.

Permite analizar qué tipo (película o serie) tiene mejor valoración.

---

## 🔹 Agregación 2

Cantidad de contenidos por género.

Se utiliza $unwind para descomponer el arreglo de géneros y luego agrupar.

Permite obtener métricas de popularidad por categoría.

---

# 🛠 Herramientas utilizadas

- MongoDB Community Edition
- MongoDB Compass
- Mongosh (consola integrada)
- Editor de texto (VS Code)

---

# ▶ Cómo ejecutar el proyecto (Paso a paso)

## Paso 1 – Instalar MongoDB

Si no está instalado:

Descargar desde:
https://www.mongodb.com/try/download/community

Instalar con configuración por defecto.

---

## Paso 2 – Abrir MongoDB Compass

1. Ejecutar MongoDB Compass.
2. Conectarse al servidor local:
   mongodb://localhost:27017

---

## Paso 3 – Crear base de datos

1. Clic en "Create Database"
2. Nombre:  
   streamhub_db
3. Crear colección inicial (por ejemplo: usuarios)

---

## Paso 4 – Ejecutar el script

1. Ir a la pestaña "MONGOSH".
2. Abrir el archivo:

   streamhub_script.js

3. Copiar TODO el contenido.
4. Pegar en la consola.
5. Presionar Enter.

---

## Reflexión Técnica

MongoDB permitió modelar datos semiestructurados con flexibilidad, evitando la necesidad de normalización estricta como en bases de datos relacionales. El uso de arreglos y documentos anidados facilitó el modelado del dominio StreamHub.