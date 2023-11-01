-- deudores
CREATE VIEW deudores AS
SELECT
    t.id_cliente,
    SUM(CASE WHEN t.tipo_de_transaccion = 'debe' THEN -t.monto ELSE t.monto END) AS saldo
FROM
    transacciones t
GROUP BY
    t.id_cliente
HAVING SUM(CASE WHEN t.tipo_de_transaccion = 'debe' THEN -t.monto ELSE t.monto END) < 0;

select * from deudores;

-- precio minorista
CREATE VIEW precio_minorista AS
SELECT
    pm.fecha,
    pm.id_prenda,
    pm.precio_mayorista,
    (pm.precio_mayorista * 1.20) AS precio_minorista
FROM
    precio_mayorista pm;

select * from precio_minorista;

-- stock general
CREATE VIEW stockTotal AS
SELECT
    id_prenda,
    SUM(stock_unitario) AS stock_total
FROM
    stock
GROUP BY
    id_prenda;

select * from stockTotal;


CREATE VIEW resumen_saldo AS
SELECT
    t.id_cliente,
    SUM(CASE WHEN t.tipo_de_transaccion = 'debe' THEN -t.monto ELSE t.monto END) AS saldo,
    CASE WHEN SUM(CASE WHEN t.tipo_de_transaccion = 'debe' THEN -t.monto ELSE t.monto END) < 0 THEN 'debe' ELSE 'no debe' END AS estado
FROM
    transacciones t
GROUP BY
    t.id_cliente;
    
select * from resumen_saldo;
