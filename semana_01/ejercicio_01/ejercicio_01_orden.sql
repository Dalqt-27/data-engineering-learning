SELECT venta_id, fecha, unidades
FROM ventas
WHERE estado = 'Entregado'
ORDER BY fecha ASC, venta_id ASC
LIMIT 20;