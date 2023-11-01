insert into fecha (fecha) value (curdate());

INSERT INTO proveedores_telas (fecha,factura,empresa,direccion,id_telas,colores,precio_unidad,cantidad,total)
VALUES 
		(CURDATE(), 123,'empresa1','direccion1','075','color1',10.00,10.00,100.00),
        (CURDATE(), 124,'empresa2','direccion2','076','color2',10.00,12.00,120.00),
		(CURDATE(), 125, 'empresa3', 'direccion3', '077', 'color3', 10.00, 15, 150.00),
		(CURDATE(), 126, 'empresa4', 'direccion4', '078', 'color4', 10.00, 8, 80.00),
		(CURDATE(), 127, 'empresa5', 'direccion5', '079', 'color5', 10.00, 20, 200.00),
		(CURDATE(), 138, 'empresa6', 'direccion6', '090', 'color9', 10.00, 5, 50.00),
        (CURDATE(), 128, 'empresa6', 'direccion6', '080', 'color6', 10.00, 5, 50.00),
		(CURDATE(), 129, 'empresa7', 'direccion7', '081', 'color7', 10.00, 14, 140.00),
		(CURDATE(), 130, 'empresa8', 'direccion8', '082', 'color8', 10.00, 18, 180.00),
		(CURDATE(), 131, 'empresa9', 'direccion9', '083', 'color9', 10.00, 25, 250.00),
		(CURDATE(), 132, 'empresa10', 'direccion10', '084', 'color10', 10.00, 7, 70.00),
        (CURDATE(), 139, 'empresa10', 'direccion10', '091', 'color15', 10.00, 7, 70.00),
		(CURDATE(), 133, 'empresa11', 'direccion11', '085', 'color11', 10.00, 12, 120.00),
		(CURDATE(), 134, 'empresa12', 'direccion12', '086', 'color12', 10.00, 9, 90.00),
		(CURDATE(), 135, 'empresa13', 'direccion13', '087', 'color13', 10.00, 22, 220.00),
		(CURDATE(), 136, 'empresa14', 'direccion14', '088', 'color14', 10.00, 11, 110.00),
		(CURDATE(), 137, 'empresa15', 'direccion15', '089', 'color15', 10.00, 16, 160.00);
;

INSERT INTO proveedores_avios (fecha, factura, empresa, direccion, tipo_avio, precio_unidad, cantidad, total)
VALUES
(CURDATE(), 400, 'empresaavio1', 'direccionavio1', 'tipoavio1', 10.00, 15, 150.00),
(CURDATE(), 401, 'empresaavio2', 'direccionavio2', 'tipoavio2', 10.00, 12, 120.00),
(CURDATE(), 402, 'empresaavio3', 'direccionavio3', 'tipoavio3', 10.00, 18, 180.00),
(CURDATE(), 403, 'empresaavio4', 'direccionavio4', 'tipoavio4', 10.00, 22, 220.00),
(CURDATE(), 404, 'empresaavio5', 'direccionavio5', 'tipoavio5', 10.00, 9, 90.00),
(CURDATE(), 405, 'empresaavio6', 'direccionavio6', 'tipoavio6', 10.00, 16, 160.00),
(CURDATE(), 406, 'empresaavio7', 'direccionavio7', 'tipoavio7', 10.00, 25, 250.00),
(CURDATE(), 407, 'empresaavio8', 'direccionavio8', 'tipoavio8', 10.00, 14, 140.00),
(CURDATE(), 408, 'empresaavio9', 'direccionavio9', 'tipoavio9', 10.00, 11, 110.00),
(CURDATE(), 409, 'empresaavio10', 'direccionavio10', 'tipoavio10', 10.00, 8, 80.00),
(CURDATE(), 410, 'empresaavio11', 'direccionavio11', 'tipoavio11', 10.00, 19, 190.00),
(CURDATE(), 411, 'empresaavio12', 'direccionavio12', 'tipoavio12', 10.00, 20, 200.00),
(CURDATE(), 412, 'empresaavio13', 'direccionavio13', 'tipoavio13', 10.00, 21, 210.00),
(CURDATE(), 413, 'empresaavio14', 'direccionavio14', 'tipoavio14', 10.00, 13, 130.00),
(CURDATE(), 414, 'empresaavio15', 'direccionavio15', 'tipoavio15', 10.00, 17, 170.00)
;


