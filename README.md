# Data Engineering Learning

Portafolio de aprendizaje práctico orientado a **Data Analytics → Data Engineering**. Contiene consultas SQL ejecutadas, resultados comprobables y datos sintéticos para practicar procesamiento y análisis de información.

## Progreso documentado

| Módulo | Temas | Ejercicios |
| --- | --- | --- |
| [Semana 01 — Fundamentos SQL](semana_01/README.md) | `SELECT`, `WHERE`, `LIKE`, ordenamiento y límites | [01 — Ventas entregadas](semana_01/ejercicio_01/README.md): 20 filas de muestra y 1.377 ventas entregadas |
| [Semana 02 — SQL intermedio](semana_02/README.md) | `INNER JOIN`, `LEFT JOIN`, `NULL`, agregaciones, `GROUP BY` y `HAVING` | [02 — Ventas y productos](semana_02/ejercicio_02/README.md): 1.500 filas; [03 — Unidades por tienda](semana_02/ejercicio_03/README.md): 5 tiendas y 6.236 unidades |

**Verificación:** los SQL de los ejercicios 01–03 y los resultados declarados se apoyan en consultas y capturas proporcionadas. Las capturas de **la semana 02** todavía deben subirse al repositorio; algunas tareas de SQLBolt están documentadas como parciales en el [resumen semanal](semana_02/README.md).

## Estructura del repositorio

```text
data-engineering-learning/
├── README.md
├── datos/
│   ├── README.md
│   └── *.csv                         # Datos sintéticos
├── plantillas/
│   └── README_ejercicio.md
├── semana_01/
│   ├── README.md                    # Aprendizajes semanales y SQLBolt
│   ├── evidencias/                  # Capturas SQLBolt 1–4
│   └── ejercicio_01/
│       ├── README.md
│       ├── *.sql                    # Tres consultas PostgreSQL
│       └── *.png                    # Tres capturas pgAdmin
└── semana_02/
    ├── README.md                    # Lecciones y notas WHERE / HAVING
    ├── evidencias/                  # Capturas SQLBolt 6–12 (por subir)
    ├── ejercicio_02/
    │   ├── README.md
    │   ├── ejercicio_02_innerjoin.sql
    │   └── ejercicio_02_innerjoin.png # Por subir
    └── ejercicio_03/
        ├── README.md
        ├── ejercicio_03_group_by.sql
        └── ejercicio_03_group_by.png  # Por subir
```

## Datasets y herramientas

- [Descripción de los cinco CSV](datos/README.md).
- **SQL:** PostgreSQL, pgAdmin 4 y [SQLBolt](https://sqlbolt.com/).
- En etapas posteriores: Python, pandas, Power BI y AWS, conforme al plan de estudio.

## Cómo incorporar un ejercicio nuevo

1. Crear `semana_XX/ejercicio_YY/` y colocar allí el código y sus capturas con **nombres relacionados**.
2. Crear el `README.md` del ejercicio usando la [plantilla](plantillas/README_ejercicio.md): objetivo, entorno, código, validación y aprendizajes.
3. Actualizar el `README.md` semanal con las lecciones y el vínculo al ejercicio.
4. Agregar al cuadro de progreso principal solo los resultados efectivamente comprobados.

Para ejercicios cortos se mantienen `.sql` y `.png` juntos. Las capturas de cursos interactivos se agrupan en la carpeta `evidencias/` de cada semana. No se crean archivos SQL consolidados que dupliquen los de los ejercicios.

> **Nota:** los datos publicados son sintéticos. No almacenar contraseñas, credenciales cloud ni datos privados en este repositorio.
