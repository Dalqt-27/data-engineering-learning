-- Ejercicio 01: conteo de ventas entregadas ejecutado en pgAdmin.
-- Resultado observado en captura: 1377 filas.
SELECT COUNT(*) AS total_ventas_entregadas
FROM ventas
WHERE estado = 'Entregado';
