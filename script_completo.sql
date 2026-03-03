/* =====================================================
   HU 2 - SISTEMA ACADÉMICO SQL
   Base de datos: gestion_academica_universidad
   ===================================================== */

/* ===============================
   TASK 1 - CREACIÓN DE BD Y TABLAS
   =============================== */

-- Borrar la siguiente línea de código si se va a crear manualmente.
CREATE DATABASE gestion_academica_universidad;

/* Conectarse a la BD en PostgreSQL:
   \c gestion_academica_universidad;
*/

/* TABLA ESTUDIANTES */
CREATE TABLE estudiantes (
    id_estudiante SERIAL PRIMARY KEY,
    nombre_completo VARCHAR(150) NOT NULL,
    correo_electronico VARCHAR(150) NOT NULL UNIQUE,
    genero VARCHAR(20) CHECK (genero IN ('Masculino', 'Femenino', 'Otro')),
    identificacion VARCHAR(20) NOT NULL UNIQUE,
    carrera VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    fecha_ingreso DATE NOT NULL
);

/* TABLA DOCENTES */
CREATE TABLE docentes (
    id_docente SERIAL PRIMARY KEY,
    nombre_completo VARCHAR(150) NOT NULL,
    correo_institucional VARCHAR(150) NOT NULL UNIQUE,
    departamento_academico VARCHAR(100) NOT NULL,
    anios_experiencia INT CHECK (anios_experiencia >= 0)
);

/* TABLA CURSOS */
CREATE TABLE cursos (
    id_curso SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    codigo VARCHAR(20) NOT NULL UNIQUE,
    creditos INT CHECK (creditos > 0),
    semestre INT CHECK (semestre >= 1),
    id_docente INT,
    FOREIGN KEY (id_docente) 
        REFERENCES docentes(id_docente)
        ON DELETE SET NULL
);

/* TABLA INSCRIPCIONES */
CREATE TABLE inscripciones (
    id_inscripcion SERIAL PRIMARY KEY,
    id_estudiante INT NOT NULL,
    id_curso INT NOT NULL,
    fecha_inscripcion DATE NOT NULL,
    calificacion_final NUMERIC(4,2) CHECK (calificacion_final BETWEEN 0 AND 5),
    FOREIGN KEY (id_estudiante)
        REFERENCES estudiantes(id_estudiante)
        ON DELETE CASCADE,
    FOREIGN KEY (id_curso)
        REFERENCES cursos(id_curso)
        ON DELETE CASCADE
);

/* ===============================
   TASK 2 - INSERCIÓN DE DATOS
   =============================== */

-- estudiantes
INSERT INTO estudiantes 
(nombre_completo, correo_electronico, genero, identificacion, carrera, fecha_nacimiento, fecha_ingreso)
VALUES
('Ana Torres', 'ana@correo.com', 'Femenino', '1001', 'Ingeniería', '2002-03-10', '2022-01-15'),
('Carlos Ruiz', 'carlos@correo.com', 'Masculino', '1002', 'Derecho', '2001-07-21', '2021-01-15'),
('Laura Gómez', 'laura@correo.com', 'Femenino', '1003', 'Ingeniería', '2003-02-11', '2023-01-15'),
('Miguel Pérez', 'miguel@correo.com', 'Masculino', '1004', 'Medicina', '2000-09-09', '2020-01-15'),
('Sofía Díaz', 'sofia@correo.com', 'Femenino', '1005', 'Administración', '2002-12-01', '2022-01-15');

-- docentes
INSERT INTO docentes
(nombre_completo, correo_institucional, departamento_academico, anios_experiencia)
VALUES
('Dr. Martínez', 'martinez@uni.edu', 'Ingeniería', 10),
('Dra. Salazar', 'salazar@uni.edu', 'Derecho', 6),
('Dr. Ramírez', 'ramirez@uni.edu', 'Medicina', 3);

-- cursos
INSERT INTO cursos
(nombre, codigo, creditos, semestre, id_docente)
VALUES
('Bases de Datos', 'BD101', 3, 2, 1),
('Derecho Civil', 'DC201', 4, 3, 2),
('Anatomía', 'AN301', 5, 1, 3),
('Programación', 'PR102', 3, 2, 1);

