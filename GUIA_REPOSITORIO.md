# Guía para clasificar ejercicios y evidencias

## Estructura sugerida

```text
data-engineering-learning/
├── README.md
├── GUIA_REPOSITORIO.md
├── datos/
│   └── README.md
├── plantillas/
│   └── README_ejercicio.md
├── semana_01/
│   ├── README.md
│   ├── sql_fundamentos.md
│   ├── sql_01.sql
│   ├── evidencias/                 # Capturas de SQLBolt
│   └── ejercicio_01/
│       ├── README.md
│       ├── ejercicio_01_filtro.sql
│       ├── ejercicio_01_total_ventas.sql
│       └── *.png                   # Capturas de pgAdmin
└── semana_02/
    └── ejercicio_02/              # Crear solo cuando haya un ejercicio
```

## Reglas prácticas

1. **Una carpeta por semana** y **otra por ejercicio aplicado**. Ejemplo: `semana_02/ejercicio_02/`.
2. **Cada ejercicio lleva un README** breve con objetivo, fuentes, código, resultado y evidencias. Usa [esta plantilla](plantillas/README_ejercicio.md).
3. Conserva archivos `.sql`, `.py`, `.ipynb` y `.pbix` con nombres descriptivos. Evita archivos vacíos.
4. Al subir capturas, nómbralas `sqlbolt_leccion_01.png`, `ejercicio_01_filtro.png` y similares. **Conserva las originales** y cambia de nombre solo si no rompe enlaces.
5. En Excel, **Enlace / archivo evidencia** puede contener la ruta del archivo GitHub o el nombre del archivo local. En **HITOS**, usa la URL de la carpeta o del entregable final.
6. No conviertas todas las actividades de estudio en proyectos de portafolio: bastan notas de conceptos y archivos ejecutables para las pequeñas prácticas.
7. **Estados verificables:** «Realizado» si existe resultado, «Pendiente» si todavía no se ejecutó o no existe evidencia.
8. No publiques credenciales, archivos `.env`, llaves privadas, datos personales ni datasets sensibles.

## Ejemplo de evidencia en el calendario

- **Consulta SQL:** `semana_01/ejercicio_01/ejercicio_01_filtro.sql`.
- **Captura de resultado:** `semana_01/ejercicio_01/ejercicio_01_filtro.png` (tras subirla).
- **Hito de la semana:** enlace a `semana_01/README.md`.

## Sobre los datasets

El ZIP original incluye los cinco CSV y `LEEME.md`. El repositorio puede mantenerlos en `datos/` una vez cargados por Git, pero no se debe reemplazar el dataset sintético por información de clientes reales.
