
-- CREACION DE ESQUEMA

create schema pelis_net;

-- USO DE ESQUEMA POR SEGURIDAD

use pelis_net;

-- CREACION DE TABLAS (ASIGNANDO PRIMARY KEY Y FOREIGN KEY)

create table autores (
ID_Autor int NOT NULL auto_increment,
Nombre varchar(25) NOT NULL,
Apellido varchar(25) NOT NULL,
primary key (ID_Autor));

create table generos (
ID_Genero int NOT NULL auto_increment,
Nombre varchar(20) NOT NULL,
primary key (ID_Genero));

create table plataforma_peliculas(
ID_Pelicula int NOT NULL auto_increment,
FK_Autor int NOT NULL,
FK_Genero int NOT NULL,
Pelicula varchar(50) NOT NULL,
primary key (ID_Pelicula),
foreign key (FK_Autor) references Autores (ID_Autor),
foreign key (FK_Genero) references Generos (ID_Genero)
);

create table clientes(
ID_Cliente int NOT NULL auto_increment,
Nombre varchar(25) NOT NULL,
Apellido varchar(25) NOT NULL,
Nacionalidad varchar(30) NOT NULL,
Metodo_Pago varchar(30) NOT NULL,
Banco varchar(30) NOT NULL,
primary key (ID_Cliente)
);

create table subscripciones(
ID_Sub int NOT NULL auto_increment,
FK_Cliente int NOT NULL,
Precio int NOT NULL,
Plan varchar(15) NOT NULL,
Fecha_Inscrip date NOT NULL,
Fecha_Pago date NOT NULL,
primary key (ID_Sub),
foreign key (FK_Cliente) references clientes (ID_Cliente)
);

-- INSERCION DE DATOS EN TABLAS

INSERT INTO autores 
VALUES 
(NOT NULL,"Francis","Coppola"),
(NOT NULL,"James","Cameron"),
(NOT NULL,"George","Lucas"),
(NOT NULL,"Peter","Jackson"),
(NOT NULL,"Steven","Spielberg"),
(NOT NULL,"Quentin","Tarantino"),
(NOT NULL,"Roger","Allers"),
(NOT NULL,"Lana","Wachowski"),
(NOT NULL,"Robert","Zemeckis"),
(NOT NULL,"Chris","Columbus"),
(NOT NULL,"David","Fincher"),
(NOT NULL,"James","Cameron"),
(NOT NULL,"Jonathan","Demme"),
(NOT NULL,"John","Lasseter"),
(NOT NULL,"Ridley","Scott"),
(NOT NULL,"Baz","Luhrmann"),
(NOT NULL,"Robert","Zemeckis"),
(NOT NULL,"Damien","Chazelle"),
(NOT NULL,"Christopher","Nolan"),
(NOT NULL,"Stanley","Kubrick"),
(NOT NULL,"Joss","Whedon"),
(NOT NULL,"Garry","Marshall"),
(NOT NULL,"Victor","Fleming"),
(NOT NULL,"Night","Shyamalan"),
(NOT NULL,"Steven","Spielberg"),
(NOT NULL,"Frank","Darabont"),
(NOT NULL,"Hayao","Miyazaki"),
(NOT NULL,"John","McTiernan"),
(NOT NULL,"William","Friedkin"),
(NOT NULL,"Tom","Hooper"),
(NOT NULL,"Andrew","Stanton"),
(NOT NULL,"Christopher","Nolan"),
(NOT NULL,"David","Fincher"),
(NOT NULL,"Brian","DePalma"),
(NOT NULL,"Steven","Spielberg"),
(NOT NULL,"Pete","Docter"),
(NOT NULL,"Christopher","Nolan"),
(NOT NULL,"Ridley","Scott"),
(NOT NULL,"Gary","Trousdale"),
(NOT NULL,"Lawrence","Kasdan"),
(NOT NULL,"Jon","Favreau"),
(NOT NULL,"David","Fincher"),
(NOT NULL,"Christopher","Nolan"),
(NOT NULL,"Steven","Spielberg"),
(NOT NULL,"Christopher","Nolan"),
(NOT NULL,"Andrew","Adamson"),
(NOT NULL,"Michael","Gracey"),
(NOT NULL,"Tim","Miller"),
(NOT NULL,"Brad","Bird"),
(NOT NULL,"Wes","Anderson");