INSERT INTO prendas (fecha, id_prenda)
VALUES
(CURDATE(), 'prenda1'),
(CURDATE(), 'prenda2'),
(CURDATE(), 'prenda3'),
(CURDATE(), 'prenda4'),
(CURDATE(), 'prenda5'),
(CURDATE(), 'prenda6'),
(CURDATE(), 'prenda7'),
(CURDATE(), 'prenda8'),
(CURDATE(), 'prenda9'),
(CURDATE(), 'prenda10'),
(CURDATE(), 'prenda11'),
(CURDATE(), 'prenda12'),
(CURDATE(), 'prenda13'),
(CURDATE(), 'prenda14'),
(CURDATE(), 'prenda15')
;

INSERT INTO producto_terminado (fecha, id_pedido, id_tela, color, precio_terminado, cantidad, total)
VALUES
(CURDATE(), 'pedido1', 'tela1', 'color1', 50.00, 10, 500.00),
(CURDATE(), 'pedido2', 'tela2', 'color2', 60.00, 12, 720.00),
(CURDATE(), 'pedido3', 'tela3', 'color3', 70.00, 15, 1050.00),
(CURDATE(), 'pedido4', 'tela4', 'color4', 80.00, 8, 640.00),
(CURDATE(), 'pedido5', 'tela5', 'color5', 90.00, 20, 1800.00),
(CURDATE(), 'pedido6', 'tela6', 'color6', 100.00, 5, 500.00),
(CURDATE(), 'pedido7', 'tela7', 'color7', 110.00, 14, 1540.00),
(CURDATE(), 'pedido8', 'tela8', 'color8', 120.00, 18, 2160.00),
(CURDATE(), 'pedido9', 'tela9', 'color9', 130.00, 25, 3250.00),
(CURDATE(), 'pedido10', 'tela10', 'color10', 140.00, 7, 980.00),
(CURDATE(), 'pedido11', 'tela11', 'color11', 150.00, 12, 1800.00),
(CURDATE(), 'pedido12', 'tela12', 'color12', 160.00, 9, 1440.00),
(CURDATE(), 'pedido13', 'tela13', 'color13', 170.00, 22, 3740.00),
(CURDATE(), 'pedido14', 'tela14', 'color14', 180.00, 11, 1980.00),
(CURDATE(), 'pedido15', 'tela15', 'color15', 190.00, 16, 3040.00)
;


INSERT INTO produccion (fecha, nombre_taller_corte, direccion, id_prenda, pedido_cliente, id_telas, color_tela, precio_unitario_confeccion, cantidad, total)
VALUES
(CURDATE(), 'TallerCorte1', 'Direccion1', 'prenda1', 'pedido1', '075', 'colorTela1', 50.00, 10, 500.00),
(CURDATE(), 'TallerCorte2', 'Direccion2', 'prenda2', 'pedido2', '076', 'colorTela2', 60.00, 12, 720.00),
(CURDATE(), 'TallerCorte3', 'Direccion3', 'prenda3', 'pedido3', '077', 'colorTela3', 70.00, 15, 1050.00),
(CURDATE(), 'TallerCorte4', 'Direccion4', 'prenda4', 'pedido4', '078', 'colorTela4', 80.00, 8, 640.00),
(CURDATE(), 'TallerCorte5', 'Direccion5', 'prenda5', 'pedido5', '079', 'colorTela5', 90.00, 20, 1800.00),
(CURDATE(), 'TallerCorte6', 'Direccion6', 'prenda6', 'pedido6', '080', 'colorTela6', 100.00, 5, 500.00),
(CURDATE(), 'TallerCorte7', 'Direccion7', 'prenda7', 'pedido7', '081', 'colorTela7', 110.00, 14, 1540.00),
(CURDATE(), 'TallerCorte8', 'Direccion8', 'prenda8', 'pedido8', '082', 'colorTela8', 120.00, 18, 2160.00),
(CURDATE(), 'TallerCorte9', 'Direccion9', 'prenda9', 'pedido9', '083', 'colorTela9', 130.00, 25, 3250.00),
(CURDATE(), 'TallerCorte10', 'Direccion10', 'prenda10', 'pedido10', '084', 'colorTela10', 140.00, 7, 980.00),
(CURDATE(), 'TallerCorte11', 'Direccion11', 'prenda11', 'pedido11', '085', 'colorTela11', 150.00, 12, 1800.00),
(CURDATE(), 'TallerCorte12', 'Direccion12', 'prenda12', 'pedido12', '086', 'colorTela12', 160.00, 9, 1440.00),
(CURDATE(), 'TallerCorte13', 'Direccion13', 'prenda13', 'pedido13', '087', 'colorTela13', 170.00, 22, 3740.00),
(CURDATE(), 'TallerCorte14', 'Direccion14', 'prenda14', 'pedido14', '088', 'colorTela14', 180.00, 11, 1980.00),
(CURDATE(), 'TallerCorte15', 'Direccion15', 'prenda15', 'pedido15', '089', 'colorTela15', 190.00, 16, 3040.00)
;


