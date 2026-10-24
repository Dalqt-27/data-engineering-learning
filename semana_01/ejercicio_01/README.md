# Ejercicio 01 — Consulta de ventas entregadas

## Consigna

A partir de `ventas.csv`, obtener `venta_id`, `fecha` y `unidades` para ventas con estado **Entregado**, ordenadas por fecha ascendente. Entregar una muestra de **20 filas**, el **número total de coincidencias** y el **criterio de filtrado**.

**Entorno:** PostgreSQL, utilizando Query Tool de pgAdmin 4.  
**Origen:** [`datos/ventas.csv`](../../datos/ventas.csv), conjunto de datos sintético de 1.500 registros importado en una tabla llamada `ventas`.

## Consultas y resultados

| Propósito | Consulta SQL | Captura de pgAdmin | Resultado |
| --- | --- | --- | --- |
| Comprobar visualmente el filtro mediante la columna `estado` | [`ejercicio_01_filtro.sql`](ejercicio_01_filtro.sql) | [Ver captura](ejercicio_01_filtro.png) | 20 filas, todas `Entregado` |
| Cumplir exactamente las tres columnas solicitadas, con desempate por identificador | [`ejercicio_01_orden.sql`](ejercicio_01_orden.sql) | [Ver captura](ejercicio_01_orden.png) | 20 filas ordenadas por fecha y `venta_id` |
| Contar todas las ventas entregadas, sin limitar la salida | [`ejercicio_01_total_ventas.sql`](ejercicio_01_total_ventas.sql) | [Ver captura](ejercicio_01_total_ventas.png) | **1.377 registros** |

Los tres archivos `.sql` y las tres imágenes `.png` están en esta misma carpeta. Se mantienen juntos porque cada consulta tiene una única evidencia identificada con el mismo nombre.

## Criterio técnico

- **Filtrado:** `WHERE estado = 'Entregado'` excluye ventas con otros estados.
- **Ordenamiento:** `ORDER BY fecha ASC, venta_id ASC` devuelve primero las fechas más antiguas y usa el identificador como desempate.
- **Muestra:** `LIMIT 20` limita la visualización a 20 registros, no reduce el número de filas existentes en la tabla.
- **Conteo:** `COUNT(*)` con el mismo `WHERE` devuelve el total de coincidencias: **1.377**.

## Validación

Las capturas muestran los resultados obtenidos en pgAdmin. En particular, la captura de conteo presenta **1.377** en la columna `total_ventas_entregadas`. En esa imagen, el editor superior todavía contiene la consulta anterior; el archivo [`ejercicio_01_total_ventas.sql`](ejercicio_01_total_ventas.sql) conserva la consulta `COUNT(*)` para reproducir la cifra.

**Mejora opcional de presentación:** actualizar esa captura para que aparezcan juntos el código `COUNT(*)` y su resultado en la misma ejecución.

## Aprendizajes

- Verificar un filtro mostrando temporalmente la columna que determina la condición.
- Usar un segundo criterio de orden cuando hay fechas repetidas.
- Distinguir entre tamaño de la muestra (20) y total de coincidencias (1.377).
- Conservar el SQL y la evidencia visual como documentación reproducible.
