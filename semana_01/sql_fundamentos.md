# Semana 01 — Fundamentos de SQL

## Recursos
- [SQLBolt — Lección 1: SELECT](https://sqlbolt.com/lesson/select_queries_introduction)
- [SQLBolt — Lección 2: filtros con WHERE](https://sqlbolt.com/lesson/select_queries_with_constraints)
- [SQLBolt — Lección 3: filtros de texto](https://sqlbolt.com/lesson/select_queries_with_constraints_pt_2)
- [SQLBolt — Lección 4: ordenar y limitar](https://sqlbolt.com/lesson/filtering_sorting_query_results)

## Registro de aprendizaje — 8 observaciones
1. **SELECT** permite indicar exactamente qué columnas necesito consultar, mientras que **SELECT *** muestra todas las columnas.
2. **FROM** identifica la tabla de la que se obtienen los registros.
3. **WHERE** filtra filas según una condición; puedo utilizar operadores como `=`, `>` y `<`.
4. **LIKE** sirve para buscar patrones de texto; `%` representa cero o más caracteres y `_` un solo carácter.
5. **IN** permite comparar un campo con varios valores posibles sin escribir varios `OR`.
6. **ORDER BY** ordena el resultado; **ASC** es ascendente y **DESC** descendente.
7. **LIMIT** controla cuántas filas se muestran y **OFFSET** permite omitir una cantidad inicial de filas.
8. El orden lógico de mi consulta de ventas es seleccionar columnas, filtrar `estado = 'Entregado'`, ordenar por fecha y mostrar 20 registros. Añadir `venta_id` como segundo criterio desempata fechas repetidas.

## Ejercicio aplicado: ventas entregadas
**Dataset:** `ventas.csv` (datos sintéticos de práctica).

**Herramienta:** PostgreSQL mediante pgAdmin 4.

**Consigna:** obtener `venta_id`, `fecha` y `unidades` de las ventas cuyo estado sea `Entregado`, ordenadas cronológicamente.

**Consulta ejecutada, según captura y archivo proporcionados:**
```sql
SELECT venta_id, fecha, unidades, estado
FROM ventas
WHERE estado = 'Entregado'
ORDER BY fecha ASC
LIMIT 20;
```

**Resultado observado:** pgAdmin mostró **20 filas**. El filtro selecciona únicamente ventas con estado `Entregado`. La consulta visualizada incluye también `estado` para verificar el filtro, aunque la consigna original pedía tres columnas.

**Ajuste recomendado:** seleccionar solo las tres columnas solicitadas y añadir `venta_id ASC` para que el orden sea estable en las fechas iguales.

**Pendiente de comprobar:** ejecutar en pgAdmin el conteo total y guardar su resultado. En el archivo CSV de práctica distribuido con la ruta hay **1.377** registros con estado `Entregado` sobre **1.500** filas; este número es una verificación del CSV, no un resultado que afirme haber ejecutado personalmente en pgAdmin.

## Evidencias
- Capturas SQLBolt lecciones 1–4: guardadas localmente por el estudiante; pendientes de subir a `semana_01/evidencias/`.
- Captura de la consulta de pgAdmin: guardada localmente; pendiente de subir.
- [Archivo de consultas SQL](sql_01.sql): contiene la consulta mostrada y consultas adicionales para completar los entregables del calendario.

## Próximos pasos
- Ejecutar las consultas 2 y 3 del archivo `sql_01.sql`.
- Guardar capturas del conteo y la muestra de 20 filas.
- Subir las evidencias a la carpeta de GitHub y completar el día de portafolio.
