-- Ejemplo 2: productos con al menos 10 ventas entregadas.
-- COUNT(*) cuenta filas de venta, no unidades vendidas.
-- Resultado observado en pgAdmin: 48 productos cumplen la condición.

SELECT producto_id, COUNT(*) AS cantidad_ventas
FROM ventas
WHERE estado = 'Entregado'
GROUP BY producto_id
HAVING COUNT(*) >= 10;
