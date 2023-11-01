DELIMITER //
CREATE FUNCTION ObtenerNombreCliente(cliente_id VARCHAR(20)) RETURNS VARCHAR(50) DETERMINISTIC
BEGIN
    DECLARE cliente_nombre VARCHAR(50);
    SELECT CONCAT(nombre, ' ', apellido, ' ',dni) INTO cliente_nombre
    FROM clientes
    WHERE id_cliente = cliente_id;
    RETURN cliente_nombre;
END //
DELIMITER ;

SELECT ObtenerNombreCliente() AS NombreCompletoCliente;
-- 'id_cliente' entre ()

DELIMITER //
CREATE FUNCTION CalcularSaldoCliente(cliente_id VARCHAR(20)) RETURNS DECIMAL(10, 2) DETERMINISTIC
BEGIN
    DECLARE saldo DECIMAL(10, 2);
    SELECT SUM(CASE WHEN tipo_de_transaccion = 'debe' THEN -monto ELSE monto END) INTO saldo
    FROM transacciones
    WHERE id_cliente = cliente_id;
    RETURN saldo;
END //
DELIMITER ;

select CalcularSaldoCliente() AS monto;
-- entre parentesis va el 'id_cliente'