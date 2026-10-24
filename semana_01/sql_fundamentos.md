# Semana 01 — Apuntes de fundamentos de SQL

## Contenidos practicados

Las capturas de **SQLBolt, lecciones 1 a 4**, muestran la finalización de los ejercicios interactivos. La práctica se complementó con consultas en **PostgreSQL / pgAdmin 4** usando `ventas.csv`.

## Ocho aprendizajes

1. **`SELECT`** permite elegir las columnas necesarias. `SELECT *` recupera todas las columnas, pero en un análisis es más claro indicar los campos relevantes.
2. **`FROM`** especifica la tabla de origen de los datos.
3. **`WHERE`** restringe las filas según una condición: por ejemplo, `estado = 'Entregado'`.
4. **`LIKE`** busca patrones de texto; `%` representa cualquier secuencia de caracteres y `_` un solo carácter.
5. **`IN`** comprueba si un valor pertenece a un conjunto de opciones y evita repetir comparaciones unidas por `OR`.
6. **`ORDER BY`** ordena la salida; `ASC` indica orden ascendente y `DESC` descendente. Cuando hay empates, puede añadirse una segunda columna de orden.
7. **`LIMIT`** reduce el número de filas mostradas y **`OFFSET`** omite un número inicial de filas. Ninguna de estas cláusulas sustituye a `COUNT(*)` si se necesita conocer el total.
8. **Orden de construcción de la consulta:** escoger columnas → identificar tabla → filtrar registros → ordenar → limitar resultados. Este criterio se aplicó a las ventas entregadas.

## Ejercicio práctico: ventas entregadas

Consulta ejecutada:

```sql
SELECT venta_id, fecha, unidades, estado
FROM ventas
WHERE estado = 'Entregado'
ORDER BY fecha ASC
LIMIT 20;
```

**Observado en pgAdmin:** se muestran **20 filas** con estado `Entregado`, ordenadas por fecha ascendente. La cuarta columna, `estado`, se incluyó para verificar visualmente la condición, aunque la consigna original pedía tres campos.

Conteo ejecutado:

```sql
SELECT COUNT(*) AS total_ventas_entregadas
FROM ventas
WHERE estado = 'Entregado';
```

**Observado en pgAdmin:** **1.377 ventas entregadas**, coherente con la verificación de `ventas.csv`.

Para una entrega que respete exactamente las tres columnas solicitadas, se propone esta versión (todavía sin captura de ejecución en los archivos recibidos):

```sql
SELECT venta_id, fecha, unidades
FROM ventas
WHERE estado = 'Entregado'
ORDER BY fecha ASC, venta_id ASC
LIMIT 20;
```

## Evidencias y archivos

- [Descripción y resultados del ejercicio 01](ejercicio_01/README.md).
- [Consultas del ejercicio](ejercicio_01/ejercicio_01_filtro.sql) y [conteo total](ejercicio_01/ejercicio_01_total_ventas.sql).
- [Consultas consolidadas y variante ajustada](sql_01.sql).
- **Capturas de SQLBolt y pgAdmin:** verificadas en el ZIP proporcionado, pendientes de publicar como imágenes en GitHub.

## Próximo aprendizaje

Combinar tablas relacionadas mediante `JOIN`, agrupar con `GROUP BY` y resolver consultas aplicadas a inventarios y ventas. Para documentar ejercicios futuros se dispone de [una plantilla reutilizable](../plantillas/README_ejercicio.md).
