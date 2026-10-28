# Ejercicio 02 — INNER JOIN entre ventas y productos

## Objetivo

Relacionar las tablas `ventas` y `productos` mediante `producto_id` para obtener el identificador de cada venta, el nombre del producto y su categoría.

## Entorno y datos

- **Herramientas:** PostgreSQL y pgAdmin 4 (Query Tool).
- **Datasets:** [`ventas.csv`](../../datos/ventas.csv) (1.500 filas) y [`productos.csv`](../../datos/productos.csv) (48 productos).
- **Tablas:** `ventas` y `productos`.

## Consultas y resultados

| Propósito | Consulta SQL | Captura de pgAdmin | Resultado |
| --- | --- | --- | --- |
| Incorporar nombre y categoría de producto a cada venta | [`ejercicio_02_innerjoin.sql`](ejercicio_02_innerjoin.sql) | [Ver captura](ejercicio_02_innerjoin.png) | **1.500 registros** relacionados |

## Criterio técnico

Se utiliza `INNER JOIN` con `ON ventas.producto_id = productos.producto_id`. La consulta recupera `venta_id`, `producto` y `categoria` sin restringir el estado de las ventas.

La relación es de **un producto a muchas ventas**: un mismo producto puede aparecer en múltiples registros. Por eso el resultado no se limita a las 48 filas de la tabla `productos`.

## Validación

La captura de pgAdmin indica **1.500 filas** en el resultado; la cuadrícula visualiza una página de hasta 1.000 registros. Al contrastar las claves del dataset, todos los `producto_id` utilizados en las ventas encuentran una correspondencia en `productos`.

El SQL publicado reproduce la consulta original. En ejercicios futuros se pueden utilizar alias (`v` y `p`) y calificar las columnas para mejorar la legibilidad de consultas extensas.

## Aprendizajes

- Relacionar dos tablas mediante una clave compartida.
- Reconocer cómo una relación de uno a muchos determina la cardinalidad de un `JOIN`.
- Diferenciar la paginación visual de pgAdmin del total de registros devueltos.
