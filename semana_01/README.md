# Semana 01 — Fundamentos de SQL

**Objetivo:** practicar selección de columnas, condiciones de filtrado, ordenamiento y límites de resultados; aplicar lo aprendido sobre una tabla real de práctica en PostgreSQL.

**Herramientas utilizadas:** [SQLBolt](https://sqlbolt.com/), PostgreSQL y pgAdmin 4.

## Lecciones y evidencias

| Lección | Contenido practicado | Evidencia |
| --- | --- | --- |
| 1 | `SELECT` y elección de columnas | [SQLBolt_Lesson1.png](evidencias/SQLBolt_Lesson1.png) |
| 2 | `WHERE` y comparaciones numéricas | [SQLBolt_Lesson2.png](evidencias/SQLBolt_Lesson2.png) |
| 3 | Filtros de texto, `LIKE` e `IN` | [SQLBolt_Lesson3.png](evidencias/SQLBolt_Lesson3.png) |
| 4 | `ORDER BY`, `LIMIT` y `OFFSET` | [SQLBolt_Lesson4.png](evidencias/SQLBolt_Lesson4.png) |

Las cuatro capturas están publicadas en `evidencias/`. Se conserva el nombre original de cada archivo para mantener la correspondencia con el calendario.

## Resumen de aprendizaje (8 observaciones)

1. **`SELECT`** recupera las columnas indicadas; es preferible a `SELECT *` cuando se requieren campos concretos.
2. **`FROM`** identifica la tabla consultada.
3. **`WHERE`** descarta las filas que no cumplen una condición antes de obtener el resultado.
4. Los patrones de **`LIKE`** permiten buscar texto: `%` coincide con cero o más caracteres y `_` con un carácter.
5. **`IN`** compara un campo con varios valores posibles sin repetir condiciones `OR`.
6. **`ORDER BY`** organiza las filas; `ASC` ordena ascendentemente y `DESC` de forma descendente.
7. **`LIMIT`** muestra una cantidad máxima de filas; **`OFFSET`** permite omitir filas iniciales.
8. Una consulta con `LIMIT 20` no informa el total de coincidencias: para ello se utiliza `COUNT(*)` con el mismo filtro.

## Aplicación con PostgreSQL

En el [ejercicio 01 — Ventas entregadas](ejercicio_01/README.md) se practicaron tres consultas sobre `ventas.csv`: filtro de registros entregados, ordenamiento con tres columnas y conteo total. Se verificaron **20 filas de muestra** y **1.377 ventas entregadas**.

## Siguiente etapa

Continuar con consultas que relacionen `ventas`, `productos` y `tiendas` mediante `JOIN`, y posteriormente utilizar agregaciones y `GROUP BY`. Para documentar nuevas prácticas está disponible la [plantilla de ejercicios](../plantillas/README_ejercicio.md).
