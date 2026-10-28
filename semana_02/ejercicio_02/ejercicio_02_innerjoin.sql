SELECT venta_id, producto, categoria
FROM productos
INNER JOIN ventas
ON ventas.producto_id = productos.producto_id