INSERT INTO generos 
VALUES
(NOT NULL,"Drama"),
(NOT NULL,"Drama"),
(NOT NULL,"Ciencia_ficción"),
(NOT NULL,"Fantasía"),
(NOT NULL,"Ciencia_ficción"),
(NOT NULL,"Crimen"),
(NOT NULL,"Animación"),
(NOT NULL,"Ciencia_ficción"),
(NOT NULL,"Drama"),
(NOT NULL,"Fantasía"),
(NOT NULL,"Drama"),
(NOT NULL,"Ciencia_ficción"),
(NOT NULL,"Crimen"),
(NOT NULL,"Animación"),
(NOT NULL,"Acción"),
(NOT NULL,"Drama"),
(NOT NULL,"Ciencia_ficción"),
(NOT NULL,"Musical"),
(NOT NULL,"Ciencia_ficción"),
(NOT NULL,"Terror"),
(NOT NULL,"Acción"),
(NOT NULL,"Comedia"),
(NOT NULL,"Aventura"),
(NOT NULL,"Drama"),
(NOT NULL,"Ciencia_ficción"),
(NOT NULL,"Drama"),
(NOT NULL,"Animación"),
(NOT NULL,"Acción"),
(NOT NULL,"Terror"),
(NOT NULL,"Drama"),
(NOT NULL,"Animación"),
(NOT NULL,"Acción"),
(NOT NULL,"Drama"),
(NOT NULL,"Acción"),
(NOT NULL,"Drama"),
(NOT NULL,"Animación"),
(NOT NULL,"Suspenso"),
(NOT NULL,"Ciencia_ficción"),
(NOT NULL,"Animación"),
(NOT NULL,"Terror"),
(NOT NULL,"Animación"),
(NOT NULL,"Drama"),
(NOT NULL,"Acción"),
(NOT NULL,"Acción"),
(NOT NULL,"Ciencia_ficción"),
(NOT NULL,"Animación"),
(NOT NULL,"Musical"),
(NOT NULL,"Acción"),
(NOT NULL,"Animación"),
(NOT NULL,"Comedia");

INSERT INTO plataforma_peliculas 
VALUES
(NOT NULL,1,1,"El Padrino"),
(NOT NULL,2,2,"Titanic"),
(NOT NULL,3,3,"Star Wars"),
(NOT NULL,4,4,"El Señor de los Anillos"),
(NOT NULL,5,5,"Jurassic Park"),
(NOT NULL,6,6,"Pulp Fiction"),
(NOT NULL,7,7,"El Rey León"),
(NOT NULL,8,8,"Matrix"),
(NOT NULL,9,9,"Forrest Gump"),
(NOT NULL,10,10,"Harry Potter"),
(NOT NULL,11,11,"El Club de la Lucha"),
(NOT NULL,12,12,"Avatar"),
(NOT NULL,13,13,"El silencio de los corderos"),
(NOT NULL,14,14,"Toy Story"),
(NOT NULL,15,15,"Gladiador"),
(NOT NULL,16,16,"El Gran Gatsby"),
(NOT NULL,17,17,"Regreso al futuro"),
(NOT NULL,18,18,"La La Land"),
(NOT NULL,19,19,"Inception"),
(NOT NULL,20,20,"El Resplandor"),
(NOT NULL,21,21,"Los Vengadores"),
(NOT NULL,22,22,"Mujer bonita"),
(NOT NULL,23,23,"El Mago de Oz"),
(NOT NULL,24,24,"Sexto sentido"),
(NOT NULL,25,25,"E.T. el Extraterrestre"),
(NOT NULL,26,26,"Cadena perpetua"),
(NOT NULL,27,27,"El viaje de Chihiro"),
(NOT NULL,28,28,"Duro de matar"),
(NOT NULL,29,29,"El Exorcista"),
(NOT NULL,30,30,"El discurso del rey"),
(NOT NULL,31,31,"Buscando a Nemo"),
(NOT NULL,32,32,"El caballero de la noche"),
(NOT NULL,33,33,"El curioso caso de Benjamin Button"),
(NOT NULL,34,34,"Misión Imposible"),
(NOT NULL,35,35,"La lista de Schindler"),
(NOT NULL,36,36,"Up"),
(NOT NULL,37,37,"Memento"),
(NOT NULL,38,38,"Blade Runner"),
(NOT NULL,39,39,"La Bella y la Bestia"),
(NOT NULL,40,40,"Cazadores de sueños"),
(NOT NULL,41,41,"El rey león"),
(NOT NULL,42,42,"La red social"),
(NOT NULL,43,43,"Batman inicia"),
(NOT NULL,44,44,"Indiana Jones"),
(NOT NULL,45,45,"Interestelar"),
(NOT NULL,46,46,"Shrek"),
(NOT NULL,47,47,"El gran Showman"),
(NOT NULL,48,48,"Deadpool"),
(NOT NULL,49,49,"Los increíbles"),
(NOT NULL,50,50,"El gran hotel Budapest");