INSERT INTO tipo_prenda (tipo_prenda, id_prenda) 
VALUES
('TipoPrenda1', 'prenda1'),
('TipoPrenda2', 'prenda2'),
('TipoPrenda3', 'prenda3'),
('TipoPrenda4', 'prenda4'),
('TipoPrenda5', 'prenda5'),
('TipoPrenda6', 'prenda6'),
('TipoPrenda7', 'prenda7'),
('TipoPrenda8', 'prenda8'),
('TipoPrenda9', 'prenda9'),
('TipoPrenda10', 'prenda10'),
('TipoPrenda11', 'prenda11'),
('TipoPrenda12', 'prenda12'),
('TipoPrenda13', 'prenda13'),
('TipoPrenda14', 'prenda14'),
('TipoPrenda15', 'prenda15')
;


INSERT INTO stock (fecha, id_prenda, color, stock_unitario)
VALUES
    (CURDATE(), 'prenda1', 'rojo', 100),
    (CURDATE(), 'prenda2', 'azul', 50),
    (CURDATE(), 'prenda3', 'verde', 75),
    (CURDATE(), 'prenda1', 'amarillo', 90),
    (CURDATE(), 'prenda2', 'rojo', 120),
    (CURDATE(), 'prenda3', 'azul', 60),
    (CURDATE(), 'prenda1', 'verde', 85),
    (CURDATE(), 'prenda2', 'amarillo', 110),
    (CURDATE(), 'prenda3', 'rojo', 130),
    (CURDATE(), 'prenda1', 'azul', 70),
    (CURDATE(), 'prenda2', 'verde', 95),
    (CURDATE(), 'prenda11', 'amarillo', 90),
    (CURDATE(), 'prenda13', 'rojo', 120),
    (CURDATE(), 'prenda15', 'azul', 60),
    (CURDATE(), 'prenda5', 'verde', 85),
    (CURDATE(), 'prenda2', 'amarillo', 110),
    (CURDATE(), 'prenda4', 'rojo', 130),
    (CURDATE(), 'prenda7', 'azul', 70),
    (CURDATE(), 'prenda9', 'verde', 95),
    (CURDATE(), 'prenda3', 'amarillo', 105),
    (CURDATE(), 'prenda1', 'rojo', 80),
    (CURDATE(), 'prenda2', 'azul', 100),
    (CURDATE(), 'prenda3', 'verde', 125);

-- inserte datos nuevos para ver si una vista creada funcionaba correctamente
INSERT INTO stock (fecha, id_prenda, color, stock_unitario)
values
	(CURDATE(), 'prenda1', 'rojo', 75),
    (CURDATE(), 'prenda2', 'azul', 25),
    (CURDATE(), 'prenda3', 'verde', 50);



INSERT INTO precio_mayorista (fecha, precio_mayorista, id_prenda) 
VALUES
(CURDATE(), 50.00, 'prenda1'),
(CURDATE(), 60.00, 'prenda2'),
(CURDATE(), 70.00, 'prenda3'),
(CURDATE(), 80.00, 'prenda4'),
(CURDATE(), 90.00, 'prenda5'),
(CURDATE(), 100.00, 'prenda6'),
(CURDATE(), 110.00, 'prenda7'),
(CURDATE(), 120.00, 'prenda8'),
(CURDATE(), 130.00, 'prenda9'),
(CURDATE(), 140.00, 'prenda10'),
(CURDATE(), 150.00, 'prenda11'),
(CURDATE(), 160.00, 'prenda12'),
(CURDATE(), 170.00, 'prenda13'),
(CURDATE(), 180.00, 'prenda14'),
(CURDATE(), 190.00, 'prenda15')
;

