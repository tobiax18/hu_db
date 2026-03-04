// =====================================================
// 3 – STREAMHUB (MongoDB)
// Base de datos: streamhub_db
// =====================================================

// Crear base de datos

// Conectar a base de datos correctamente
db = db.getSiblingDB("streamhub_db");

// Inserción de datos
// ----- Insertar contenidos -----

db.contenidos.insertMany([
  {
    titulo: "El Código Oculto",
    tipo: "pelicula",
    genero: ["Acción", "Suspenso"],
    duracionMinutos: 135,
    anio: 2023,
    director: "Juan López",
    calificacionPromedio: 4.5,
    disponible: true
  },
  {
    titulo: "Misterio en la Red",
    tipo: "pelicula",
    genero: ["Drama", "Tecnología"],
    duracionMinutos: 110,
    anio: 2022,
    director: "Laura Gómez",
    calificacionPromedio: 4.2,
    disponible: true
  },
  {
    titulo: "Planeta Futuro",
    tipo: "serie",
    genero: ["Ciencia Ficción"],
    duracionMinutos: 50,
    anio: 2024,
    director: "Andrés Ruiz",
    calificacionPromedio: 4.8,
    disponible: true
  }
])

// ----- Insertar usuarios -----

db.usuarios.insertMany([
  {
    nombre: "Carlos Pérez",
    email: "carlos@mail.com",
    edad: 28,
    pais: "Colombia",
    fechaRegistro: new Date(),
    historialVisualizacion: [],
    activo: true
  },
  {
    nombre: "Ana Torres",
    email: "ana@mail.com",
    edad: 35,
    pais: "México",
    fechaRegistro: new Date(),
    historialVisualizacion: [],
    activo: true
  }
])

// ----- Insertar valoraciones -----

db.valoraciones.insertMany([
  {
    usuarioId: ObjectId(),
    contenidoId: ObjectId(),
    puntuacion: 5,
    comentario: "Excelente película",
    fecha: new Date()
  },
  {
    usuarioId: ObjectId(),
    contenidoId: ObjectId(),
    puntuacion: 4,
    comentario: "Muy buena",
    fecha: new Date()
  }
])

// Consultas con operadores
// Películas con duración > 120
db.contenidos.find({
  duracionMinutos: { $gt: 120 }
})

// Usuarios mayores de 30
db.usuarios.find({
  edad: { $gt: 30 }
})

// Buscar por regex
db.contenidos.find({
  titulo: { $regex: "Código", $options: "i" }
})

// Uso de $in
db.contenidos.find({
  genero: { $in: ["Acción"] }
})

// Uso de $and
db.contenidos.find({
  $and: [
    { tipo: "pelicula" },
    { anio: { $gte: 2022 } }
  ]
})

// Uso de $or
db.usuarios.find({
  $or: [
    { pais: "Colombia" },
    { edad: { $lt: 30 } }
  ]
})

// Updates y Deletes
// Actualizar calificación
db.contenidos.updateOne(
  { titulo: "Misterio en la Red" },
  { $set: { calificacionPromedio: 4.6 } }
)

// Actualizar múltiples usuarios
db.usuarios.updateMany(
  { pais: "Colombia" },
  { $set: { activo: false } }
)

// Eliminar un usuario
db.usuarios.deleteOne({
  email: "ana@mail.com"
})

// Índices
// Crear índice en título
db.contenidos.createIndex({ titulo: 1 })

// Crear índice en género
db.contenidos.createIndex({ genero: 1 })

// Ver índices
db.contenidos.getIndexes()

// =============================
// AGREGACIONES (OBLIGATORIAS)
// =============================

// 1️ Promedio de calificación por tipo

db.contenidos.aggregate([
  {
    $group: {
      _id: "$tipo",
      promedioCalificacion: { $avg: "$calificacionPromedio" }
    }
  },
  { $sort: { promedioCalificacion: -1 } }
])

// 2️ Cantidad de contenidos por género

db.contenidos.aggregate([
  { $unwind: "$genero" },
  {
    $group: {
      _id: "$genero",
      total: { $sum: 1 }
    }
  },
  { $sort: { total: -1 } }
])