# Ejercicio 02 — INNER JOIN entre ventas y productos

## Objetivo

Combinar la tabla `ventas` con `productos` usando `producto_id` para identificar el nombre y la categoría asociados a cada venta.

**Entorno:** PostgreSQL / pgAdmin 4.  
**Fuentes:** [`ventas.csv`](../../datos/ventas.csv) y [`productos.csv`](../../datos/productos.csv), datasets sintéticos del repositorio.

## Consulta y evidencia

| Código | Captura adjunta | Resultado observado |
| --- | --- | --- |
| [`ejercicio_02_innerjoin.sql`](ejercicio_02_innerjoin.sql) | `ejercicio_02_innerjoin.png` (pendiente de subir a GitHub) | **1.500 registros** mostrados en pgAdmin |

La consulta solicita `venta_id`, `producto` y `categoria`, relacionando ambas tablas con `ON ventas.producto_id = productos.producto_id`. No aplica filtros por estado, de modo que incluye ventas entregadas, pendientes y devueltas.

## Validación y explicación

`productos` tiene 48 filas y `ventas` tiene 1.500. Un `INNER JOIN` no implica que la salida deba tener 48 filas: un producto puede aparecer en múltiples ventas. En este dataset, todos los identificadores de producto utilizados por las ventas encuentran correspondencia, por eso la salida tiene **1.500 registros**. El panel de pgAdmin muestra una página de hasta 1.000 filas, aunque indica **Total rows: 1500**.

En una consulta con muchas tablas, se recomienda usar alias y nombres de columna calificados (por ejemplo, `v.venta_id` y `p.producto`) para mejorar la claridad. Se conserva aquí la consulta enviada para que coincida con la captura original.

## Aprendizajes

- `INNER JOIN` exige coincidencia entre las claves de las tablas relacionadas.
- Una relación de un producto a muchas ventas puede generar varias filas por producto.
- Conviene distinguir la paginación del editor del número total de filas de la consulta.

**Captura:** el archivo `ejercicio_02_innerjoin.png` fue recibido en el chat; aún no figura publicado en el repositorio.