INSERT INTO clientes 
VALUES
(NOT NULL,"Luis","García","México","Visa Credito","Banco Mexicano"),
(NOT NULL,"Sophia","Smith","Estados Unidos","Mastercard Credito","First United Bank"),
(NOT NULL,"Hiroshi","Tanaka","Japón","Visa Credito","Tokyo Bank"),
(NOT NULL,"Elena","Petrova","Rusia","Visa Debito","Volga Bank"),
(NOT NULL,"Andrea","Rossi","Italia","Mastercard Credito","Banco Italiano"),
(NOT NULL,"Johann","Müller","Alemania","Visa Debito","Deutsche Bank"),
(NOT NULL,"Ana","Fernández","España","Visa Debito","Banco Ibérico"),
(NOT NULL,"Pierre","Dupont","Francia","Visa Credito","Banque Parisienne"),
(NOT NULL,"Maria","Santos","Brasil","Mastercard Credito","Banco Brasileiro"),
(NOT NULL,"Chen","Wei","China","Visa Debito","Great Wall Bank"),
(NOT NULL,"Natalia","Kowalski","Polonia","Mastercard Credito","Polski Bank"),
(NOT NULL,"Amit","Patel","India","Visa Credito","Bharat Bank"),
(NOT NULL,"Oscar","Hernandez","Colombia","Visa Credito","Banco Andino"),
(NOT NULL,"Olga","Ivanova","Ucrania","Visa Debito","Kyiv Bank"),
(NOT NULL,"Ahmed","AlMansoori","Arabia","Mastercard Credito","Emirates Bank"),
(NOT NULL,"Kim","Minji","Corea del Sur","Mastercard Credito","Seoul Bank"),
(NOT NULL,"Ricardo","Costa","Portugal","Visa Credito","Banco Lusitano"),
(NOT NULL,"Katja","Jansson","Suecia","Visa Debito","Nordic Bank"),
(NOT NULL,"Miguel","Silva","Chile","Visa Debito","Banco Andino"),
(NOT NULL,"Anna","Kovalenko","Ucrania","Visa Credito","Kyiv Bank"),
(NOT NULL,"Abdullah","AlRashid","Arabia Saudita","Visa Credito","Emirates Bank"),
(NOT NULL,"Nina","Sokolov","Australia","Visa Debito","Down Under Bank"),
(NOT NULL,"Carlos","Lopez","Argentina","Mastercard Credito","Banco Nacion"),
(NOT NULL,"Lise","Nielsen","Dinamarca","Visa Credito","Danmark Bank"),
(NOT NULL,"Elisa","Schmidt","Alemania","Visa Credito","Deutsche Bank");

