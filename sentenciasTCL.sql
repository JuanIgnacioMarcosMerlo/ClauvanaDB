SELECT * FROM fecha;

INSERT INTO fecha (fecha) VALUES (curdate());

-- Primera Tabla:

-- Iniciar una transacción
START TRANSACTION;

-- desactivar temporalmente el modo de actulizacion segura
-- SET SQL_SAFE_UPDATES = 0;


-- Eliminar registros en la tabla proveedores_telas
DELETE FROM proveedores_telas WHERE factura;

-- DELETE FROM proveedores_telas WHERE factura = 'valor'; es la forma mas segura;



-- Comentada la sentencia rollback para evitar la eliminación permanente
-- ROLLBACK;

-- Comentada la sentencia commit para evitar confirmar la eliminación
-- COMMIT;

-- En caso de que no haya registros para eliminar, se realizara una inserción
-- INSERT INTO proveedores_telas (fecha, factura, empresa, direccion, id_telas, colores, precio_unidad, cantidad, total)

-- De ejemplo:
-- VALUES (curdate(), 456, 'empresa1', 'direccion1' , '125', 'color1', 10.00 , 10.00 , 100.00);




-- Segunda Tabla:
-- Iniciar una transacción
START TRANSACTION;

-- Insertar registros en la tabla proveedores_avios
INSERT INTO proveedores_avios (fecha, factura, empresa, direccion, tipo_avio, precio_unidad, cantidad, total)
VALUES
(CURDATE(), 400, 'empresaavio1', 'direccionavio1', 'tipoavio1', 10.00, 15, 150.00),
(CURDATE(), 401, 'empresaavio2', 'direccionavio2', 'tipoavio2', 10.00, 12, 120.00),
(CURDATE(), 402, 'empresaavio3', 'direccionavio3', 'tipoavio3', 10.00, 18, 180.00),
(CURDATE(), 403, 'empresaavio4', 'direccionavio4', 'tipoavio4', 10.00, 22, 220.00);

-- Agregar un savepoint después de la inserción del registro #4
SAVEPOINT sp_after_insert4;

-- Insertar registros adicionales en la tabla Proveedores_Avios
INSERT INTO proveedores_avios (fecha, factura, empresa, direccion, tipo_avio, precio_unidad, cantidad, total)
VALUES 
(CURDATE(), 404, 'empresaavio5', 'direccionavio5', 'tipoavio5', 10.00, 9, 90.00),
(CURDATE(), 405, 'empresaavio6', 'direccionavio6', 'tipoavio6', 10.00, 16, 160.00),
(CURDATE(), 406, 'empresaavio7', 'direccionavio7', 'tipoavio7', 10.00, 25, 250.00),
(CURDATE(), 407, 'empresaavio8', 'direccionavio8', 'tipoavio8', 10.00, 14, 140.00);
    
-- Agregar un savepoint después de la inserción del registro #8
SAVEPOINT sp_after_insert8;

-- Comentar la sentencia para eliminar el savepoint después de los primeros 4 registros
-- RELEASE SAVEPOINT sp_after_insert4;

-- Comentar la sentencia Rollback para evitar la eliminación permanente
-- ROLLBACK;

-- Comentar la sentencia Commit para evitar confirmar la inserción
-- COMMIT;