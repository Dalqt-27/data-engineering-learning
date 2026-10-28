-- Ejercicio 03: sumar unidades entregadas por tienda.
-- Dataset sintético: ventas.csv, importado en PostgreSQL.
-- Resultado observado en pgAdmin: 5 tiendas; 6236 unidades en total.

SELECT tienda_id, SUM(unidades) AS suma_unidades
FROM ventas
WHERE estado = 'Entregado'
GROUP BY tienda_id
ORDER BY suma_unidades DESC;