INSERT INTO subscripciones 
VALUES
(NOT NULL,1,1000,"Standard","2020-05-12","2020-05-12"),
(NOT NULL,2,1500,"Premium","2020-08-17","2020-08-17"),
(NOT NULL,3,1500,"Premium","2020-11-18","2020-11-18"),
(NOT NULL,4,1000,"Standard","2020-11-25","2020-11-25"),
(NOT NULL,5,1000,"Standard","2020-11-25","2020-11-25"),
(NOT NULL,6,1500,"Premium","2020-12-20","2020-12-20"),
(NOT NULL,7,1500,"Premium","2021-01-26","2021-01-26"),
(NOT NULL,8,1000,"Standard","2021-02-28","2021-02-28"),
(NOT NULL,9,1500,"Premium","2021-03-22","2021-03-22"),
(NOT NULL,10,1000,"Standard","2021-05-03","2021-05-03"),
(NOT NULL,11,1500,"Premium","2021-07-05","2021-07-05"),
(NOT NULL,12,1500,"Premium","2021-11-14","2021-11-14"),
(NOT NULL,13,1500,"Premium","2022-08-07","2022-08-07"),
(NOT NULL,14,1000,"Standard","2022-08-07","2022-08-07"),
(NOT NULL,15,1500,"Premium","2022-09-18","2022-09-18"),
(NOT NULL,16,1500,"Premium","2022-11-23","2022-11-23"),
(NOT NULL,17,1500,"Premium","2022-12-19","2022-12-19"),
(NOT NULL,18,1000,"Standard","2023-01-16","2023-01-16"),
(NOT NULL,19,1500,"Premium","2023-04-30","2023-04-30"),
(NOT NULL,20,1500,"Premium","2023-05-04","2023-05-04"),
(NOT NULL,21,1000,"Standard","2023-05-04","2023-05-04"),
(NOT NULL,22,1000,"Standard","2023-06-01","2023-06-01"),
(NOT NULL,23,1000,"Standard","2023-06-07","2023-06-07"),
(NOT NULL,24,1500,"Premium","2023-08-17","2023-08-17"),
(NOT NULL,25,1000,"Standard","2023-08-17","2023-08-17");

-- CHEQUEO DE DATOS INSERTADOS EN TABLAS

SELECT * FROM pelis_net.autores;

SELECT * FROM pelis_net.generos;

SELECT * FROM pelis_net.plataforma_peliculas;

SELECT * FROM pelis_net.clientes;

SELECT * FROM pelis_net.subscripciones;

-- CREACION DE VISTA PARA PODER IDENTIFICAR EL GENERO DE CADA PELICULA

CREATE OR REPLACE VIEW peliculas_genero AS
SELECT plataforma_peliculas.ID_Pelicula, plataforma_peliculas.Pelicula, generos.Nombre AS Genero
FROM plataforma_peliculas
INNER JOIN generos ON plataforma_peliculas.ID_Pelicula=generos.ID_Genero;

-- CREACION DE VISTA PARA PODER IDENTIFICAR EL NOMBRE COMPLETO DE CADA AUTOR DE LAS PELICULAS

CREATE OR REPLACE VIEW peliculas_autores AS
SELECT plataforma_peliculas.ID_Pelicula, plataforma_peliculas.Pelicula, autores.Nombre AS Autor_Nombre, autores.Apellido AS Autor_Apellido
FROM plataforma_peliculas
INNER JOIN autores ON plataforma_peliculas.ID_Pelicula=autores.ID_autor;

-- CREACION DE VISTA PARA PODER IDENTIFICAR EL PLAN DE CADA CLIENTE

CREATE OR REPLACE VIEW clientes_plan AS
SELECT clientes.ID_Cliente, clientes.Nombre, clientes.Apellido, subscripciones.Plan
FROM clientes
INNER JOIN subscripciones ON clientes.ID_Cliente=subscripciones.ID_Sub;

-- CREACION DE VISTA PARA PODER IDENTIFICAR LOS DATOS DE PAGO DE CADA CLIENTE

CREATE OR REPLACE VIEW clientes_pago AS
SELECT clientes.ID_Cliente, clientes.Nombre, clientes.Apellido, clientes.Metodo_Pago, clientes.Banco, subscripciones.Precio, subscripciones.Fecha_Pago AS Dia_Pago
FROM clientes
INNER JOIN subscripciones ON clientes.ID_Cliente=subscripciones.ID_Sub;

-- CREACION DE VISTA PARA PODER IDENTIFICAR LOS CLIENTES VIP PREMIUM

CREATE OR REPLACE VIEW clientes_Vip AS
SELECT clientes.ID_Cliente, clientes.Nombre, clientes.Apellido, subscripciones.Plan
FROM clientes
INNER JOIN subscripciones ON clientes.ID_Cliente=subscripciones.ID_Sub
WHERE subscripciones.Plan="Premium";

-- CREACION DE VISTA PARA PODER IDENTIFICAR LOS CLIENTES DEL PLAN BASICO

CREATE OR REPLACE VIEW clientes_Basicos AS
SELECT clientes.ID_Cliente, clientes.Nombre, clientes.Apellido, subscripciones.Plan
FROM clientes
INNER JOIN subscripciones ON clientes.ID_Cliente=subscripciones.ID_Sub
WHERE subscripciones.Plan="Standard";

-- CREACION DE VISTA PARA PODER IDENTIFICAR LOS ULTIMOS CLIENTES INGRESADOS

