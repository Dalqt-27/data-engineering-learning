# Datos de práctica

Cinco archivos CSV **sintéticos** para ejercicios de SQL, Python, Power BI y ETL. No corresponden a transacciones reales.

| Archivo | Filas de datos | Columnas principales | Uso previsto |
| --- | ---: | --- | --- |
| [`ventas.csv`](ventas.csv) | 1.500 | `venta_id`, `fecha`, `tienda_id`, `producto_id`, `unidades`, `precio_unitario`, `descuento_pct`, `estado` | Filtros, agregaciones y análisis de ventas |
| [`productos.csv`](productos.csv) | 48 | `producto_id`, `producto`, `categoria`, `proveedor`, `costo_unitario`, `precio_lista` | Consultas por producto y categoría |
| [`tiendas.csv`](tiendas.csv) | 5 | `tienda_id`, `tienda` | Dimensión de tiendas y `JOIN` |
| [`stock_mensual.csv`](stock_mensual.csv) | 2.880 | `periodo`, `tienda_id`, `producto_id`, `stock_inicial`, `entradas` | Análisis de inventario por período |
| [`ventas_calidad.csv`](ventas_calidad.csv) | 61 | Columnas de ventas con registros alterados intencionalmente | Detección de errores y validación |

## Relaciones

- `ventas.producto_id` → `productos.producto_id`.
- `ventas.tienda_id` → `tiendas.tienda_id`.
- `stock_mensual` identifica movimientos por `periodo`, `tienda_id` y `producto_id`.

## Comprobación para el ejercicio 01

De las **1.500** filas de `ventas.csv`: **1.377** tienen estado `Entregado`, **67** `Devuelto` y **56** `Pendiente`. El conteo de ventas entregadas coincide con el resultado mostrado en la captura de pgAdmin del [ejercicio 01](../semana_01/ejercicio_01/README.md).

## Criterios para ejercicios posteriores

- **Ingreso neto simulado:** `unidades * precio_unitario * (1 - descuento_pct)`, considerando únicamente ventas entregadas.
- **Margen bruto estimado:** ingreso neto menos `unidades * costo_unitario`, uniendo con `productos`. No contempla impuestos, envío ni gastos operativos.
- **Clasificación ABC:** ordenar los productos por ingreso neto, calcular porcentaje acumulado y documentar el tratamiento de límites de clase.
- **Stock:** `stock_inicial` y `entradas` no bastan para calcular stock final sin contabilizar las salidas correspondientes.

**Uso:** estos archivos se pueden importar en PostgreSQL o analizar con Python y Power BI. Los registros son artificiales y no deben interpretarse como estadísticas empresariales reales.
