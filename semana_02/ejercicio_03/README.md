# Ejercicio 03 — Unidades entregadas por tienda

## Objetivo

Obtener el total de unidades de ventas con estado `Entregado` para cada tienda y ordenar los resultados de mayor a menor.

**Entorno:** PostgreSQL / pgAdmin 4.  
**Dataset:** [`ventas.csv`](../../datos/ventas.csv).

## Archivos

| Consulta | Captura | Resultado observado |
| --- | --- | --- |
| [`ejercicio_03_group_by.sql`](ejercicio_03_group_by.sql) | [`ejercicio_03_group by.png`](ejercicio_03_group%20by.png) | **5 tiendas, 6.236 unidades** |

## Resultados

| Tienda | Unidades entregadas |
| --- | ---: |
| T05 | 1.324 |
| T03 | 1.320 |
| T01 | 1.240 |
| T04 | 1.209 |
| T02 | 1.143 |
| **Total** | **6.236** |

Los valores coinciden con los resultados mostrados en pgAdmin y con los registros del dataset sintético.

## Criterio técnico

La cláusula `WHERE estado = 'Entregado'` excluye ventas pendientes o devueltas. Posteriormente, `GROUP BY tienda_id` forma los grupos y `SUM(unidades)` calcula el total de cada tienda. `ORDER BY suma_unidades DESC` presenta primero las tiendas que concentran más unidades.

En este dataset, **T05** ocupa el primer lugar con 1.324 unidades, apenas cuatro más que **T03**. La cifra expresa cantidad de unidades, no dinero ni número de transacciones.

## Aprendizajes

- `WHERE` restringe las filas antes de agrupar.
- `SUM` agrega unidades y `GROUP BY` calcula resultados por tienda.
- Es posible ordenar utilizando el alias de una expresión agregada.

**Estado:** consulta y captura publicadas. Los ejemplos adicionales de `HAVING` se documentan en el [README de la semana 02](../README.md), sin duplicar estas consultas.
