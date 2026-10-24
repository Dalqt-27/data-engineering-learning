# Ejercicio 01 — Filtrado de ventas entregadas

## Objetivo

Consultar ventas con estado `Entregado` y mostrar una muestra de 20 registros ordenados por fecha ascendente. Obtener además el **total de registros que cumplen el filtro**.

## Entorno y fuente

- **Motor:** PostgreSQL.
- **Editor:** pgAdmin 4 (Query Tool).
- **Datos:** `ventas.csv`, dataset sintético de 1.500 filas; tabla importada como `ventas`.
- **Campos usados:** `venta_id`, `fecha`, `unidades`, `estado`.

## Consultas entregadas

1. [`ejercicio_01_filtro.sql`](ejercicio_01_filtro.sql): incluye `estado` para poder comprobar visualmente el filtro.
2. [`ejercicio_01_total_ventas.sql`](ejercicio_01_total_ventas.sql): cuenta los registros entregados.
3. [`../sql_01.sql`](../sql_01.sql): versión consolidada con una variante de tres columnas que se ajusta exactamente a la consigna.

## Resultados observados

| Validación | Resultado | Soporte |
| --- | ---: | --- |
| Filtro `estado = 'Entregado'` | Filas mostradas con estado Entregado | `ejercicio_01_filtro.png` |
| `ORDER BY fecha ASC LIMIT 20` | 20 filas | `ejercicio_01_filtro.png` |
| `COUNT(*)` con el mismo filtro | **1.377 filas** | `ejercicio_01_total_ventas.png` |

La captura del filtrado muestra **cuatro** columnas (incluyendo `estado`), mientras que la consigna solicita **tres**. La variante corregida está documentada en el SQL consolidado, pero no existe una captura de su ejecución en el ZIP recibido.

## Criterio técnico

La condición `WHERE estado = 'Entregado'` excluye las ventas pendientes o devueltas. `ORDER BY fecha ASC` organiza cronológicamente el resultado y `LIMIT 20` reduce únicamente la presentación: **no modifica el total real**. Para evitar resultados arbitrarios cuando varias ventas tienen la misma fecha, la consulta consolidada propone un segundo criterio `venta_id ASC`.

## Estado de evidencias

En el ZIP recibido se verificaron ambos archivos SQL y ambas capturas de pgAdmin. **Las imágenes están pendientes de subir a GitHub**; cuando se publiquen en esta carpeta, se podrán abrir directamente desde esta página.

## Qué aprendí

- Filtrar filas con `WHERE` antes de limitar el resultado.
- Diferenciar una **muestra de 20 filas** del **conteo completo de 1.377**.
- Usar una columna de control (`estado`) para inspeccionar la exactitud del filtro.
- Guardar la consulta SQL junto con evidencia del resultado para hacer reproducible la práctica.
