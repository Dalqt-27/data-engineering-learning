-- Ejercicio 02: relacionar ventas con productos.
-- Dataset sintético: ventas (1500 filas) y productos (48 filas).
-- Resultado observado en pgAdmin: 1500 filas.
-- Se conserva la lógica ejecutada en la captura entregada.

SELECT venta_id, producto, categoria
FROM productos
INNER JOIN ventas
    ON ventas.producto_id = productos.producto_id;
