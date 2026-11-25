-- Insertar 6 clientes de prueba.
INSERT INTO inmobiliaria.clientes
(nombres, apellidos, identificacion, telefono, correo, fecha_registro)
VALUES
    ('Carlos Alberto', 'Gómez Ruiz', 'CLI-001', '00000001', 'carlos@example.com', '2025-01-10'),
    ('María Fernanda', 'López Vega', 'CLI-002', '00000002', 'maria@example.com', '2026-02-15'),
    ('José Antonio', 'Martínez Silva', 'CLI-003', '00000003', 'jose@example.com', '2026-01-20'),
    ('Ana Patricia', 'Morales Paz', 'CLI-004', '00000004', 'ana@example.com', '2026-03-05'),
    ('Roberto Carlos', 'Hernández Ríos', 'CLI-005', '00000005', NULL, '2026-04-12'),
    ('Laura Isabel', 'Mendoza Castro', 'CLI-006', '00000006', 'laura@example.com', '2026-05-18');

-- Insertar 6 casas de prueba.
INSERT INTO inmobiliaria.casas
(codigo, direccion, ciudad, habitaciones, banos, precio_mensual, estado)
VALUES
    ('CAS-001', 'Colonia Centroamérica', 'Managua', 3, 2, 20000.00, 'DISPONIBLE'),
    ('CAS-002', 'Barrio San Felipe', 'León', 2, 1, 12000.00, 'DISPONIBLE'),
    ('CAS-003', 'Barrio La Merced', 'Granada', 3, 2, 18000.00, 'DISPONIBLE'),
    ('CAS-004', 'Reparto San Juan', 'Managua', 4, 3, 46000.00, 'DISPONIBLE'),
    ('CAS-005', 'Barrio El Calvario', 'Masaya', 2, 1, 8000.00, 'MANTENIMIENTO'),
    ('CAS-006', 'Barrio El Rosario', 'Estelí', 3, 2, 15000.00, 'INACTIVA');

-- Insertar 8 rentas de prueba.
INSERT INTO inmobiliaria.rentas
(id_cliente, id_casa, fecha_inicio, fecha_fin, precio_mensual_acordado, deposito, estado, observaciones)
VALUES
    (1, 1, '2025-02-01', '2025-12-31', 19000.00, 19000.00, 'FINALIZADA', NULL),
    (2, 1, '2026-03-01', '2027-02-28', 20000.00, 20000.00, 'ACTIVA', NULL),
    (3, 5, '2026-02-01', '2026-08-01', 8000.00, 8000.00, 'FINALIZADA', NULL),
    (4, 2, '2026-04-01', '2027-03-31', 12000.00, 12000.00, 'ACTIVA', NULL),
    (5, 6, '2026-05-01', '2027-04-30', 15000.00, 0.00, 'CANCELADA', 'Cancelación por solicitud del cliente'),
    (6, 3, '2026-06-01', '2027-05-31', 18000.00, 18000.00, 'ACTIVA', NULL),
    (1, 4, '2026-09-01', '2027-08-31', 44000.00, 46000.00, 'ACTIVA', 'Descuento en la mensualidad'),
    (3, 3, '2026-02-01', '2026-05-01', 17000.00, 17000.00, 'FINALIZADA', NULL);