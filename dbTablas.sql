CREATE DATABASE clauvana;

USE clauvana;

CREATE TABLE fecha (
    fecha date PRIMARY KEY
);

CREATE TABLE proveedores_telas (
    fecha date,
    factura int,
    empresa varchar(20),
    direccion varchar(20),
    id_telas varchar(20) PRIMARY KEY,
    colores varchar(20),
    precio_unidad decimal(10,2),
    cantidad decimal(10,2),
    total decimal(10,2),
    FOREIGN KEY (fecha) REFERENCES fecha(fecha)
);

CREATE TABLE proveedores_avios (
    fecha date,
    factura int,
    empresa varchar(20),
    direccion varchar(20),
    tipo_avio varchar(20) PRIMARY KEY,
    precio_unidad decimal(10,2),
    cantidad int,
    total decimal(10,2),
    FOREIGN KEY (fecha) REFERENCES fecha(fecha)
);

CREATE TABLE producto_terminado (
    fecha date,
    id_pedido varchar(20) PRIMARY KEY,
    id_tela varchar(20),
    color varchar(20),
    precio_terminado decimal(10,2),
    cantidad int,
    total decimal(10,2),
    FOREIGN KEY (fecha) REFERENCES fecha(fecha)
);

CREATE TABLE prendas (
    fecha date,
    id_prenda varchar(20) PRIMARY KEY,
    FOREIGN KEY (fecha) REFERENCES fecha(fecha)
);

CREATE TABLE stock (
    id_registro INT AUTO_INCREMENT PRIMARY KEY,
	fecha DATE,
    id_prenda VARCHAR(20),
	color varchar(20),
    stock_unitario INT,
    FOREIGN KEY (id_prenda) REFERENCES prendas(id_prenda)
);


CREATE TABLE produccion (
    fecha date,
    nombre_taller_corte varchar(20) PRIMARY KEY,
    direccion varchar(20),
    id_prenda varchar(20),
    pedido_cliente varchar(20),
    id_telas varchar(20),
    color_tela varchar(20),
    precio_unitario_confeccion decimal(10,2),
    cantidad int,
    total decimal(10,2),
    FOREIGN KEY (fecha) REFERENCES fecha(fecha),
    FOREIGN KEY (id_prenda) REFERENCES prendas(id_prenda),
    FOREIGN KEY (id_telas) REFERENCES proveedores_telas(id_telas),
    FOREIGN KEY (pedido_cliente) REFERENCES producto_terminado(id_pedido)
);

CREATE TABLE precio_mayorista (
    registro_precio int AUTO_INCREMENT PRIMARY KEY,
    fecha date,
    precio_mayorista decimal(10,2),
    id_prenda varchar(20),
    FOREIGN KEY (fecha) REFERENCES fecha(fecha),
    FOREIGN KEY (id_prenda) REFERENCES prendas(id_prenda)
);


CREATE TABLE tipo_prenda (
    tipo_prenda varchar(20) PRIMARY KEY,
    id_prenda varchar(20),
    FOREIGN KEY (id_prenda) REFERENCES prendas(id_prenda)
);

CREATE TABLE clientes (
    fecha_inscripto date,
    id_cliente varchar(20) PRIMARY KEY,
    nombre varchar(20),
    apellido varchar(20),
    dni varchar(20),
    geolocalizacion varchar(20),
    celular varchar(20) null,
    nombre_transporte varchar(20),
    FOREIGN KEY (fecha_inscripto) REFERENCES fecha(fecha)
);

CREATE TABLE transacciones (
    fecha_facturacion date,
    numero_factura varchar(20) PRIMARY KEY,
    id_cliente varchar(20),
    monto DECIMAL(10, 2),
    tipo_de_transaccion ENUM('debe', 'abono'),
    FOREIGN KEY (fecha_facturacion) REFERENCES fecha(fecha),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);








