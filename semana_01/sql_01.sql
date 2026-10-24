-- Semana 01 | consultas de practica con ventas.csv
-- Dataset sintetico importado en PostgreSQL como tabla ventas.

-- 1. Consulta original ejecutada en pgAdmin.
-- Evidencia: ejercicio_01/ejercicio_01_filtro.png (en ZIP local).
-- Resultado observado: 20 filas, todas con estado Entregado.
SELECT venta_id, fecha, unidades, estado
FROM ventas
WHERE estado = 'Entregado'
ORDER BY fecha ASC
LIMIT 20;

-- 2. Consulta de conteo ejecutada en pgAdmin.
-- Evidencia: ejercicio_01/ejercicio_01_total_ventas.png (en ZIP local).
-- Resultado observado: 1377 ventas entregadas.
SELECT COUNT(*) AS total_ventas_entregadas
FROM ventas
WHERE estado = 'Entregado';

-- 3. Variante que se ajusta exactamente a las tres columnas solicitadas.
-- Propuesta de mejora: desempate por venta_id.
-- Pendiente de ejecucion/captura de esta variante.
SELECT venta_id, fecha, unidades
FROM ventas
WHERE estado = 'Entregado'
ORDER BY fecha ASC, venta_id ASC
LIMIT 20;
