-- Semana 01 | consultas de practica con ventas.csv
-- Dataset sintetico importado en PostgreSQL como tabla ventas.

-- 1. Consulta original ejecutada en pgAdmin.
-- Resultado observado: 20 filas, todas con estado Entregado.
SELECT venta_id, fecha, unidades, estado
FROM ventas
WHERE estado = 'Entregado'
ORDER BY fecha ASC
LIMIT 20;

-- 2. Consulta de conteo ejecutada en pgAdmin.
-- Resultado observado: 1377 ventas entregadas.
SELECT COUNT(*) AS total_ventas_entregadas
FROM ventas
WHERE estado = 'Entregado';

-- 3. Variante que se ajusta exactamente a las tres columnas solicitadas.
-- Resultado observado: 20 filas, todas con estado Entregado y ordenado por fecha y ID de venta.
SELECT venta_id, fecha, unidades
FROM ventas
WHERE estado = 'Entregado'
ORDER BY fecha ASC, venta_id ASC
LIMIT 20;
