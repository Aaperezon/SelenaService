DROP DATABASE IF EXISTS Selena;
CREATE DATABASE Selena;
USE Selena;

DROP TABLE IF EXISTS Animal;
CREATE TABLE Animal(
	id INT Primary key  AUTO_INCREMENT,
    reino VARCHAR(255) NOT NULL,
    filo VARCHAR(255) NOT NULL,
    clase VARCHAR(255) NOT NULL,
    orden VARCHAR(255) NOT NULL,
    familia VARCHAR(255) NOT NULL,
    genero VARCHAR(255) NOT NULL,
    especie VARCHAR(255) NOT NULL,
    nombreComunESP VARCHAR(255) NOT NULL,
    nombreComunING VARCHAR(255) NOT NULL,
    sexo VARCHAR(255) NOT NULL,
    categoriaDeEdad VARCHAR(255) NOT NULL,
    numeroDeIndividuos INT NOT NULL,
	identificadoPor VARCHAR(255) DEFAULT "Selena"
);


#Animal : ClasificacionReino
drop procedure if exists ClasificacionReino;
DELIMITER //
CREATE PROCEDURE ClasificacionReino()
BEGIN
	SELECT DISTINCT Animal.reino FROM Animal;
END //
DELIMITER ;
#CALL ClasificacionReino();


#Animal : ClasificacionFilo
drop procedure if exists ClasificacionFilo;
DELIMITER //
CREATE PROCEDURE ClasificacionFilo()
BEGIN
	SELECT DISTINCT Animal.filo FROM Animal;
END //
DELIMITER ;
#CALL ClasificacionFilo();


#Animal : ClasificacionClase
drop procedure if exists ClasificacionClase;
DELIMITER //
CREATE PROCEDURE ClasificacionClase()
BEGIN
	SELECT DISTINCT Animal.clase FROM Animal;
END //
DELIMITER ;
#CALL ClasificacionClase();



#Animal : ClasificacionOrden
drop procedure if exists ClasificacionOrden;
DELIMITER //
CREATE PROCEDURE ClasificacionOrden()
BEGIN
	SELECT DISTINCT Animal.orden FROM Animal;
END //
DELIMITER ;
#CALL ClasificacionOrden();


#Animal : ClasificacionFamilia
drop procedure if exists ClasificacionFamilia;
DELIMITER //
CREATE PROCEDURE ClasificacionFamilia()
BEGIN
	SELECT DISTINCT Animal.familia FROM Animal;
END //
DELIMITER ;
#CALL ClasificacionFamilia();


#Animal : ClasificacionGenero
drop procedure if exists ClasificacionGenero;
DELIMITER //
CREATE PROCEDURE ClasificacionGenero()
BEGIN
	SELECT DISTINCT Animal.genero FROM Animal;
END //
DELIMITER ;
#CALL ClasificacionGenero();


#Animal : ClasificacionEspecie
drop procedure if exists ClasificacionEspecie;
DELIMITER //
CREATE PROCEDURE ClasificacionEspecie()
BEGIN
	SELECT DISTINCT Animal.especie FROM Animal;
END //
DELIMITER ;
#CALL ClasificacionEspecie();



#Animal : ClasificacionNombreComunESP
drop procedure if exists ClasificacionNombreComunESP;
DELIMITER //
CREATE PROCEDURE ClasificacionNombreComunESP()
BEGIN
	SELECT DISTINCT Animal.nombreComunESP FROM Animal;
END //
DELIMITER ;
#CALL ClasificacionNombreComunESP();



#Animal : ClasificacionNombreComunING
drop procedure if exists ClasificacionNombreComunING;
DELIMITER //
CREATE PROCEDURE ClasificacionNombreComunING()
BEGIN
	SELECT DISTINCT Animal.nombreComunING FROM Animal;
END //
DELIMITER ;
#CALL ClasificacionNombreComunING();



#Animal : ClasificacionSexo
drop procedure if exists ClasificacionSexo;
DELIMITER //
CREATE PROCEDURE ClasificacionSexo()
BEGIN
	SELECT DISTINCT Animal.sexo FROM Animal;
END //
DELIMITER ;
#CALL ClasificacionSexo();


#Animal : ClasificacionCategoriaDeEdad
drop procedure if exists ClasificacionCategoriaDeEdad;
DELIMITER //
CREATE PROCEDURE ClasificacionCategoriaDeEdad()
BEGIN
	SELECT DISTINCT Animal.categoriaDeEdad FROM Animal;
END //
DELIMITER ;
#CALL ClasificacionCategoriaDeEdad();



#Animal : ClasificacionNumeroDeIndividuos
drop procedure if exists ClasificacionNumeroDeIndividuos;
DELIMITER //
CREATE PROCEDURE ClasificacionNumeroDeIndividuos()
BEGIN
	SELECT DISTINCT Animal.numeroDeIndividuos FROM Animal;
END //
DELIMITER ;
#CALL ClasificacionNumeroDeIndividuos();


#Animal : ClasificacionIdentificadoPor
drop procedure if exists ClasificacionIdentificadoPor;
DELIMITER //
CREATE PROCEDURE ClasificacionIdentificadoPor()
BEGIN
	SELECT DISTINCT Animal.identificadoPor FROM Animal;
END //
DELIMITER ;
#CALL ClasificacionIdentificadoPor();





INSERT INTO Animal (reino, filo, clase, orden, familia, genero, especie, nombreComunESP, nombreComunING, sexo, categoriaDeEdad, numeroDeIndividuos) VALUES
('Animalia','Chordata','Mammalia','Carnivora','Procoynidae','Procyon','Ursur_lotor','Mapache','racoon','macho','a',1),
('Animalia','Chordata','Mammalia','Carnivora','Procoynidae','Procyon','Ursur_lotor','Mapache','racoon','hembra','b',1),
('Animalia','Chordata','Mammalia','Carnivora','Felidae','Procyon','P.concolor','Puma concolor','Puma concolor','macho','a',1),
('Animalia','Chordata','Mammalia','Carnivora','Felidae','Procyon','P.concolor','Puma concolor','Puma concolor','hembra','a',1),
('Animalia','Chardata','Mamalia','Carnivora','Felidae','Panthera','Panthera onca','Jaguar','Jaguar','macho','a',2),
('Animalia','Chardata','Mamalia','Carnivora','Felidae','Panthera','Panthera onca','Jaguar','Jaguar','hembra','a',2),
('Animalia','Chordata','Mammalia','Carnivora','Felidae','Leopardus','Leopardus wiedii','Tigrillo','Margay','macho','b',2),
('Animalia','Chordata','Mammalia','Carnivora','Felidae','Leopardus','Leopardus wiedii','Tigrillo','Margay','hembra','a',1),
('Animalia','Chordata','Mammalia','Carnivora','Felidae','Leopardus','Leopardus pardalis','Ocelote','Ocelot','macho','a',1),
('Animalia','Chordata','Mammalia','Carnivora','Felidae','Leopardus','Leopardus pardalis','Ocelote','Ocelot','hembra','c',2);