-- inscripciones(8 registros)
INSERT INTO inscripciones
(id_estudiante, id_curso, fecha_inscripcion, calificacion_final)
VALUES
(1,1,'2024-02-01',4.5),
(1,4,'2024-02-01',4.2),
(2,2,'2024-02-01',3.8),
(3,1,'2024-02-01',4.7),
(3,4,'2024-02-01',4.0),
(4,3,'2024-02-01',3.5),
(5,1,'2024-02-01',4.1),
(5,2,'2024-02-01',3.9);


/* ===============================
   TASK 3 - CONSULTAS
   =============================== */

-- JOIN estudiantes + cursos
SELECT e.nombre_completo, c.nombre AS curso, i.calificacion_final
FROM estudiantes e
JOIN inscripciones i ON e.id_estudiante = i.id_estudiante
JOIN cursos c ON i.id_curso = c.id_curso;

-- Cursos con docentes > 5 años
SELECT c.nombre, d.nombre_completo
FROM cursos c
JOIN docentes d ON c.id_docente = d.id_docente
WHERE d.anios_experiencia > 5;

-- Promedio por curso
SELECT c.nombre, ROUND(AVG(i.calificacion_final),2) AS promedio
FROM cursos c
JOIN inscripciones i ON c.id_curso = i.id_curso
GROUP BY c.nombre;

-- Estudiantes con más de un curso
SELECT e.nombre_completo, COUNT(*) AS total_cursos
FROM estudiantes e
JOIN inscripciones i ON e.id_estudiante = i.id_estudiante
GROUP BY e.nombre_completo
HAVING COUNT(*) > 1;

-- ALTER TABLE
ALTER TABLE estudiantes
ADD COLUMN estado_academico VARCHAR(30) DEFAULT 'Activo';

-- Cursos con más de 2 estudiantes
SELECT c.nombre, COUNT(*) AS total
FROM cursos c
JOIN inscripciones i ON c.id_curso = i.id_curso
GROUP BY c.nombre
HAVING COUNT(*) > 2;


/* ===============================
   TASK 4 - SUBCONSULTAS
   =============================== */

-- Promedio mayor al promedio general
SELECT nombre_completo
FROM estudiantes
WHERE id_estudiante IN (
    SELECT id_estudiante
    FROM inscripciones
    GROUP BY id_estudiante
    HAVING AVG(calificacion_final) >
        (SELECT AVG(calificacion_final) FROM inscripciones)
);

-- Carreras con estudiantes en semestre ≥ 2
SELECT DISTINCT carrera
FROM estudiantes e
WHERE EXISTS (
    SELECT 1
    FROM inscripciones i
    JOIN cursos c ON i.id_curso = c.id_curso
    WHERE e.id_estudiante = i.id_estudiante
    AND c.semestre >= 2
);


/* ===============================
   TASK 5 - VISTA
   =============================== */

-- CREATE VIEW vista_historial_academico ...
CREATE VIEW vista_historial_academico AS
SELECT 
    e.nombre_completo AS estudiante,
    c.nombre AS curso,
    d.nombre_completo AS docente,
    c.semestre,
    i.calificacion_final
FROM inscripciones i
JOIN estudiantes e ON i.id_estudiante = e.id_estudiante
JOIN cursos c ON i.id_curso = c.id_curso
JOIN docentes d ON c.id_docente = d.id_docente;


/* ===============================
   TASK 6 - PERMISOS Y TRANSACCIONES
   =============================== */

-- CREATE ROLE
CREATE ROLE revisor_academico;

-- GRANT
GRANT SELECT ON vista_historial_academico TO revisor_academico;

-- REVOKE
REVOKE INSERT, UPDATE, DELETE ON inscripciones FROM revisor_academico;

-- BEGIN / SAVEPOINT / ROLLBACK / COMMIT
BEGIN;

UPDATE inscripciones
SET calificacion_final = 4.8
WHERE id_inscripcion = 1;

SAVEPOINT punto1;

UPDATE inscripciones
SET calificacion_final = 2.0
WHERE id_inscripcion = 2;

ROLLBACK TO punto1;

COMMIT;
