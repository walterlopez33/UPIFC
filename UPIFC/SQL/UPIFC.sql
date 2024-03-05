-- cometnarios

/*
Para crear varias lineas de comentarios
linea 2
linea 3
*/


-- SQL = Structure query language == Lenguajde de consulta estructurado
--  Permite transacciones de Escritura y Lectura 
--   DBA - Database Administrator  (Es una carrera)


-- SQL se divide en 3

-- DDL= Data Definition Languaje   ( create, drop, Truncate )
-- DML= Data Manupulation Languaje ( select, insert, delete, update )
-- DCL= Data Control Languaje   ( grant, revoke )



--Pasos

--1 Crear una base de datos
create database UPIFC
use UPIFC
-- borrar database
drop database UPIFC

--2 Create tables
create table Jugador 
	(
	id int,
	nombre varchar(50),
	edad int
	)

create table Entrenador
	(
	id int primary key identity(1,1), -- int es un numero     primary key No se puede repetir       indentity(1,1) Autocompleta el id
	nombre varchar(50),
	CV varchar(200)
	)

-- Ingreso de registros
insert into Jugador(id, nombre, edad) values (1,'Mariano Torres',34)
insert into Jugador(id, nombre, edad) values (2,'Kendall Waston',35)
insert into Entrenador(nombre, CV) values ('Vladimir Quesada','Ex jugador del Saprissa')

-- consulta de registro
select id, nombre, edad from Jugador  -- Muestra toda la tabla
select nombre from jugador  -- Muestra solo el nombre de los jugadores
select * from jugador where edad = 34  -- Muestra solo el jugador con la edad descrita
select id, nombre, CV from Entrenador  -- Muestra toda la tabla

-- borrar un registro
delete jugador where id = 2 -- Elimina el jugador con el id 2

-- Actualizar un registro
update Jugador set edad = 36 where id = 1
update Jugador set edad = 36 where id = 2