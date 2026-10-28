# Data Engineering Learning

Portafolio de aprendizaje práctico en **Data Analytics e Ingeniería de Datos**. Reúne consultas SQL, evidencias de ejecución y datasets sintéticos; el propósito es documentar competencias técnicas de forma reproducible y avanzar hacia proyectos de Python, ETL y AWS.

## Progreso de aprendizaje

| Semana | Contenidos | Ejercicios y resultados |
| --- | --- | --- |
| [01 — Fundamentos SQL](semana_01/README.md) | `SELECT`, `WHERE`, `LIKE`, `ORDER BY`, `LIMIT` | [01 — Ventas entregadas](semana_01/ejercicio_01/README.md): 20 registros de muestra y 1.377 ventas entregadas |
| [02 — SQL intermedio](semana_02/README.md) | `INNER JOIN`, `LEFT JOIN`, `NULL`, `GROUP BY`, `HAVING` | [02 — Ventas y productos](semana_02/ejercicio_02/README.md): 1.500 filas; [03 — Unidades por tienda](semana_02/ejercicio_03/README.md): 5 tiendas y 6.236 unidades |

La semana 02 incluye [dos ejemplos complementarios de `HAVING`](semana_02/README.md#ejemplos-complementarios--where-y-having) con sus consultas y capturas: tres tiendas superan 1.230 unidades entregadas y 48 productos tienen al menos diez ventas entregadas.

## Organización del repositorio

```text
data-engineering-learning/
├── README.md
├── datos/
│   ├── README.md
│   └── *.csv                          # Datasets sintéticos compartidos
├── semana_01/
│   ├── README.md                      # Lecciones y aprendizajes
│   ├── evidencias/                    # Capturas SQLBolt
│   └── ejercicio_01/
│       ├── README.md
│       ├── *.sql                      # Consultas ejecutadas
│       └── *.png                      # Capturas de pgAdmin
└── semana_02/
    ├── README.md                      # Lecciones, prácticas y aprendizajes
    ├── evidencias/                    # Capturas SQLBolt
    ├── ejercicio_02/                 # README + SQL + PNG
    ├── ejercicio_03/                 # README + SQL + PNG
    └── ejemplos_adicionales_having/  # Dos SQL y dos PNG
```

## Criterio uniforme de documentación

Cada ejercicio aplicado utiliza el mismo formato:

1. **Objetivo:** qué debe resolver la consulta o transformación.
2. **Entorno y datos:** herramienta, datasets y tablas utilizadas.
3. **Consultas y resultados:** tabla con las columnas **Propósito | Consulta SQL | Captura de pgAdmin | Resultado**, con enlaces a archivos reales.
4. **Criterio técnico:** filtros, relaciones, agrupaciones o cálculos empleados.
5. **Validación:** resultados observados y comprobaciones realizadas.
6. **Aprendizajes:** conclusiones técnicas específicas del ejercicio.

Para continuar, crear una carpeta `semana_XX/` con un único README de resumen y una subcarpeta `ejercicio_YY/` por práctica. En ejercicios pequeños, conservar el código y las capturas juntos. Las imágenes de SQLBolt se organizan aparte, en `evidencias/`. No es necesario añadir un archivo semanal que duplique las consultas de los ejercicios.

## Recursos

- [Datos de práctica y descripción de los CSV](datos/README.md).
- [SQLBolt](https://sqlbolt.com/) para la práctica guiada de SQL.
- **PostgreSQL y pgAdmin 4** para consultas y validación de resultados.

**Nota:** los datasets son sintéticos y no representan operaciones de una empresa real. No publicar contraseñas, credenciales de AWS ni información privada.