INSERT INTO clientes (fecha_inscripto, id_cliente, nombre, apellido, dni, geolocalizacion, celular, nombre_transporte)
VALUES
    (CURDATE(), 'cliente1', 'Nombre1', 'Apellido1', 'DNI1', 'Geoloc1', 'Celular1', 'Transporte1'),
    (CURDATE(), 'cliente2', 'Nombre2', 'Apellido2', 'DNI2', 'Geoloc2', 'Celular2', 'Transporte2'),
    (CURDATE(), 'cliente3', 'Nombre3', 'Apellido3', 'DNI3', 'Geoloc3', NULL, 'Transporte3'),
    (CURDATE(), 'cliente4', 'Nombre4', 'Apellido4', 'DNI4', 'Geoloc4', 'Celular4', 'Transporte4'),
    (CURDATE(), 'cliente5', 'Nombre5', 'Apellido5', 'DNI5', 'Geoloc5', 'Celular5', 'Transporte5'),
    (CURDATE(), 'cliente6', 'Nombre6', 'Apellido6', 'DNI6', 'Geoloc6', 'Celular6', 'Transporte5'),
    (CURDATE(), 'cliente7', 'Nombre7', 'Apellido7', 'DNI7', 'Geoloc7', 'Celular7', 'Transporte5'),
    (CURDATE(), 'cliente8', 'Nombre8', 'Apellido8', 'DNI8', 'Geoloc8', 'Celular8', 'Transporte8'),
    (CURDATE(), 'cliente9', 'Nombre9', 'Apellido9', 'DNI9', 'Geoloc9', NULL, 'Transporte9'),
    (CURDATE(), 'cliente10', 'Nombre10', 'Apellido10', 'DNI10', 'Geoloc10', 'Celular10', 'Transporte10'),
    (CURDATE(), 'cliente11', 'Nombre11', 'Apellido11', 'DNI11', 'Geoloc11', 'Celular11', 'Transporte13'),
    (CURDATE(), 'cliente12', 'Nombre12', 'Apellido12', 'DNI12', 'Geoloc12', 'Celular12', 'Transporte13'),
    (CURDATE(), 'cliente13', 'Nombre13', 'Apellido13', 'DNI13', 'Geoloc13', 'Celular13', 'Transporte13'),
    (CURDATE(), 'cliente14', 'Nombre14', 'Apellido14', 'DNI14', 'Geoloc14', 'Celular14', 'Transporte14'),
    (CURDATE(), 'cliente15', 'Nombre15', 'Apellido15', 'DNI15', 'Geoloc15', NULL, 'Transporte15');
    
    INSERT INTO transacciones (fecha_facturacion, numero_factura, id_cliente, monto, tipo_de_transaccion)
VALUES
    (CURDATE(), 'factura1', 'cliente1', 1500.00, 'debe'),
    (CURDATE(), 'factura2', 'cliente2', 5750.00, 'abono'),
    (CURDATE(), 'factura3', 'cliente3', 7500.00, 'debe'),
    (CURDATE(), 'factura4', 'cliente4', 4500.00, 'abono'),
    (CURDATE(), 'factura5', 'cliente5', 1500.00, 'debe'),
    (CURDATE(), 'factura6', 'cliente6', 5000.00, 'abono'),
    (CURDATE(), 'factura7', 'cliente7', 7500.00, 'debe'),
    (CURDATE(), 'factura8', 'cliente8', 10000.00, 'abono'),
    (CURDATE(), 'factura9', 'cliente9', 4000.00, 'debe'),
    (CURDATE(), 'factura10', 'cliente10', 5000.00, 'abono'),
    (CURDATE(), 'factura11', 'cliente11', 1100.00, 'debe'),
    (CURDATE(), 'factura12', 'cliente12', 1200.00, 'abono'),
    (CURDATE(), 'factura13', 'cliente13', 1300.00, 'debe'),
    (CURDATE(), 'factura14', 'cliente14', 1400.00, 'abono'),
    (CURDATE(), 'factura15', 'cliente15', 1500.00, 'debe'),
    (CURDATE(), 'factura16', 'cliente1', 2500.00, 'debe'),
    (CURDATE(), 'factura17', 'cliente2', 3500.00, 'abono'),
    (CURDATE(), 'factura18', 'cliente3', 4500.00, 'debe'),
    (CURDATE(), 'factura19', 'cliente4', 5500.00, 'abono'),
    (CURDATE(), 'factura20', 'cliente5', 6500.00, 'debe'),
    (CURDATE(), 'factura21', 'cliente6', 7500.00, 'abono'),
    (CURDATE(), 'factura22', 'cliente7', 8500.00, 'debe'),
    (CURDATE(), 'factura23', 'cliente8', 9500.00, 'abono'),
    (CURDATE(), 'factura24', 'cliente9', 10500.00, 'debe'),
    (CURDATE(), 'factura25', 'cliente10', 11500.00, 'abono'),
    (CURDATE(), 'factura26', 'cliente11', 12500.00, 'debe'),
    (CURDATE(), 'factura27', 'cliente12', 13500.00, 'abono'),
    (CURDATE(), 'factura28', 'cliente13', 14500.00, 'debe'),
    (CURDATE(), 'factura29', 'cliente14', 15500.00, 'abono'),
    (CURDATE(), 'factura30', 'cliente15', 16500.00, 'debe');

