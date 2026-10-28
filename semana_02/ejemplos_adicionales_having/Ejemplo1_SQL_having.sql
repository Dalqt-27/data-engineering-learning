-- Ejemplo 1: tiendas cuya suma de unidades entregadas supera 1230.
-- WHERE filtra ventas; HAVING filtra grupos luego de SUM.
-- Resultado observado en pgAdmin: T01=1240, T05=1324 y T03=1320 (3 tiendas).

SELECT tienda_id, SUM(unidades) AS suma_unidades
FROM ventas
WHERE estado = 'Entregado'
GROUP BY tienda_id
HAVING SUM(unidades) > 1230;
