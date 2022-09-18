-- Eliminar la base de datos si existe
DROP DATABASE IF EXISTS ejercicio11;

-- Crear la base de datos
CREATE DATABASE ejercicio11 CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE ejercicio11;

-- Crear la tabla "Facultad"
CREATE TABLE facultad(
	codigo INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100)
);

-- Crear la tabla "Investigadores"
CREATE TABLE investigadores(
	dni VARCHAR(8) NOT NULL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    facultad INT UNSIGNED NOT NULL,
    
    -- Crear la relación
    CONSTRAINT FK_investigadores
		FOREIGN KEY(facultad) REFERENCES facultad(codigo)
);

-- Crear la tabla "equipos"
CREATE TABLE equipos(
	numSerie CHAR(4) NOT NULL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    facultad INT UNSIGNED NOT NULL,
    
    -- Crear la relación
    CONSTRAINT FK_equipos
		FOREIGN KEY(facultad) REFERENCES facultad(codigo)
);

-- Crear la tabla "reserva"
CREATE TABLE reserva(
	dni CHAR(8) NOT NULL,
    numSerie CHAR(8) NOT NULL,
    comienzo DATETIME NOT NULL,
	final DATETIME NOT NULL,
	
    -- Crear la relación
    PRIMARY KEY(dni, numSerie),
    CONSTRAINT FK_reserva
		FOREIGN KEY(dni) REFERENCES investigadores(dni),
        FOREIGN KEY(numSerie) REFERENCES equipos(numSerie)
);

-- Insertar datos en la tabla "facultad"
INSERT INTO facultad(nombre) VALUES('Facultad de medicina');
INSERT INTO facultad(nombre) VALUES('Facultad de derecho');
INSERT INTO facultad(nombre) VALUES('Facultad de ciéncias');
INSERT INTO facultad(nombre) VALUES('Facultad de química');
INSERT INTO facultad(nombre) VALUES('Facultad de información');
INSERT INTO facultad(nombre) VALUES('Facultad de ingenieria');
INSERT INTO facultad(nombre) VALUES('Facultad de psicológica');
INSERT INTO facultad(nombre) VALUES('Facultad de matemáticas');
INSERT INTO facultad(nombre) VALUES('Facultad de diseño');
INSERT INTO facultad(nombre) VALUES('Facultad de veterinaria');

-- Insertar datos en la tabla "investigadores"
INSERT INTO investigadores(dni, nombre, facultad) VALUES('3023432F', 'Inidiana Jess', 10);
INSERT INTO investigadores(dni, nombre, facultad) VALUES('5023013C', 'Peter Anderson', 4);
INSERT INTO investigadores(dni, nombre, facultad) VALUES('5232315H', 'Bob Parker', 1);
INSERT INTO investigadores(dni, nombre, facultad) VALUES('9281233O', 'Peter Burke', 8);
INSERT INTO investigadores(dni, nombre, facultad) VALUES('1242568A', 'John Wilson', 7);
INSERT INTO investigadores(dni, nombre, facultad) VALUES('9238123N', 'Carl Brown', 2);
INSERT INTO investigadores(dni, nombre, facultad) VALUES('6023123K', 'Will Wiliams', 5);
INSERT INTO investigadores(dni, nombre, facultad) VALUES('9238192L', 'Diana Davies', 9);
INSERT INTO investigadores(dni, nombre, facultad) VALUES('2912383P', 'Samuel Zen', 6);
INSERT INTO investigadores(dni, nombre, facultad) VALUES('4623537D', 'Victor Von Doom', 3);

-- Insertar datos en la tabla "equipos"
INSERT INTO equipos(numSerie, nombre, facultad) VALUES('000A', 'Salvavidas', 1);
INSERT INTO equipos(numSerie, nombre, facultad) VALUES('000B', 'Legal Force', 2);
INSERT INTO equipos(numSerie, nombre, facultad) VALUES('000C', 'Solución simple', 3);
INSERT INTO equipos(numSerie, nombre, facultad) VALUES('000D', 'Los Alquimistas', 4);
INSERT INTO equipos(numSerie, nombre, facultad) VALUES('000E', 'Guias', 5);
INSERT INTO equipos(numSerie, nombre, facultad) VALUES('000F', 'A6 Ingenieria', 6);
INSERT INTO equipos(numSerie, nombre, facultad) VALUES('000G', 'Equilibrio mental', 7);
INSERT INTO equipos(numSerie, nombre, facultad) VALUES('000H', 'Perfectamente calculado', 8);
INSERT INTO equipos(numSerie, nombre, facultad) VALUES('000I', 'Prodiseño', 9);
INSERT INTO equipos(numSerie, nombre, facultad) VALUES('000J', 'Zootropia', 10);

-- Insertar datos en la tabla "reserva"
INSERT INTO reserva(dni, numSerie, comienzo, final) VALUES('3023432F', '000J', '2022-09-18 12:45:00', '2022-10-12 19:30:00');
INSERT INTO reserva(dni, numSerie, comienzo, final) VALUES('9238192L', '000I', '2022-09-20 18:10:00', '2022-11-23 10:10:00');
INSERT INTO reserva(dni, numSerie, comienzo, final) VALUES('9281233O', '000H', '2022-09-19 08:35:00', '2022-10-01 11:30:00');
INSERT INTO reserva(dni, numSerie, comienzo, final) VALUES('1242568A', '000G', '2022-09-10 12:15:00', '2022-10-10 20:50:00');
INSERT INTO reserva(dni, numSerie, comienzo, final) VALUES('2912383P', '000F', '2022-09-01 19:00:00', '2022-10-20 21:35:00');
INSERT INTO reserva(dni, numSerie, comienzo, final) VALUES('6023123K', '000E', '2022-09-20 15:40:00', '2022-11-26 10:30:00');
INSERT INTO reserva(dni, numSerie, comienzo, final) VALUES('5023013C', '000D', '2022-09-29 12:00:00', '2022-11-13 17:00:00');
INSERT INTO reserva(dni, numSerie, comienzo, final) VALUES('4623537D', '000C', '2022-09-26 09:00:00', '2022-11-16 11:00:00');
INSERT INTO reserva(dni, numSerie, comienzo, final) VALUES('9238123N', '000B', '2022-09-11 11:00:00', '2022-10-19 12:00:00');
INSERT INTO reserva(dni, numSerie, comienzo, final) VALUES('5232315H', '000A', '2022-09-12 11:00:00', '2022-11-15 16:00:00');