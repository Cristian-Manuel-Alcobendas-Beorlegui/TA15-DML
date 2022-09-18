-- Eliminar la base de datos si existe
DROP DATABASE IF EXISTS ejercicio8;

-- Crear la base de datos
CREATE DATABASE ejercicio8 CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE ejercicio8;

-- Crear la tabla "piezas"
CREATE TABLE piezas(
	codigo INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

-- Crear la tabla "proveedores"
CREATE TABLE proveedores(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

-- Crear la tabla "suministra"
CREATE TABLE suministra(
	codigoPieza INT UNSIGNED NOT NULL,
    idProveedor INT UNSIGNED NOT NULL,
    precio DECIMAL(5,2) NOT NULL,
    
    -- Crear la relación
    PRIMARY KEY(codigoPieza, idProveedor),
	CONSTRAINT FK_suministra
		FOREIGN KEY(codigoPieza) REFERENCES piezas(codigo),
        FOREIGN KEY(idProveedor) REFERENCES proveedores(id)
);

-- Insertar datos en la tabla "piezas"
INSERT INTO piezas(nombre) VALUES('CPU');
INSERT INTO piezas(nombre) VALUES('Memoria RAM');
INSERT INTO piezas(nombre) VALUES('Tarjeta gráfica');
INSERT INTO piezas(nombre) VALUES('Targeta de red');
INSERT INTO piezas(nombre) VALUES('Cable sata');
INSERT INTO piezas(nombre) VALUES('Ventilador');
INSERT INTO piezas(nombre) VALUES('Placa base');
INSERT INTO piezas(nombre) VALUES('Torre');
INSERT INTO piezas(nombre) VALUES('Disco duro mecánico (HDD)');
INSERT INTO piezas(nombre) VALUES('Disco duro sólido (SSD)');

-- Insertar datos en la tabla "proveedores"
INSERT INTO proveedores(nombre) VALUES('Amazon');
INSERT INTO proveedores(nombre) VALUES('PC Componentes');
INSERT INTO proveedores(nombre) VALUES('Dominio virtual');
INSERT INTO proveedores(nombre) VALUES('PC Box');
INSERT INTO proveedores(nombre) VALUES('BEEP');
INSERT INTO proveedores(nombre) VALUES('FNAC');
INSERT INTO proveedores(nombre) VALUES('COOLMOD');
INSERT INTO proveedores(nombre) VALUES('NeoByte');
INSERT INTO proveedores(nombre) VALUES('Dynos');
INSERT INTO proveedores(nombre) VALUES('Think');

-- Insertar datos en la tabla "suministra"
INSERT INTO suministra(codigoPieza, idProveedor, precio) VALUES(1, 10, 199.99);
INSERT INTO suministra(codigoPieza, idProveedor, precio) VALUES(2, 2, 400);
INSERT INTO suministra(codigoPieza, idProveedor, precio) VALUES(3, 4, 229.99);
INSERT INTO suministra(codigoPieza, idProveedor, precio) VALUES(4, 1, 499.99);
INSERT INTO suministra(codigoPieza, idProveedor, precio) VALUES(5, 3, 160);
INSERT INTO suministra(codigoPieza, idProveedor, precio) VALUES(6, 6, 123);
INSERT INTO suministra(codigoPieza, idProveedor, precio) VALUES(7, 5, 190.50);
INSERT INTO suministra(codigoPieza, idProveedor, precio) VALUES(8, 8, 200);
INSERT INTO suministra(codigoPieza, idProveedor, precio) VALUES(9, 9, 300);
INSERT INTO suministra(codigoPieza, idProveedor, precio) VALUES(10, 7, 200);