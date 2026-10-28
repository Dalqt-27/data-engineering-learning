# Semana 01 — Fundamentos de SQL

**Objetivo:** recuperar columnas, filtrar datos, ordenar resultados y limitar las filas mostradas. Los conceptos se practicaron con [SQLBolt](https://sqlbolt.com/) y una tabla de ventas en PostgreSQL.

## Lecciones y evidencias

| Lección | Concepto trabajado | Captura |
| --- | --- | --- |
| [1](https://sqlbolt.com/lesson/1) | `SELECT` y selección de columnas | [Ver evidencia](evidencias/SQLBolt_Lesson1.png) |
| [2](https://sqlbolt.com/lesson/2) | `WHERE` y comparaciones numéricas | [Ver evidencia](evidencias/SQLBolt_Lesson2.png) |
| [3](https://sqlbolt.com/lesson/3) | Filtros de texto, `LIKE` e `IN` | [Ver evidencia](evidencias/SQLBolt_Lesson3.png) |
| [4](https://sqlbolt.com/lesson/4) | `ORDER BY`, `LIMIT` y `OFFSET` | [Ver evidencia](evidencias/SQLBolt_Lesson4.png) |

Las cuatro capturas están publicadas en `evidencias/` y corresponden a los ejercicios resueltos en SQLBolt.

## Ejercicios aplicados

| Ejercicio | Técnica principal | Resultado |
| --- | --- | --- |
| [01 — Ventas entregadas](ejercicio_01/README.md) | `WHERE`, `ORDER BY`, `LIMIT`, `COUNT(*)` | 20 filas de muestra; **1.377 ventas entregadas** |

La práctica se realizó con [`ventas.csv`](../datos/ventas.csv), importado en PostgreSQL y consultado mediante pgAdmin 4. Las tres consultas y sus capturas están documentadas dentro de la carpeta del ejercicio.

## Aprendizajes

1. **`SELECT`** permite recuperar únicamente las columnas requeridas; `SELECT *` recupera todas.
2. **`FROM`** especifica la tabla de origen.
3. **`WHERE`** conserva las filas que cumplen la condición.
4. **`LIKE`** utiliza patrones: `%` representa cero o más caracteres y `_`, un carácter.
5. **`IN`** permite comparar un campo con varios valores posibles sin repetir `OR`.
6. **`ORDER BY`** ordena la salida mediante `ASC` o `DESC`.
7. **`LIMIT`** controla cuántas filas se muestran y **`OFFSET`** cuántas filas iniciales se omiten.
8. **`COUNT(*)`** permite contar los registros filtrados sin confundirlos con la muestra de `LIMIT 20`.

## Continuidad

Los conceptos de filtrado y ordenamiento se amplían en la [semana 02](../semana_02/README.md) mediante `JOIN`, agregaciones y `HAVING`.
