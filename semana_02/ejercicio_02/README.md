# Ejercicio 02 — INNER JOIN de ventas y productos

## Objetivo

Consultar el identificador de cada venta, su producto y su categoría combinando las tablas `ventas` y `productos` por `producto_id`.

**Entorno:** PostgreSQL / pgAdmin 4.  
**Datasets:** [`ventas.csv`](../../datos/ventas.csv) y [`productos.csv`](../../datos/productos.csv).

## Archivos

| Consulta | Captura | Resultado observado |
| --- | --- | --- |
| [`ejercicio_02_innerjoin.sql`](ejercicio_02_innerjoin.sql) | [`ejercicio_02_innerjoin.png`](ejercicio_02_innerjoin.png) | **1.500 filas** |

## Procedimiento y validación

Se utilizó `INNER JOIN` para relacionar `ventas.producto_id` con `productos.producto_id`. El resultado presenta tres columnas: `venta_id`, `producto` y `categoria`. No se aplicó filtro por estado, por lo que incluye todas las ventas del dataset de práctica.

El archivo `ventas.csv` tiene 1.500 registros y `productos.csv` contiene 48 productos. La relación es de **un producto a múltiples ventas**; por ello, no debe confundirse el número de productos con el número de filas del resultado. Los 1.500 registros de ventas tienen un identificador de producto presente en la tabla `productos`, lo que explica el total mostrado en pgAdmin.

## Aprendizajes

- `INNER JOIN` combina registros que satisfacen una condición de unión.
- Una relación de uno a muchos puede producir múltiples filas asociadas a un mismo producto.
- Usar alias como `v` y `p` facilitaría la lectura de consultas más largas; el archivo SQL conserva la consulta realizada.

**Estado:** consulta y captura publicadas en el repositorio.
