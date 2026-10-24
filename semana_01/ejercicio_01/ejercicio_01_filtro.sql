-- Ejercicio 01: consulta original entregada y ejecutada en pgAdmin.
-- Dataset sintético: ventas.csv (tabla ventas).
-- Incluye estado como columna de verificación visual del filtro.
SELECT venta_id, fecha, unidades, estado
FROM ventas
WHERE estado = 'Entregado'
ORDER BY fecha ASC
LIMIT 20;
