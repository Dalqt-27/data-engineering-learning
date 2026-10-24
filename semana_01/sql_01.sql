-- Semana 01 | Práctica SQL con ventas.csv
-- Dataset: ventas sintéticas; tabla previamente importada en PostgreSQL.
-- Consulta 1: reproduce la consulta efectivamente mostrada en pgAdmin.
SELECT venta_id, fecha, unidades, estado
FROM ventas
WHERE estado = 'Entregado'
ORDER BY fecha ASC
LIMIT 20;

-- Consulta 2: ajustada a las tres columnas pedidas y orden estable.
-- PENDIENTE: ejecutar esta variante en pgAdmin y verificar 20 filas.
SELECT venta_id, fecha, unidades
FROM ventas
WHERE estado = 'Entregado'
ORDER BY fecha ASC, venta_id ASC
LIMIT 20;

-- Consulta 3: total de ventas entregadas, sin LIMIT.
-- PENDIENTE: ejecutar en pgAdmin y registrar el resultado.
SELECT COUNT(*) AS total_ventas_entregadas
FROM ventas
WHERE estado = 'Entregado';
