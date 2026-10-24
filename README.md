# Data Engineering Learning

Portafolio de aprendizaje práctico en **Data Analytics → Data Engineering**. Reúne ejercicios ejecutados, consultas SQL, capturas de resultados y conjuntos de datos para practicar con herramientas de análisis e ingeniería de datos.

## Progreso

| Módulo | Contenido | Evidencia |
| --- | --- | --- |
| [Semana 01 — Fundamentos SQL](semana_01/README.md) | `SELECT`, filtros, operadores, ordenamiento y límites con SQLBolt | Cuatro capturas de ejercicios |
| [Ejercicio 01 — Ventas entregadas](semana_01/ejercicio_01/README.md) | Consultas en PostgreSQL y pgAdmin 4 | Tres archivos SQL y tres capturas de ejecución |

En el ejercicio 01 se consultó una muestra de **20 ventas entregadas** y se obtuvo un total de **1.377 registros** con estado `Entregado` dentro de un dataset sintético de 1.500 ventas.

## Organización

```text
data-engineering-learning/
├── README.md
├── datos/
│   ├── README.md
│   └── *.csv                      # Datos sintéticos de práctica
├── semana_01/
│   ├── README.md                 # Contenidos y aprendizajes semanales
│   ├── evidencias/               # Capturas de SQLBolt (lecciones 1–4)
│   └── ejercicio_01/
│       ├── README.md             # Objetivo, consultas y resultados
│       ├── ejercicio_01_*.sql    # Tres consultas SQL
│       └── ejercicio_01_*.png    # Tres evidencias de pgAdmin
└── plantillas/
    └── README_ejercicio.md      # Modelo reutilizable para próximas prácticas
```

## Recursos

- [Datasets y descripción de columnas](datos/README.md).
- [Documentación de la semana 01](semana_01/README.md).
- [Plantilla de ejercicios](plantillas/README_ejercicio.md).

## Convención para nuevas entregas

1. Crear `semana_XX/` y documentar los aprendizajes en su `README.md`.
2. Guardar cada práctica aplicada en `semana_XX/ejercicio_YY/`, con su **código, capturas y README**.
3. Usar nombres coincidentes para consulta y evidencia (por ejemplo, `ejercicio_02_ventas.sql` y `ejercicio_02_ventas.png`). En ejercicios pequeños, mantenerlos juntos; separar carpetas solo si aumenta considerablemente la cantidad de archivos.
4. Registrar únicamente resultados efectivamente ejecutados y conservar las consultas necesarias para reproducirlos.

**Datos:** los archivos CSV son sintéticos y no representan información comercial real. No se deben subir contraseñas, archivos de configuración sensibles ni credenciales de servicios cloud.
