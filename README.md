# Data Engineering Learning

Repositorio de prácticas para desarrollar competencias en **Data Analytics e Ingeniería de Datos**. Reúne ejercicios de SQL, resultados comprobables y datasets sintéticos que servirán como base para futuros proyectos con Python, ETL y AWS.

## Progreso

| Etapa | Temas | Evidencias |
| --- | --- | --- |
| [Semana 01 — SQL básico](semana_01/README.md) | `SELECT`, `WHERE`, `LIKE`, `ORDER BY`, `LIMIT` | SQLBolt 1–4 y [ejercicio 01: ventas entregadas](semana_01/ejercicio_01/README.md) |
| [Semana 02 — SQL intermedio](semana_02/README.md) | `INNER JOIN`, `LEFT JOIN`, `NULL`, `GROUP BY`, `HAVING` | SQLBolt 6–12, [ejercicio 02: INNER JOIN](semana_02/ejercicio_02/README.md) y [ejercicio 03: GROUP BY](semana_02/ejercicio_03/README.md) |

**Resultados verificados:** 1.377 ventas entregadas sobre 1.500 ventas del dataset; 1.500 filas relacionadas con productos mediante `INNER JOIN`; 6.236 unidades entregadas distribuidas entre cinco tiendas. En la segunda semana también se ejecutaron [dos consultas con `HAVING`](semana_02/README.md#3-ejemplos-adicionales-where-y-having): una devuelve tres tiendas y la otra, 48 productos.

## Estructura

```text
data-engineering-learning/
├── README.md
├── datos/
│   ├── README.md
│   └── *.csv                         # Datasets sintéticos
├── plantillas/
│   └── README_ejercicio.md
├── semana_01/
│   ├── README.md
│   ├── evidencias/                  # SQLBolt 1–4
│   └── ejercicio_01/               # 3 SQL + 3 PNG + README
└── semana_02/
    ├── README.md
    ├── evidencias/                  # SQLBolt 6–12
    ├── ejercicio_02/               # INNER JOIN: SQL + PNG + README
    ├── ejercicio_03/               # GROUP BY: SQL + PNG + README
    └── ejemplos_having/            # 2 SQL; faltan únicamente 2 PNG
```

## Recursos de práctica

- [Datasets: ventas, productos, tiendas e inventarios](datos/README.md).
- [SQLBolt](https://sqlbolt.com/) para ejercicios interactivos.
- PostgreSQL y pgAdmin 4 para ejecutar consultas sobre tablas importadas.
- [Plantilla para documentar nuevos ejercicios](plantillas/README_ejercicio.md).

## Cómo se documenta cada avance

1. **Semana:** `semana_XX/README.md` reúne contenidos, lecciones y aprendizajes, con enlaces a las capturas de SQLBolt.
2. **Ejercicio aplicado:** `semana_XX/ejercicio_YY/` contiene el SQL o código, la captura de ejecución y un README con objetivo, criterios y resultados.
3. **Ejemplos complementarios:** se agrupan por tema cuando no necesitan un ejercicio independiente, como `semana_02/ejemplos_having/`.
4. **Verificación:** los resultados se registran solo después de ejecutarse. Cuando falte subir una captura, se indica expresamente.
5. **Sin duplicados:** no se generan archivos SQL consolidados que repitan las consultas individuales.

**Nota:** los datasets son artificiales y se utilizan exclusivamente con fines educativos. No se deben publicar contraseñas, claves de AWS ni información confidencial.
