# Datos de práctica — ventas e inventarios

Dataset **sintético**, creado para practicar SQL, Python, Power BI y pipelines ETL. No representa ventas de una empresa real. Importes monetarios simulados en soles.

| Archivo | Registros | Contenido |
| --- | ---: | --- |
| `ventas.csv` | 1.500 | Venta, fecha, tienda, producto, unidades, precio, descuento y estado |
| `productos.csv` | 48 | Producto, categoría, proveedor, costo y precio lista |
| `tiendas.csv` | 5 | Identificador y nombre de tienda |
| `stock_mensual.csv` | 2.880 | Período, tienda, producto, stock inicial y entradas |
| `ventas_calidad.csv` | 61 | Casos preparados para pruebas de calidad; contiene errores intencionados |

### Relaciones
- `ventas.producto_id` → `productos.producto_id`.
- `ventas.tienda_id` → `tiendas.tienda_id`.
- `stock_mensual`: observación por `periodo`, `tienda_id` y `producto_id`.

### Definiciones para ejercicios posteriores
- **Ingresos netos (simulados):** solo ventas `Entregado`; `unidades * precio_unitario * (1 - descuento_pct)`.
- **Margen bruto estimado:** ingresos netos menos `unidades * costo_unitario` para ventas entregadas. No contempla impuestos, fletes ni otros gastos.
- **ABC:** ordenar productos por ingreso neto descendente; clasificar A hasta 80 % acumulado, B hasta 95 % y C el restante. Documentar el tratamiento del producto que cruza un umbral.
- **Inventario:** `stock_inicial` y `entradas` no permiten derivar por sí solos el stock final sin descontar salidas reales por tienda y producto.

### Verificación del ejercicio 01
`ventas.csv` tiene **1.500 filas**: **1.377 Entregado, 67 Devuelto y 56 Pendiente**. El conteo de 1.377 fue observado también en la captura de pgAdmin.

Los CSV originales están en el ZIP suministrado. Para evitar duplicar datasets innecesariamente, se pueden conservar de manera local y publicar aquí después, si se decide que ayudan a reproducir los proyectos. Este documento no implica que esos CSV ya estén disponibles en GitHub.