CREATE OR REPLACE VIEW clientes_2023 AS
SELECT clientes.ID_Cliente, clientes.Nombre, clientes.Apellido, subscripciones.Plan, subscripciones.Fecha_Inscrip AS Inscripcion
FROM clientes
INNER JOIN subscripciones ON clientes.ID_Cliente=subscripciones.ID_Sub
WHERE YEAR(subscripciones.Fecha_Inscrip) = "2023%";

-- CREACION DE FUNCION PARA IDENTIFICAR PELICULA POR ID

DELIMITER //
CREATE FUNCTION `pelicula`(peli_id INT) RETURNS VARCHAR (60)
DETERMINISTIC
BEGIN
    DECLARE resultado VARCHAR (60);
    SELECT Pelicula 
    INTO resultado
    FROM plataforma_peliculas
    WHERE ID_Pelicula = peli_id;
RETURN resultado;
END;//

-- CREACION DE FUNCION PARA DETERMINAR LA NACIONALIDAD DE UN CLIENTE POR ID

DELIMITER //
CREATE FUNCTION `cliente`(cliente_id INT) RETURNS VARCHAR (60)
DETERMINISTIC
BEGIN
    DECLARE resultado VARCHAR (60);
    SELECT Nacionalidad 
    INTO resultado
    FROM clientes
    WHERE ID_Cliente = cliente_id;
RETURN resultado;
END;//

-- CHEQUEO DE FUNCIONES

SELECT pelicula (11) AS Nombre_Pelicula;

SELECT cliente (8) AS Nacionalidad_Cliente;

-- CREACION DE PROCEDIMIENTOS ALMACENADOS GESTIONAR GENEROS Y ORDENAR

DELIMITER //
CREATE PROCEDURE Ordenar(IN campo VARCHAR(255), IN orden VARCHAR(10))
BEGIN
    SET @comando = CONCAT('SELECT * FROM plataforma_peliculas ORDER BY ', campo, ' ', orden);
    PREPARE runSQL FROM @comando;
    EXECUTE runSQL;
    DEALLOCATE PREPARE runSQL;
END;//

DELIMITER //
CREATE PROCEDURE GestionarGeneros(IN accion VARCHAR(10), IN genero VARCHAR(255), IN genero_id INT)
BEGIN
    IF accion = 'insertar' THEN
        INSERT INTO generos (Nombre) VALUES (genero);
    ELSEIF accion = 'borrar' THEN
        DELETE FROM generos WHERE ID_Genero = genero_id;
    END IF;
END;//

-- CHEQUEO DE PROCEDIMIENTOS

call Ordenar('ID_Pelicula', 'DESC');

SELECT * FROM pelis_prueba.generos;

CALL GestionarGeneros ("insertar", "Anime", NULL);

CALL GestionarGeneros ("borrar", NULL, 51 );

-- CREACION DE TABLAS PARA LA INSPECCION DE DATOS BEFORE Y AFTER DE CLIENTES

CREATE TABLE datosInsercionClientes(
	Nombre varchar(25) NOT NULL,
	Apellido varchar(25) NOT NULL,
	Nacionalidad varchar(30) NOT NULL,
	Metodo_Pago varchar(30) NOT NULL,
	Banco varchar(30) NOT NULL,
    usuario VARCHAR(50)
);

CREATE TABLE datosEliminacionClientes(
	ID_Cliente int NOT NULL,
	Nombre varchar(25) NOT NULL,
	Apellido varchar(25) NOT NULL,
	Nacionalidad varchar(30) NOT NULL,
	Metodo_Pago varchar(30) NOT NULL,
	Banco varchar(30) NOT NULL,
	fecha_hora TIMESTAMP,
    usuario VARCHAR(50)
);

-- CREACION DE TRIGGERS PARA LA INSPECCION DE DATOS BEFORE Y AFTER DE CLIENTES

CREATE TRIGGER before_insert
BEFORE INSERT ON clientes
FOR EACH ROW
	INSERT INTO datosInsercionClientes ()
    VALUES (new.Nombre, new.Apellido, new.Nacionalidad, new.Metodo_Pago, new.Banco, USER()); 

    
CREATE TRIGGER after_delete
AFTER DELETE ON clientes
FOR EACH ROW
	INSERT INTO datosEliminacionClientes
    VALUES (old.ID_Cliente, old.Nombre, old.Apellido, old.Nacionalidad, old.Metodo_Pago, old.Banco, CURRENT_TIMESTAMP(), USER());

