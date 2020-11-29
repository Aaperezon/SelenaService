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

DROP TABLE IF EXISTS Ejemplar;
CREATE TABLE Ejemplar(
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





INSERT INTO Ejemplar (reino, filo, clase, orden, familia, genero, especie, nombreComunESP, nombreComunING, sexo, categoriaDeEdad, numeroDeIndividuos) VALUES
('Animalia','Chordata','Mammalia','Carnivora','Procoynidae','Procyon','Ursur_lotor','Mapache','racoon','macho','a',1),
('Animalia','Chordata','Mammalia','Carnivora','Procoynidae','Procyon','Ursur_lotor','Mapache','racoon','hembra','b',1),
('Animalia','Chordata','Mammalia','Carnivora','Felidae','Procyon','P.concolor','Puma concolor','Puma concolor','macho','a',1),
('Animalia','Chordata','Mammalia','Carnivora','Felidae','Procyon','P.concolor','Puma concolor','Puma concolor','hembra','a',1),
('Animalia','Chardata','Mammalia','Carnivora','Felidae','Panthera','Panthera onca','Jaguar','Jaguar','macho','a',2),
('Animalia','Chardata','Mammalia','Carnivora','Felidae','Panthera','Panthera onca','Jaguar','Jaguar','hembra','a',2),
('Animalia','Chordata','Mammalia','Carnivora','Felidae','Leopardus','Leopardus wiedii','Tigrillo','Margay','macho','b',2),
('Animalia','Chordata','Mammalia','Carnivora','Felidae','Leopardus','Leopardus wiedii','Tigrillo','Margay','hembra','a',1),
('Animalia','Chordata','Mammalia','Carnivora','Felidae','Leopardus','Leopardus pardalis','Ocelote','Ocelot','macho','a',1),
('Animalia','Chordata','Mammalia','Carnivora','Felidae','Leopardus','Leopardus pardalis','Ocelote','Ocelot','hembra','c',2),
('Animalia','Chordata','Mammalia','Carnivora','Ursidae','Ursus','Ursus americanus','Oso Negro', 'Black Bear','macho','a',1),
('Animalia','Chordata','Mammalia','Carnivora','Ursidae','Ursus','Ursus americanus','Oso Negro', 'Black Bear','hembra','c',2),
('Animalia','Chordata','Mammalia','Carnivora','Felidae','Herpailurus','Herpailurus Yagouaroundi','yaguarondi', 'yaguarondi','Macho','a',1),
('Animalia','Chordata','Mammalia','Carnivora','Felidae','Herpailurus','Herpailurus Yagouaroundi','yaguarondi', 'yaguarondi','hembra','c',2),
('Animalia','Chordata','Mammalia','Carnivora','Canidae','Canis','Canis latrans','Coyote', 'Coyote','Macho','a',1),
('Animalia','Chordata','Mammalia','Carnivora','Canidae','Canis','Canis latrans','Coyote', 'Coyote','Hembra','c',1),
('Animalia','Chordata','Mammalia','Carnivora','Canidae','Urocyon','Urocyon cinereoargenteus','Zorra Gris', 'Gray Fox','Macho','a',1),
('Animalia','Chordata','Mammalia','Carnivora','Canidae','Urocyon','Urocyon cinereoargenteus','Zorra Gris', 'Gray Fox','Hembra','C',2),
('Animalia','Chordata','Mammalia','Carnivora','Tapiridae','Tapirus','Tapirus terrestris','Tapir ', 'Tapir','Macho','a',1),
('Animalia','Chordata','Mammalia','Carnivora','Tapiridae','Tapirus','Tapirus terrestris','Tapir ', 'Tapir','Hembra','c',2),
('Animalia','Chordata','Mammalia','Artiodactyla','Cervidae','Odocoileus','Odocoileus Virginianus','Ciervo de Cola Blanca ', 'White-tailed deer','Macho','a',1),
('Animalia','Chordata','Mammalia','Artiodactyla','Cervidae','Odocoileus','Odocoileus Virginianus','Ciervo de Cola Blanca ', 'White-tailed deer','Hembra','c',2),
('Animalia','Chordata','Mammalia','Artiodactyla','Tayassuidae','Pecari','Pecari tajacu','Pecari de Collar', 'Collared peccary','Macho','a',1 ),
('Animalia','Chordata','Mammalia','Artiodactyla','Tayassuidae','Pecari','Pecari tajacu','Pecari de Collar', 'Collared peccary','Hembra','a',1),
('Animalia','Chordata','Mammalia','Carnivora','Canidae','Canis','Canis lupus familiaris','Perro', 'Dog','Macho','a',1   ),
('Animalia','Chordata','Mammalia','Carnivora','Canidae','Canis','Canis lupus familiaris','Perro', 'Dog','Hembra','c',2),
('Animalia','Chordata','Mammalia','Artiodactyla','Bovidae','Bos','Bos primigenius taurus','Vaca/Toro', 'Cow/Bull','Macho','a',1  ),
('Animalia','Chordata','Mammalia','Artiodactyla','Bovidae','Bos','Bos primigenius taurus','Vaca/Toro', 'Cow/Bull','Hembra','c',2),
('Animalia','Chordata','Mammalia','Carnivora','Felidae','Felis','Felis silvestris','Gato','Cat','Macho','a',1),
('Animalia','Chordata','Mammalia','Carnivora','Felidae','Felis','Felis silvestris','Gato','Cat','Hembra','a',1),
('Animalia', 'Chordata', 'Mammalia','Carnivora','Canidae','Canis','C.lupus','Perro','Dog','Macho','a',1),
('Animalia', 'Chordata', 'Mammalia','Carnivora','Canidae', 'Canis','C.lupus','Perro','Dog', 'Hembra','a',1);





#Animal : RevisarCoincidencia
drop procedure if exists AgregarAnimal;
DELIMITER //
CREATE PROCEDURE AgregarAnimal(IN reino VARCHAR(255), IN filo VARCHAR(255), IN clase VARCHAR(255), IN orden VARCHAR(255), IN familia VARCHAR(255), IN genero VARCHAR(255), IN especie VARCHAR(255), IN nombreComunESP VARCHAR(255), IN nombreComunING VARCHAR(255), IN sexo VARCHAR(255), IN categoriaDeEdad VARCHAR(255), IN numeroDeIndividuos INT )
BEGIN
	INSERT INTO Animal (reino, filo, clase, orden, familia, genero, especie, nombreComunESP, nombreComunING, sexo, categoriaDeEdad, numeroDeIndividuos) VALUES
	(reino, filo, clase, orden, familia, genero, especie, nombreComunESP, nombreComunING, sexo, categoriaDeEdad, numeroDeIndividuos);
    INSERT INTO LocalTable (reino, filo, clase, orden, familia, genero, especie, nombreComunESP, nombreComunING, sexo, categoriaDeEdad, numeroDeIndividuos) VALUES
	(reino, filo, clase, orden, familia, genero, especie, nombreComunESP, nombreComunING, sexo, categoriaDeEdad, numeroDeIndividuos);
   
END //
DELIMITER ;





#Animal : RevisarCoincidencia
drop procedure if exists RevisarCoincidencia;
DELIMITER //
CREATE PROCEDURE RevisarCoincidencia(IN Entrada VARCHAR(255))
BEGIN
	DECLARE id INT;
    DECLARE reino VARCHAR(255);
    DECLARE filo VARCHAR(255); 
    DECLARE clase VARCHAR(255); 
    DECLARE orden VARCHAR(255); 
    DECLARE familia VARCHAR(255);
    DECLARE genero VARCHAR(255); 
    DECLARE especie VARCHAR(255); 
    DECLARE nombreComunESP VARCHAR(255); 
    DECLARE nombreComunING VARCHAR(255);
    DECLARE sexo VARCHAR(255);
    DECLARE categoriaDeEdad VARCHAR(255);
    DECLARE numeroDeIndividuos INT;
    DECLARE identificadoPor VARCHAR(255);
    
    
    SET id = (SELECT Ejemplar.id FROM Ejemplar WHERE Ejemplar.especie = Entrada LIMIT 1);
    
	SET reino = (SELECT Ejemplar.reino FROM Ejemplar WHERE Ejemplar.id = id);
	SET filo = (SELECT Ejemplar.filo FROM Ejemplar WHERE Ejemplar.id = id);
	SET clase = (SELECT Ejemplar.clase FROM Ejemplar WHERE Ejemplar.id = id);
	SET orden = (SELECT Ejemplar.orden FROM Ejemplar WHERE Ejemplar.id = id);
	SET familia = (SELECT Ejemplar.familia FROM Ejemplar WHERE Ejemplar.id = id);
	SET genero = (SELECT Ejemplar.genero FROM Ejemplar WHERE Ejemplar.id = id);
	SET especie = (SELECT Ejemplar.especie FROM Ejemplar WHERE Ejemplar.id = id);
	SET nombreComunESP = (SELECT Ejemplar.nombreComunESP FROM Ejemplar WHERE Ejemplar.id = id);
	SET nombreComunING = (SELECT Ejemplar.nombreComunING FROM Ejemplar WHERE Ejemplar.id = id);
	SET sexo = (SELECT Ejemplar.sexo FROM Ejemplar WHERE Ejemplar.id = id);
	SET categoriaDeEdad = (SELECT Ejemplar.categoriaDeEdad FROM Ejemplar WHERE Ejemplar.id = id);
	SET numeroDeIndividuos = (SELECT Ejemplar.numeroDeIndividuos FROM Ejemplar WHERE Ejemplar.id = id);
	
	CALL AgregarAnimal(reino, filo, clase, orden, familia, genero, especie, nombreComunESP, nombreComunING, sexo, categoriaDeEdad, numeroDeIndividuos);
END //
DELIMITER ;
#CALL RevisarCoincidencia("Tapirus terrestris");





#Animal : AnimalVistaActual
drop procedure if exists AnimalVistaActual;
DELIMITER //
CREATE PROCEDURE AnimalVistaActual(IN entrada VARCHAR(255))
BEGIN
	SELECT * FROM Ejemplar WHERE Ejemplar.especie = entrada LIMIT 1;
	
END //
DELIMITER ;
#CALL AnimalVistaActual("C.lupus");




#Animal : LocalTable
drop procedure if exists LocalTable;
DELIMITER //
CREATE PROCEDURE LocalTable()
BEGIN
	DROP TABLE IF EXISTS LocalTable;
	CREATE TABLE LocalTable(
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
END //
DELIMITER ;
#CALL LocalTable();



#Animal : Filtro
drop procedure if exists Filtro;
DELIMITER //
CREATE PROCEDURE Filtro(IN categoria VARCHAR(255), IN seleccion VARCHAR(255))
BEGIN
	DECLARE e VARCHAR(255);
    SET @e = CONCAT('SELECT LocalTable.id FROM LocalTable WHERE LocalTable.',categoria, ' = \'',seleccion,'\'');
	PREPARE stmt FROM @e;
    EXECUTE stmt;
END //
DELIMITER ;
#CALL Filtro('clase','Mammalia');















