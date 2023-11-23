DROP DATABASE IF EXISTS integrador_cac;
CREATE DATABASE integrador_cac CHARACTER SET utf8mb4;
USE integrador_cac;

CREATE TABLE oradores(
	`ID_ORADOR` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `NOMBRE` varchar(40) NOT NULL,
    `APELLIDO` varchar(40) NOT NULL,
    `EMAIL` varchar(40) NOT NULL,
    `TEMA` varchar(40) NOT NULL,
    `FECHA_ALTA` TIMESTAMP NOT NULL
);

INSERT INTO oradores(NOMBRE, APELLIDO, EMAIL, TEMA, FECHA_ALTA) VALUES("Juan", "Perez", "juanpe@gmail.com", "AI", "2023-11-08");
INSERT INTO oradores(NOMBRE, APELLIDO, EMAIL, TEMA, FECHA_ALTA) VALUES("Manuel", "Garcia", "manug@hotmail.com", "Updating Softwares", "2023-11-08");
INSERT INTO oradores(NOMBRE, APELLIDO, EMAIL, TEMA, FECHA_ALTA) VALUES("Roberto", "Lopez", "roro-lo@gmail.com", "JAVA Software", "2023-11-08");
INSERT INTO oradores(NOMBRE, APELLIDO, EMAIL, TEMA, FECHA_ALTA) VALUES("Lujan", "Armani", "lujanarmani@hotmail.com", "Data-Science", "2023-11-08");
INSERT INTO oradores(NOMBRE, APELLIDO, EMAIL, TEMA, FECHA_ALTA) VALUES("Maria", "Gutierrez", "maguti@live.com", "Cyber-Security", "2023-11-08");
INSERT INTO oradores(NOMBRE, APELLIDO, EMAIL, TEMA, FECHA_ALTA) VALUES("Ruperta", "Gonzales", "rupergon@gmail.com", "AI", "2023-11-08");
INSERT INTO oradores(NOMBRE, APELLIDO, EMAIL, TEMA, FECHA_ALTA) VALUES("Maximiliano", "Contreras", "maxcontre@gmail.com", "FrontEnd-Dev", "2023-11-08");
INSERT INTO oradores(NOMBRE, APELLIDO, EMAIL, TEMA, FECHA_ALTA) VALUES("Luca", "Rearte", "luca-rearte@hotmail.com", "BackEnd-Dev", "2023-11-08");
INSERT INTO oradores(NOMBRE, APELLIDO, EMAIL, TEMA, FECHA_ALTA) VALUES("Nahuel", "Siravegna", "siranahue@gmail.com", "Intro-the-Devs", "2023-11-08");
INSERT INTO oradores(NOMBRE, APELLIDO, EMAIL, TEMA, FECHA_ALTA) VALUES("Federico", "Lombarte", "fedelom@live.com", "Blockchain", "2023-11-08");

SELECT * FROM oradores;