-- CREACION DE TABLAS PARA LA INSPECCION DE DATOS BEFORE Y AFTER DE SUBSCRIPCIONES

CREATE TABLE datosInsercionSUB(
	Precio varchar(25) NOT NULL,
	Plan varchar(25) NOT NULL,
	Fecha_Inscrip varchar(30) NOT NULL,
	Fecha_Pago varchar(30) NOT NULL,
    usuario VARCHAR(50)
);

CREATE TABLE datosEliminacionSUB(
	ID_Sub varchar (25) NOT NULL,
	Precio varchar(25) NOT NULL,
	Plan varchar(25) NOT NULL,
	Fecha_Inscrip varchar(30) NOT NULL,
	Fecha_Pago varchar(30) NOT NULL,
	fecha_hora TIMESTAMP,
    usuario VARCHAR(50)
);

-- CREACION DE TRIGGERS PARA LA INSPECCION DE DATOS BEFORE Y AFTER DE SUBSCRIPCIONES

CREATE TRIGGER before_insert_SUB
BEFORE INSERT ON subscripciones
FOR EACH ROW
	INSERT INTO datosInsercionSUB
    VALUES (new.Precio, new.Plan, new.Fecha_Inscrip, new.Fecha_Pago, USER()); 

    
CREATE TRIGGER after_delete_SUB
AFTER DELETE ON subscripciones
FOR EACH ROW
	INSERT INTO datosEliminacionSUB
    VALUES (old.ID_Sub, old.Precio, old.Plan, old.Fecha_Inscrip, old.Fecha_Pago, CURRENT_TIMESTAMP(), USER());
    
-- CHEQUEO DE FUNCIONALIDAD DE LOS 4 TRIGGERS
    
INSERT INTO clientes 
VALUES(NOT NULL,"Carlos","Perez","Argentina","Visa Debito","Banco Santander");

INSERT INTO subscripciones 
VALUES(NOT NULL, 26, 1000, "Standard", "2023-08-30", "2023-08-30");

DELETE FROM subscripciones WHERE ID_Sub = 26;

DELETE FROM clientes WHERE ID_Cliente = 26;

-- CREACION DE USUARIOS

CREATE USER 'Supervisor'@'localhost' IDENTIFIED BY 'admin';

CREATE USER 'Empleado'@'localhost' IDENTIFIED BY 'admin';

-- ASIGNANDO PRIVILEGIOS

GRANT SELECT ON pelis_net.* TO 'Supervisor'@'localhost';

GRANT SELECT, INSERT, UPDATE ON pelis_net.* TO 'Empleado'@'localhost';

-- CHEQUEO DE GARANTIAS ASIGNADAS Y CREACION DE USUARIOS

SELECT user, host FROM mysql.user;

SHOW GRANTS FOR 'Supervisor'@'localhost';

SHOW GRANTS FOR 'Empleado'@'localhost';

-- DESACTIVACION Y CHEQUEO AUTOCOMMIT

SET AUTOCOMMIT = 0;

SELECT @@AUTOCOMMIT;

-- TRANSACCIONES TCL EN TABLA plataforma_peliculas

START TRANSACTION;

DELETE FROM plataforma_peliculas
WHERE ID_Pelicula IN (1,2,3);

ROLLBACK;

COMMIT;


-- TRANSACCIONES TCL EN TABLA autores

START TRANSACTION;

INSERT INTO autores VALUES (NOT NULL,"Roberto","Martinez");
INSERT INTO autores VALUES (NOT NULL,"Lucas","Meron");
INSERT INTO autores VALUES (NOT NULL,"George","Micas");
INSERT INTO autores VALUES (NOT NULL,"Pete","Jacks");
SAVEPOINT carga_1;
INSERT INTO autores VALUES (NOT NULL,"Steve","Elberg");
INSERT INTO autores VALUES (NOT NULL,"Tim","Antino");
INSERT INTO autores VALUES (NOT NULL,"Rogger","Alls");
INSERT INTO autores VALUES (NOT NULL,"Lana","sky");
SAVEPOINT carga_2;


ROLLBACK TO carga_1;

ROLLBACK;

COMMIT;

-- RELEASE SAVEPOINT carga_1



