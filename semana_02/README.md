# Semana 02 — JOIN, GROUP BY y HAVING

**Objetivo:** combinar información de varias tablas, interpretar valores sin correspondencia y generar resultados agrupados. Los contenidos se practicaron en [SQLBolt](https://sqlbolt.com/) y se aplicaron a los datasets de ventas y productos con PostgreSQL y pgAdmin 4.

## Lecciones y evidencias

| Lección | Concepto trabajado | Captura |
| --- | --- | --- |
| [6](https://sqlbolt.com/lesson/6) | `INNER JOIN` y relaciones entre tablas | [Ver evidencia](evidencias/SQLBolt_Lesson6.png) |
| [7](https://sqlbolt.com/lesson/7) | `LEFT JOIN` y filas sin correspondencia | [Ver evidencia](evidencias/SQLBolt_Lesson7.png) |
| [8](https://sqlbolt.com/lesson/8) | Valores `NULL` y consultas sobre datos no relacionados | [Ver evidencia](evidencias/SQLBolt_Lesson8.png) |
| [9](https://sqlbolt.com/lesson/9) | Expresiones y operadores en consultas | [Ver evidencia](evidencias/SQLBolt_Lesson9.png) |
| [10](https://sqlbolt.com/lesson/10) | Funciones de agregación y agrupaciones | [Ver evidencia](evidencias/SQLBolt_Lesson10.png) |
| [11](https://sqlbolt.com/lesson/11) | Agregaciones y resultados por grupo | [Ver evidencia](evidencias/SQLBolt_Lesson11.png) |
| [12](https://sqlbolt.com/lesson/12) | Orden lógico de una consulta SQL | [Ver evidencia](evidencias/SQLBolt_Lesson12.png) |

Las siete capturas están publicadas en `evidencias/` y muestran las consignas marcadas como correctas.

## Ejercicios aplicados

| Ejercicio | Técnica principal | Resultado |
| --- | --- | --- |
| [02 — Ventas y productos](ejercicio_02/README.md) | `INNER JOIN` por `producto_id` | **1.500 filas** relacionadas |
| [03 — Unidades por tienda](ejercicio_03/README.md) | `WHERE`, `GROUP BY`, `SUM` y orden descendente | **5 tiendas y 6.236 unidades entregadas** |

Los códigos SQL y las capturas correspondientes se encuentran en la carpeta de cada ejercicio.

## Ejemplos complementarios — WHERE y HAVING

Se ejecutaron dos consultas adicionales para distinguir el filtrado de filas mediante `WHERE` del filtrado de grupos mediante `HAVING`. Ambas consultas y capturas están publicadas en [`ejemplos_adicionales_having/`](ejemplos_adicionales_having/).

| Propósito | Consulta SQL | Captura de pgAdmin | Resultado |
| --- | --- | --- | --- |
| Mostrar tiendas cuya suma de unidades entregadas supera 1.230 | [`Ejemplo1_SQL_having.sql`](ejemplos_adicionales_having/Ejemplo1_SQL_having.sql) | [Ver captura](ejemplos_adicionales_having/Ejemplo1_SQL_having.png) | **3 tiendas:** T01 (1.240), T03 (1.320) y T05 (1.324) |
| Identificar productos con al menos 10 ventas entregadas | [`Ejemplo2_SQL_having.sql`](ejemplos_adicionales_having/Ejemplo2_SQL_having.sql) | [Ver captura](ejemplos_adicionales_having/Ejemplo2_SQL_having.png) | **48 productos** |

En el segundo ejemplo, `COUNT(*)` cuenta registros de venta, no unidades vendidas. El primer ejemplo no especifica `ORDER BY`, por lo que el orden de los grupos no está garantizado.

## Aprendizajes

1. **`INNER JOIN`** devuelve filas con correspondencia entre tablas; en este conjunto de datos, las 1.500 ventas encuentran producto asociado.
2. **`LEFT JOIN`** mantiene las filas de la tabla izquierda incluso sin coincidencia en la derecha.
3. **`IS NULL`** y **`IS NOT NULL`** permiten evaluar valores ausentes; `= NULL` no es la comparación apropiada.
4. **`SUM`** suma valores de una columna y **`COUNT(*)`** cuenta filas.
5. **`GROUP BY`** agrupa registros para calcular métricas por tienda o producto.
6. **`WHERE`** filtra filas antes de que se formen los grupos; aquí se restringieron las ventas a estado `Entregado`.
7. **`HAVING`** filtra resultados de grupos agregados; se aplicó tanto a sumas como a conteos.

El orden lógico habitual se interpreta como `FROM/JOIN → WHERE → GROUP BY → HAVING → SELECT → ORDER BY → LIMIT`. Esta secuencia ayuda a distinguir las condiciones sobre filas de las condiciones sobre resultados agregados, aunque el motor pueda optimizar la ejecución física.

## Continuidad

Las consultas de esta semana quedan documentadas con su código y evidencia visual. Los siguientes ejercicios podrán reutilizar los mismos datasets para practicar uniones, agregaciones y análisis de calidad de datos.
