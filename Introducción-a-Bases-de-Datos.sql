-- 1. Crear una base de datos llamada desafio-tuNombre-tuApellido-3digitos.

CREATE DATABASE desafio_sebastian_valenzuela_027;

-- 2. Ingresar a la base de datos creada.

\c nombre_de_la_base_de_datos

-- 3. Crear una tabla llamada clientes

CREATE TABLE clientes (
    email VARCHAR(50),
    nombre VARCHAR(MAX),
    telefono VARCHAR(16),
    empresa VARCHAR(50),
    prioridad SMALLINT CHECK (prioridad BETWEEN 1 AND 10)
);

-- 4. Ingresar 10 clientes distintos con distintas prioridades, el resto de los valores los puedes inventar.

INSERT INTO clientes (email, nombre, telefono, empresa, prioridad) VALUES
('cliente1@example.com', 'Juan Pérez', '123-456-7890', 'ABC Corp', 5),
('cliente2@example.com', 'María Rodríguez', '987-654-3210', 'XYZ Ltd', 8),
('cliente3@example.com', 'Carlos González', '555-123-4567', '123 Industries', 3),
('cliente4@example.com', 'Laura Smith', '111-222-3333', 'Tech Solutions', 10),
('cliente5@example.com', 'Roberto Fernández', '999-888-7777', 'Global Innovations', 2),
('cliente6@example.com', 'Ana López', '444-555-6666', 'Data Systems', 7),
('cliente7@example.com', 'Pedro Ramirez', '777-666-5555', 'Future Trends', 4),
('cliente8@example.com', 'Luisa Martinez', '222-333-4444', 'Infinite Concepts', 9),
('cliente9@example.com', 'Sofía Herrera', '666-777-8888', 'Creative Minds', 6),
('cliente10@example.com', 'Javier Diaz', '888-999-0000', 'Visionary Solutions', 1);

-- 5. Selecciona los tres clientes de mayor prioridad.

SELECT * FROM clientes ORDER BY prioridad DESC LIMIT 3;

-- 6. Selecciona todos los clientes cuya prioridad sea mayor a 5.

SELECT * FROM clientes WHERE prioridad > 5;