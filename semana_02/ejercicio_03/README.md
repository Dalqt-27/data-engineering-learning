# Ejercicio 03 — Unidades entregadas por tienda

## Objetivo

Calcular la cantidad total de unidades correspondientes a ventas con estado `Entregado` para cada tienda y presentar los resultados de mayor a menor.

## Entorno y datos

- **Herramientas:** PostgreSQL y pgAdmin 4 (Query Tool).
- **Dataset:** [`ventas.csv`](../../datos/ventas.csv), con 1.500 ventas sintéticas.
- **Tabla:** `ventas`.

## Consultas y resultados

| Propósito | Consulta SQL | Captura de pgAdmin | Resultado |
| --- | --- | --- | --- |
| Sumar unidades entregadas agrupando por tienda y ordenar de forma descendente | [`ejercicio_03_group_by.sql`](ejercicio_03_group_by.sql) | [Ver captura](ejercicio_03_group%20by.png) | **5 tiendas y 6.236 unidades** |

## Criterio técnico

- **Filtro:** `WHERE estado = 'Entregado'` excluye ventas que no se entregaron.
- **Agrupación:** `GROUP BY tienda_id` genera un grupo para cada tienda.
- **Agregación:** `SUM(unidades)` suma las unidades dentro de cada grupo.
- **Orden:** `ORDER BY suma_unidades DESC` coloca primero las tiendas con mayor cantidad.

## Validación

| Tienda | Unidades entregadas |
| --- | ---: |
| T05 | 1.324 |
| T03 | 1.320 |
| T01 | 1.240 |
| T04 | 1.209 |
| T02 | 1.143 |
| **Total** | **6.236** |

Los cinco resultados coinciden con la captura de pgAdmin y los datos de `ventas.csv`. **T05** presenta el mayor volumen, cuatro unidades por encima de **T03**. Se están contabilizando unidades, no ingresos monetarios ni cantidad de transacciones.

## Aprendizajes

- Aplicar `WHERE` antes de la agrupación para no incluir ventas con otro estado.
- Calcular indicadores agrupados mediante `GROUP BY` y `SUM`.
- Utilizar el alias de una agregación para ordenar los resultados.
