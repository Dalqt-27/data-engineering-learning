# Semana 02 — JOIN, agregaciones y orden de ejecución SQL

**Objetivo:** combinar información de varias tablas, diferenciar un `INNER JOIN` de un `LEFT JOIN` y aplicar agregaciones con `GROUP BY`, `SUM` y `HAVING`.

**Herramientas:** [SQLBolt](https://sqlbolt.com/) para práctica interactiva; PostgreSQL y pgAdmin 4 para consultas sobre los [datos de ventas](../datos/README.md).

## Lecciones SQLBolt

| Lección | Tema | Evidencia recibida |
| --- | --- | --- |
| [6](https://sqlbolt.com/lesson/6) | `INNER JOIN`, relación entre películas y taquilla | `evidencias/SQLBolt_Lesson6.png`: 3 consignas marcadas como correctas |
| [7](https://sqlbolt.com/lesson/7) | `LEFT JOIN` y conservación de registros sin coincidencia | `evidencias/SQLBolt_Lesson7.png`: 3 consignas correctas |
| [8](https://sqlbolt.com/lesson/8) | `NULL` y registros sin relación | `evidencias/SQLBolt_Lesson8.png`: solo la primera consigna aparece marcada |
| [9](https://sqlbolt.com/lesson/9) | Expresiones en consultas | No se adjuntó captura |
| [10](https://sqlbolt.com/lesson/10) | Funciones de agregación y `GROUP BY` | `evidencias/SQLBolt_Lesson10.png`: 3 consignas correctas |
| [11](https://sqlbolt.com/lesson/11) | Agregaciones y filtros sobre grupos | `evidencias/SQLBolt_Lesson11.png`: 3 consignas correctas |
| [12](https://sqlbolt.com/lesson/12) | Orden de ejecución de consultas | `evidencias/SQLBolt_Lesson12.png`: 2 consignas correctas |

**Estado de las capturas:** se revisaron los archivos adjuntos y está pendiente cargarlos a GitHub en `semana_02/evidencias/`. Los nombres anteriores serán enlaces accesibles cuando se complete la carga. Una captura parcial no se interpreta como lección terminada.

## Ejercicios aplicados en PostgreSQL

| Ejercicio | Objetivo | Evidencia del resultado |
| --- | --- | --- |
| [02 — Relacionar ventas y productos](ejercicio_02/README.md) | `INNER JOIN` entre `ventas` y `productos` por `producto_id` | 1.500 filas, todas las ventas tienen producto asociado en el dataset |
| [03 — Unidades entregadas por tienda](ejercicio_03/README.md) | `WHERE`, `SUM`, `GROUP BY` y `ORDER BY` | 5 tiendas; 6.236 unidades entregadas |

## Aprendizajes principales

1. **`INNER JOIN`** devuelve solamente las filas con correspondencia entre las tablas relacionadas. El ejercicio 02 devuelve 1.500 filas, porque todos los `producto_id` de las ventas existen en `productos`.
2. **`LEFT JOIN`** mantiene las filas de la tabla izquierda aun cuando no exista correspondencia en la derecha; en esos casos, las columnas de la derecha contienen `NULL`.
3. Para buscar valores ausentes se usa **`IS NULL`** o **`IS NOT NULL`**, no `= NULL`.
4. **`SUM(unidades)`** agrega valores numéricos; junto con **`GROUP BY tienda_id`**, calcula un total independiente por tienda.
5. **`WHERE`** filtra filas *antes* de la agrupación. En el ejercicio 03 evita contar ventas que no están entregadas.
6. **`HAVING`** filtra *grupos agregados*. No es un reemplazo universal de `WHERE`: responden a preguntas distintas.
7. **`ORDER BY suma_unidades DESC`** organiza las tiendas del mayor al menor volumen, sin modificar las sumas calculadas.

## Diferencia entre WHERE y HAVING

El orden lógico habitual puede resumirse como **FROM y JOIN → WHERE → GROUP BY → HAVING → SELECT → ORDER BY → LIMIT**. El motor puede optimizar la ejecución física, pero esta secuencia ayuda a interpretar una consulta. Primero se reúnen las filas de las tablas, se filtran las que no interesan y se forman grupos. Luego pueden descartarse grupos según agregaciones; por último se seleccionan las columnas y se organiza la salida. Por ejemplo, `WHERE estado = 'Entregado'` elimina ventas no entregadas *antes de sumar*. En cambio, `HAVING SUM(unidades) > 1200` conserva únicamente las tiendas cuyo total supera 1.200. Cambiar `WHERE` por `HAVING` sin revisar la lógica podría alterar los resultados o producir errores.

**Dos ejemplos conceptuales para practicar (no se adjuntaron capturas de ejecución de estas variantes):**

```sql
-- Ejemplo A: filtrar filas y luego grupos.
SELECT tienda_id, SUM(unidades) AS suma_unidades
FROM ventas
WHERE estado = 'Entregado'
GROUP BY tienda_id
HAVING SUM(unidades) > 1200;
```

```sql
-- Ejemplo B: seleccionar únicamente productos con varias ventas entregadas.
SELECT producto_id, COUNT(*) AS cantidad_ventas
FROM ventas
WHERE estado = 'Entregado'
GROUP BY producto_id
HAVING COUNT(*) >= 10;
```

## Verificaciones por completar

- Subir las seis capturas recibidas a `evidencias/`.
- Finalizar la segunda consigna de SQLBolt 8 y verificar la lección 9; no hay evidencia suficiente para marcarlas como terminadas.
- Si lo exige el calendario, ejecutar y guardar los dos ejemplos de `HAVING` en pgAdmin.
- Publicar las capturas de los ejercicios 02 y 03 en sus respectivas carpetas.

Se conserva **un README semanal**, dos READMEs de ejercicio y un archivo `.sql` por ejercicio, sin duplicar código en una consulta semanal consolidada.
