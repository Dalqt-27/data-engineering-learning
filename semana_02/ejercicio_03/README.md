# Ejercicio 03 — Unidades entregadas agrupadas por tienda

## Objetivo

Calcular el número total de unidades vendidas con estado `Entregado` por `tienda_id` y ordenar las tiendas de mayor a menor cantidad.

**Entorno:** PostgreSQL / pgAdmin 4.  
**Fuente:** [`ventas.csv`](../../datos/ventas.csv), dataset sintético.

## Consulta y evidencia

| Código | Captura adjunta | Resultado |
| --- | --- | --- |
| [`ejercicio_03_group_by.sql`](ejercicio_03_group_by.sql) | `ejercicio_03_group_by.png` (pendiente de subir a GitHub) | 5 tiendas, 6.236 unidades entregadas |

## Resultados verificados

| Tienda | Unidades entregadas |
| --- | ---: |
| T05 | 1.324 |
| T03 | 1.320 |
| T01 | 1.240 |
| T04 | 1.209 |
| T02 | 1.143 |
| **Total** | **6.236** |

Los valores de la tabla coinciden con la captura de pgAdmin y se comprobaron sobre `datos/ventas.csv`.

## Criterio técnico

1. `WHERE estado = 'Entregado'` limita el cálculo a las ventas entregadas.
2. `GROUP BY tienda_id` crea un grupo por tienda.
3. `SUM(unidades)` suma las unidades de cada grupo.
4. `ORDER BY suma_unidades DESC` muestra primero la tienda con más unidades.

**Interpretación:** T05 presenta el mayor total (1.324 unidades), seguida muy de cerca por T03 (1.320). Estos resultados corresponden a datos de práctica y no describen ventas de una empresa real.

## Aprendizajes

- `WHERE` se aplica antes de agrupar y evita sumar ventas con estados no deseados.
- La combinación `GROUP BY` + `SUM` produce indicadores agrupados.
- Un alias como `suma_unidades` facilita ordenar el resultado calculado.

**Captura:** el archivo `ejercicio_03_group_by.png` fue recibido en el chat; aún no figura publicado en el repositorio.
