DELIMITER //
	-- ordena la tabla de forma ascendete o descendente por algun parametro
CREATE PROCEDURE OrdenarTablaTela(IN campo_orden VARCHAR(50), IN orden VARCHAR(5))
BEGIN
    SET @sql = CONCAT('SELECT * FROM proveedores_telas ORDER BY ', campo_orden, ' ', orden);
    PREPARE stmt FROM @sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END;
//

DELIMITER ;


CALL OrdenarTablaTela('precio_unidad', 'DESC');

DELIMITER //

CREATE PROCEDURE InsertarEliminarRegistroTela(IN accion VARCHAR(10), IN id_tela VARCHAR(20), IN empresa VARCHAR(20), IN direccion VARCHAR(20), IN factura INT, IN color VARCHAR(20), IN cantidad DECIMAL(10,2), IN precio_unidad DECIMAL(10,2), IN total DECIMAL(10,2))
BEGIN
    IF accion = 'INSERT' THEN
        -- agrega un nuevo registro en proveedores_tela
        INSERT INTO proveedores_telas (fecha, empresa, direccion, factura, id_tela, color, cantidad, precio_unidad, total)
        VALUES (NOW(), empresa, direccion, factura, id_tela, color, cantidad, precio_unidad, total);
    ELSEIF accion = 'DELETE' THEN
        -- elimina el registro en proveedores_tela con el id_tela
        DELETE FROM proveedores_telas WHERE id_tela = id_tela;
    ELSE
        SELECT 'Acción no válida';
    END IF;
END;
//

DELIMITER ;


-- ejemplo,CALL InsertarEliminarRegistroTela('INSERT', 'ABC123', 'Mi Empresa', 'Mi Dirección', 123, 'Azul', 10.5, 25.0, 250.0);
-- ejemplo, CALL InsertarEliminarRegistroTela('DELETE', 'ABC123', NULL, NULL, NULL, NULL, NULL, NULL, NULL);