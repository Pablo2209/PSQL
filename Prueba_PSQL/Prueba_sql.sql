
--BASE DE DATOS
CREATE DATABASE prueba_sql;


--Tabla clientes
CREATE TABLE cliente (
id SERIAL PRIMARY KEY,
nombre VARCHAR(255),
rut VARCHAR(255,
direccion VARCHAR (255)
);

--Tabla factura
CREATE TABLE factura(
numero_factura INT PRIMARY KEY,
cliente INT,
fecha DATE,
subtotal INT,
iva INT,
FOREIGN KEY (cliente) REFERENCES cliente(id)
);

--Tabla relacion factura_producto
CREATE TABLE factura_producto (
id SERIAL PRIMARY KEY,
id_factura INT,
id_producto INT,
cantidad INT,
FOREIGN KEY (id_factura) REFERENCES factura(numero_factura), 
FOREIGN KEY (id_producto) REFERENCES producto(id)
);

--Tabla producto
CREATE TABLE producto(
id INT PRIMARY KEY,
nombre VARCHAR (255),
descripcion VARCHAR (255),
valor INT
);

--Tabla relacion producto_categoria
CREATE TABLE producto_categoria(
id SERIAL PRIMARY KEY,
id_producto INT,
id_categoria INT,
FOREIGN KEY (id_producto) REFERENCES producto(id), 
FOREIGN KEY (id_categoria) REFERENCES categoria(id)
);

--Tabla categoria
CREATE TABLE categoria(
id SERIAL PRIMARY KEY,
nombre VARCHAR (255),
descripcion VARCHAR (255)
);



--Clientes
INSERT INTO cliente (nombre, rut, direccion)
VALUES ('Zlatan Ibrahimovic', '12345678-9', 'Arauco');
INSERT INTO cliente (nombre, rut, direccion)
VALUES ('Cristiano Ronaldo', '54678549-8', 'Curico');
INSERT INTO cliente (nombre, rut, direccion)
VALUES ('Leo Messi', '56498760-7', 'Teno');
INSERT INTO cliente (nombre, rut, direccion)
VALUES ('Ronaldo de assis Moreira', '76567876-8', 'Concepcion');
INSERT INTO cliente (nombre, rut, direccion)
VALUES ('Arturo Vidad', '187678956-8', 'Santiago');

--Productos
INSERT INTO producto (id ,nombre , descripcion, valor)
VALUES (1, 'Pelota', 'Balon de futbol', 10000);
INSERT INTO producto (id ,nombre , descripcion, valor)
VALUES (2, 'Canilleras', 'Canilleras de proteccion', 7000);
INSERT INTO producto (id ,nombre , descripcion, valor)
VALUES (3, 'Medias', 'Calcetines', 3000);
INSERT INTO producto (id ,nombre , descripcion, valor)
VALUES (4, "Guantes", 'Guantes para portero', 15000);
INSERT INTO producto (id ,nombre , descripcion, valor)
VALUES (5, 'Gel', 'Gel para el cabello', 2000);
INSERT INTO producto (id ,nombre , descripcion, valor)
VALUES (6, 'Zapatos', 'Zapatos de futbol', 50000);
INSERT INTO producto (id ,nombre , descripcion, valor)
VALUES (7, 'Camiseta', 'Camiseta seleccion Chilena', 45000);
INSERT INTO producto (id ,nombre , descripcion, valor)
VALUES (8, 'Gorra', 'Gorra deportiva', 28000);


--Categoria
INSERT INTO categoria (nombre, descripcion)
VALUES ('Portero' , 'Guantes, Gorra ');
INSERT INTO categoria (nombre, descripcion)
VALUES ('Defensa' , 'Canilleras, Medias');
INSERT INTO categoria (nombre, descripcion)
VALUES ('Medio_centro' , 'Pelota, Camiseta');
INSERT INTO categoria (nombre, descripcion)
VALUES ('Delantero' , 'Gel, Zapatos ');


--Facturas
INSERT INTO factura (numero_factura , cliente, subtotal, fecha)
VALUES (5000 ,1, 70000,'2020-11-01');
INSERT INTO factura (numero_factura , cliente, subtotal, fecha)
VALUES (5001 ,1, 150000,'2020-11-02');
INSERT INTO factura (numero_factura , cliente, subtotal, fecha)
VALUES (5002 ,2, 80000,'2020-11-03');
INSERT INTO factura (numero_factura , cliente, subtotal, fecha)
VALUES (5003 ,2, 100000,'2020-11-04');
INSERT INTO factura (numero_factura , cliente, subtotal, fecha)
VALUES (5004 ,2, 200000,'2020-11-05');
INSERT INTO factura (numero_factura , cliente, subtotal, fecha)
VALUES (5005 ,1, 500000,'2020-11-01');
INSERT INTO factura (numero_factura , cliente, subtotal, fecha)
VALUES (5006 ,4, 1000000,'2020-11-02');
INSERT INTO factura (numero_factura , cliente, subtotal, fecha)
VALUES (5007 ,4, 250000,'2020-11-03');
INSERT INTO factura (numero_factura , cliente, subtotal, fecha)
VALUES (5008 ,4, 300000,'2020-11-04');
INSERT INTO factura (numero_factura , cliente, subtotal, fecha)
VALUES (5009 ,4, 1500000,'2020-11-05');

--Valores factura_producto
INSERT INTO factura_producto(id_factura, id_producto, cantidad)
VALUES (5000,1,1);
INSERT INTO factura_producto(id_factura, id_producto, cantidad)
VALUES (5000,2,2);
INSERT INTO factura_producto(id_factura, id_producto, cantidad)
VALUES (5001,3,5);
INSERT INTO factura_producto(id_factura, id_producto, cantidad)
VALUES (5001,4,2);
INSERT INTO factura_producto(id_factura, id_producto, cantidad)
VALUES (5001,5,3);
INSERT INTO factura_producto(id_factura, id_producto, cantidad)
VALUES (5002,6,2);
INSERT INTO factura_producto(id_factura, id_producto, cantidad)
VALUES (5002,7,1);
INSERT INTO factura_producto(id_factura, id_producto, cantidad)
VALUES (5002,8,1);
INSERT INTO factura_producto(id_factura, id_producto, cantidad)
VALUES (5003,1,2);
INSERT INTO factura_producto(id_factura, id_producto, cantidad)
VALUES (5003,2,3);
INSERT INTO factura_producto(id_factura, id_producto, cantidad)
VALUES (5004,3,2);
INSERT INTO factura_producto(id_factura, id_producto, cantidad)
VALUES (5004,4,2);
INSERT INTO factura_producto(id_factura, id_producto, cantidad)
VALUES (5004,5,1);
INSERT INTO factura_producto(id_factura, id_producto, cantidad)
VALUES (5005,6,2);
INSERT INTO factura_producto(id_factura, id_producto, cantidad)
VALUES (5006,7,1);
INSERT INTO factura_producto(id_factura, id_producto, cantidad)
VALUES (5006,8,1);
INSERT INTO factura_producto(id_factura, id_producto, cantidad)
VALUES (5007,1,1);
INSERT INTO factura_producto(id_factura, id_producto, cantidad)
VALUES (5007,2,3);
INSERT INTO factura_producto(id_factura, id_producto, cantidad)
VALUES (5007,3,2);
INSERT INTO factura_producto(id_factura, id_producto, cantidad)
VALUES (5008,4,1);
INSERT INTO factura_producto(id_factura, id_producto, cantidad)
VALUES (5008,5,1);
INSERT INTO factura_producto(id_factura, id_producto, cantidad)
VALUES (5008,6,2);
INSERT INTO factura_producto(id_factura, id_producto, cantidad)
VALUES (5008,7,2);
INSERT INTO factura_producto(id_factura, id_producto, cantidad)
VALUES (5009,8,3);

--¿Que cliente realizó la compra mas cara?
SELECT nombre 
FROM factura 
INNER JOIN cliente ON factura.cliente = cliente.id ORDER BY subtotal;

--¿Que cliente pagó sobre 100 de monto?
SELECT DISTINCT nombre 
FROM factura 
INNER JOIN cliente ON factura.cliente = cliente.id WHERE subtotal > 100;

--¿Cuantos clientes han comprado el producto 6?
SELECT nombre 
FROM (SELECT DISTINCT cliente FROM (SELECT id_factura FROM factura_producto WHERE id_producto = 6)
AS x INNER JOIN factura ON factura.numero_factura = x.id_factura)
AS cli INNER JOIN cliente ON cliente.id = cli.cliente;