# Semana 02 — JOIN, GROUP BY y HAVING

**Objetivo:** relacionar tablas, identificar valores sin correspondencia y resumir registros mediante funciones de agregación. Las prácticas combinan ejercicios de [SQLBolt](https://sqlbolt.com/) con consultas ejecutadas en PostgreSQL mediante pgAdmin 4.

## 1. Lecciones de SQLBolt

| Lección | Concepto trabajado | Evidencia |
| --- | --- | --- |
| [6](https://sqlbolt.com/lesson/6) | `INNER JOIN` entre tablas relacionadas | [Captura](evidencias/SQLBolt_Lesson6.png) |
| [7](https://sqlbolt.com/lesson/7) | `LEFT JOIN` y conservación de filas sin correspondencia | [Captura](evidencias/SQLBolt_Lesson7.png) |
| [8](https://sqlbolt.com/lesson/8) | Identificación de valores `NULL` | [Captura](evidencias/SQLBolt_Lesson8.png) |
| [9](https://sqlbolt.com/lesson/9) | Expresiones calculadas y operadores | [Captura](evidencias/SQLBolt_Lesson9.png) |
| [10](https://sqlbolt.com/lesson/10) | Funciones de agregación y `GROUP BY` | [Captura](evidencias/SQLBolt_Lesson10.png) |
| [11](https://sqlbolt.com/lesson/11) | Agregaciones sobre conjuntos de registros | [Captura](evidencias/SQLBolt_Lesson11.png) |
| [12](https://sqlbolt.com/lesson/12) | Orden lógico de procesamiento SQL | [Captura](evidencias/SQLBolt_Lesson12.png) |

**Estado:** las siete capturas están publicadas en el repositorio y muestran las consignas correspondientes marcadas como correctas.

## 2. Prácticas en PostgreSQL

| Práctica | Operación principal | Resultado verificado |
| --- | --- | --- |
| [Ejercicio 02 — Ventas y productos](ejercicio_02/README.md) | `INNER JOIN` mediante `producto_id` | 1.500 ventas con información de producto |
| [Ejercicio 03 — Unidades por tienda](ejercicio_03/README.md) | `WHERE`, `SUM`, `GROUP BY`, `ORDER BY` | 5 tiendas; 6.236 unidades entregadas |

Se emplearon los [datasets sintéticos de ventas y productos](../datos/README.md). Cada carpeta contiene la consulta SQL y su captura de ejecución.

## 3. Ejemplos adicionales: WHERE y HAVING

Ambos ejemplos se ejecutaron en pgAdmin; sus consultas están publicadas. **Solo falta subir las dos capturas** a `ejemplos_having/`.

| Ejemplo | Consulta SQL | Evidencia por adjuntar | Resultado obtenido |
| --- | --- | --- | --- |
| 1. Tiendas con más de 1.230 unidades entregadas | [`Ejemplo1_SQL_having.sql`](ejemplos_having/Ejemplo1_SQL_having.sql) | `Ejemplo1_SQL_having.png` | **3 tiendas:** T01 (1.240), T03 (1.320), T05 (1.324) |
| 2. Productos con al menos 10 ventas entregadas | [`Ejemplo2_SQL_having.sql`](ejemplos_having/Ejemplo2_SQL_having.sql) | `Ejemplo2_SQL_having.png` | **48 productos** |

En el segundo ejemplo, `COUNT(*)` contabiliza *registros de venta*, no unidades. El dataset contiene 48 productos distintos y los 48 cumplen el umbral. La consulta del primer ejemplo no incluye `ORDER BY`, por lo que el orden de las tres tiendas no está garantizado.

## 4. Aprendizajes

1. **`INNER JOIN`** devuelve coincidencias entre tablas; en el ejercicio 02, todas las ventas encuentran un producto asociado.
2. **`LEFT JOIN`** conserva las filas de la tabla izquierda aunque no exista un registro relacionado en la derecha.
3. **`IS NULL`** permite localizar valores ausentes, a diferencia de `= NULL`, que no realiza esa comparación correctamente.
4. **`SUM` y `COUNT`** producen métricas distintas: unidades acumuladas y cantidad de registros, respectivamente.
5. **`GROUP BY`** crea agrupaciones antes de calcular métricas por tienda o producto.
6. **`WHERE`** restringe las ventas a `Entregado` antes del cálculo de agregados.
7. **`HAVING`** selecciona grupos después de calcular `SUM(unidades)` o `COUNT(*)`. Se comprobó con tres tiendas que superan 1.230 unidades y 48 productos con diez o más ventas.

### Diferencia entre WHERE y HAVING

El orden lógico de una consulta se interpreta como `FROM/JOIN → WHERE → GROUP BY → HAVING → SELECT → ORDER BY → LIMIT`. En ambos ejemplos, `WHERE estado = 'Entregado'` excluye las ventas de otros estados antes de agrupar. Luego `HAVING` filtra los resultados agregados: por unidades acumuladas de cada tienda en el primer caso y por cantidad de ventas de cada producto en el segundo. Esta distinción evita confundir criterios aplicados a filas individuales con condiciones que dependen de una suma o un conteo.

## 5. Pendiente para cerrar el registro de evidencias

Subir únicamente estas capturas a [`ejemplos_having/`](ejemplos_having/):

- `Ejemplo1_SQL_having.png`
- `Ejemplo2_SQL_having.png`

No es necesario volver a subir los SQL, los ejercicios 02 y 03 ni las capturas de SQLBolt, porque ya están publicados.
