# Trabajo 1 – Diseño Conceptual y Modelo Relacional  
## Hospital "Vida Sana"

## 📌 Objetivo

Diseñar una base de datos relacional para la gestión de pacientes, médicos, citas y diagnósticos del Hospital "Vida Sana", aplicando principios de modelado conceptual (DER) y lógico (Modelo Relacional), garantizando normalización hasta Tercera Forma Normal (3FN).

---

## 🧩 Modelo Conceptual (DER)

El Diagrama Entidad–Relación define las siguientes entidades principales:

- Paciente
- Médico
- Cita
- Diagnóstico

### Relaciones

- Un Paciente puede tener muchas Citas (1:N)
- Un Médico puede atender muchas Citas (1:N)
- Una Cita puede generar varios Diagnósticos (1:N)

📎 Ver archivo: `DER.png` o `DER.pdf`

---

## 🗄 Modelo Relacional

El modelo relacional se construyó a partir del DER, manteniendo correspondencia 1:1 entre entidades y tablas.

Se definieron:

- Claves primarias (PK)
- Claves foráneas (FK)
- Tipos de datos apropiados
- Restricciones de unicidad donde corresponde

---

## 🔎 Normalización

El diseño cumple con:

- ✔ Primera Forma Normal (1FN): Sin atributos multivaluados.
- ✔ Segunda Forma Normal (2FN): Sin dependencias parciales.
- ✔ Tercera Forma Normal (3FN): Sin dependencias transitivas.

El modelo evita redundancia y garantiza integridad referencial.

---

## 📂 Estructura del Trabajo


hu_1-DER-modelo-relacional
│
├── DER.png
├── DER.zip
└── README.md


---

## ✅ Resultado

Se obtuvo un diseño consistente, normalizado hasta 3FN y coherente entre el modelo conceptual y el modelo relacional, listo para su futura implementación en un sistema gestor de bases de datos.