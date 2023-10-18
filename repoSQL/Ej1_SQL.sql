DROP DATABASE IF EXISTS `java_bcn_5`;
CREATE DATABASE `java_bcn_5`;
USE `java_bcn_5`;

CREATE TABLE java_bcn_5.prueba (
	idPrueba INT UNSIGNED PRIMARY KEY  AUTO_INCREMENT,
	nombre LONGTEXT,
	fecha DATE
);
-- Un número entero lo definiría con INT
-- Un decimal lo definiría con DOUBLE

-- EJERCICIO 2
CREATE TABLE java_bcn_5.genre (
	idGenre INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	genre VARCHAR(255)
);

CREATE TABLE java_bcn_5.album (
	idAlbum INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	albumName VARCHAR(255),
    dateReleased DATETIME
);

CREATE TABLE java_bcn_5.artist (
	artistId INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	artistName VARCHAR(255)
);

-- EJERCICIO 3
INSERT INTO java_bcn_5.genre VALUES (NULL, "pop");
INSERT INTO java_bcn_5.genre VALUES (NULL, "flamenco");
INSERT INTO java_bcn_5.genre VALUES (NULL,"rap");
INSERT INTO java_bcn_5.genre VALUES (NULL,"electrónica");
INSERT INTO java_bcn_5.genre VALUES (NULL,"indie");
INSERT INTO java_bcn_5.genre VALUES (NULL,"clásica");
INSERT INTO java_bcn_5.genre VALUES (NULL,"rock");
INSERT INTO java_bcn_5.genre VALUES (NULL,"electrolatino");
INSERT INTO java_bcn_5.genre VALUES (NULL,"latina");
INSERT INTO java_bcn_5.genre VALUES (NULL,"alternativa");

INSERT INTO java_bcn_5.artist VALUES (NULL,"Rosalia");
INSERT INTO java_bcn_5.artist VALUES (NULL,"Ed Sheeran");
INSERT INTO java_bcn_5.artist VALUES (NULL,"Dua Lipa");
INSERT INTO java_bcn_5.artist VALUES (NULL,"Lola Índigo");
INSERT INTO java_bcn_5.artist VALUES (NULL,"Aitana");
INSERT INTO java_bcn_5.artist VALUES (NULL,"Beret");
INSERT INTO java_bcn_5.artist VALUES (NULL,"Estopa");
INSERT INTO java_bcn_5.artist VALUES (NULL,"Melendi");
INSERT INTO java_bcn_5.artist VALUES (NULL,"Malú");
INSERT INTO java_bcn_5.artist VALUES (NULL,"Sebastián Yatra");

INSERT INTO java_bcn_5.album VALUES (NULL,"La historia", "2020-01-01");
INSERT INTO java_bcn_5.album VALUES (NULL,"La flor", "2020-01-01");
INSERT INTO java_bcn_5.album VALUES (NULL,"La escalera", "2020-01-01");
INSERT INTO java_bcn_5.album VALUES (NULL,"La botella vacía", "2020-01-01");
INSERT INTO java_bcn_5.album VALUES (NULL,"La mesa verde", "2020-01-01");
INSERT INTO java_bcn_5.album VALUES (NULL,"La luz", "2020-01-01");
INSERT INTO java_bcn_5.album VALUES (NULL,"La pantalla", "2020-01-01");
INSERT INTO java_bcn_5.album VALUES (NULL,"La silla marrón", "2020-01-01");
INSERT INTO java_bcn_5.album VALUES (NULL,"La puerta roja", "2020-01-01");
INSERT INTO java_bcn_5.album VALUES (NULL,"La pared", "2020-01-01");

SELECT * FROM album;
SELECT * FROM artist;
SELECT * FROM genre;
