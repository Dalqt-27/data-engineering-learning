# Ejercicio 01 — Ventas entregadas

## Objetivo

Consultar las ventas con estado `Entregado` de `ventas.csv`, mostrar `venta_id`, `fecha` y `unidades` en orden cronológico y obtener tanto una muestra de 20 filas como el total de registros que cumplen la condición.

## Entorno y datos

- **Herramientas:** PostgreSQL y pgAdmin 4 (Query Tool).
- **Dataset:** [`ventas.csv`](../../datos/ventas.csv), con 1.500 registros sintéticos.
- **Tabla:** `ventas`.

## Consultas y resultados

| Propósito | Consulta SQL | Captura de pgAdmin | Resultado |
| --- | --- | --- | --- |
| Comprobar el filtro mostrando también la columna `estado` | [`ejercicio_01_filtro.sql`](ejercicio_01_filtro.sql) | [Ver captura](ejercicio_01_filtro.png) | 20 filas con estado `Entregado` |
| Mostrar únicamente las tres columnas solicitadas y ordenar con desempate | [`ejercicio_01_orden.sql`](ejercicio_01_orden.sql) | [Ver captura](ejercicio_01_orden.png) | 20 filas ordenadas por `fecha` y `venta_id` |
| Contar todos los registros entregados | [`ejercicio_01_total_ventas.sql`](ejercicio_01_total_ventas.sql) | [Ver captura](ejercicio_01_total_ventas.png) | **1.377 registros** |

## Criterio técnico

- **Filtro:** `WHERE estado = 'Entregado'` excluye ventas pendientes y devueltas.
- **Orden:** `ORDER BY fecha ASC, venta_id ASC` ordena de la fecha más antigua a la más reciente y resuelve empates usando el identificador.
- **Muestra:** `LIMIT 20` restringe las filas visibles, pero no cambia el número total de coincidencias.
- **Conteo:** `COUNT(*)`, aplicado con el mismo filtro, devuelve las **1.377 ventas entregadas**.

## Validación

Las capturas de pgAdmin y los archivos SQL están publicados en esta carpeta. Los 1.377 registros corresponden al conteo de ventas con estado `Entregado` dentro del dataset de 1.500 filas.

**Observación sobre la evidencia:** en la captura del conteo, el panel de resultados muestra correctamente `total_ventas_entregadas = 1377`, pero el editor superior conserva la consulta anterior. El archivo `.sql` del conteo permite reproducir el resultado.

## Aprendizajes

- Diferenciar el tamaño de la muestra del total de registros filtrados.
- Verificar un filtro mostrando temporalmente la columna `estado`.
- Añadir un criterio de desempate al ordenar fechas repetidas.
- Conservar código y capturas para documentar resultados reproducibles.
