DELIMITER //
CREATE TRIGGER log_after_insert_proveedores_tela
AFTER INSERT ON proveedores_telas
FOR EACH ROW
BEGIN
    INSERT INTO log_proveedores_tela (usuario, fecha, hora, accion, descripcion)
    VALUES (USER(), CURDATE(), CURTIME(), 'INSERT', 'Se ha insertado un nuevo registro en proveedores_telas');
END;
//
DELIMITER ;

DELIMITER //
CREATE TRIGGER log_before_delete_produccion
BEFORE DELETE ON produccion
FOR EACH ROW
BEGIN
    INSERT INTO log_produccion_corte (usuario, fecha, hora, accion, descripcion)
    VALUES (USER(), CURDATE(), CURTIME(), 'DELETE', CONCAT('Se eliminará el registro con Fecha: ', OLD.fecha, ', Nombre_Taller_Corte: ', OLD.nombre_taller_corte, ', Id_Prenda: ', OLD.id_prenda));
END;
//
DELIMITER ;

SHOW TRIGGERS;

