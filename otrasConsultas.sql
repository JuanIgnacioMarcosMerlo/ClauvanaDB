-- gastis de telas
SELECT
    empresa AS empresa,
    SUM(total) AS TotalGastos
FROM proveedores_telas
GROUP BY id_telas;

-- gastos por avio
SELECT
    empresa AS empresa,
    SUM(total) AS TotalGastos
FROM proveedores_avios
GROUP BY tipo_avio;

-- gastos por taller
SELECT
    nombre_taller_corte AS Taller,
    SUM(total) AS TotalGastos
FROM produccion
GROUP BY nombre_taller_corte;
