-- Comprobar los registros iniciales de cada tabla.
SELECT 'clientes' AS tabla, COUNT(*) AS registros, 6 AS esperado
FROM inmobiliaria.clientes
UNION ALL
SELECT 'casas', COUNT(*), 6
FROM inmobiliaria.casas
UNION ALL
SELECT 'rentas', COUNT(*), 8
FROM inmobiliaria.rentas;

-- Mostrar los datos iniciales.
SELECT * FROM inmobiliaria.clientes;
SELECT * FROM inmobiliaria.casas;
SELECT * FROM inmobiliaria.rentas;

-- Mostrar las rentas con sus clientes y propiedades.
SELECT
    r.id_renta,
    c.nombres || ' ' || c.apellidos AS cliente,
    ca.codigo,
    ca.ciudad,
    ca.direccion,
    r.fecha_inicio,
    r.fecha_fin,
    r.precio_mensual_acordado,
    r.estado
FROM inmobiliaria.rentas r
         INNER JOIN inmobiliaria.clientes c
                    ON r.id_cliente = c.id_cliente
         INNER JOIN inmobiliaria.casas ca
                    ON r.id_casa = ca.id_casa
ORDER BY r.id_renta;

-- Comprobar la cantidad de contratos y la suma de mensualidades.
SELECT
    COUNT(*) AS total_contratos,
    8 AS contratos_esperados,
    SUM(precio_mensual_acordado) AS total_mensualidades,
    153000.00 AS mensualidades_esperadas
FROM inmobiliaria.rentas;