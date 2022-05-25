create database holamundo;
show databases;
use holamundo;
CREATE TABLE animales (
	id int,
	tipo varchar(255),
	estado varchar(255),
	PRIMARY KEY(id));
-- Insert INTO  animales (tipo, estado) VALUES('chanchito','feliz');
-- Me da error ya que no hemos mencionado el ID, podemos o mencionarlo todo el rato o poner un auto increment.
ALTER TABLE animales MODIFY COLUMN id int auto_increment;
SHOW CREATE TABLE animales;
Insert INTO  animales (tipo, estado) VALUES('chanchito','feliz');
Insert INTO  animales (tipo, estado) VALUES('dragon','feliz');
Insert INTO  animales (tipo, estado) VALUES('felipe','triste');
select * from animales where id = 1;
-- me da el primer regitro
select * from animales where id = 1 and tipo = 'chanchito';
-- poniendo una condición añadida con 'and'
-- UPDATE . Vamos a modificar un registro
UPDATE animales set estado = 'feliz' where id = 4;
select * from animales;
-- DELETE Eliminar registros de la BBDD
DELETE from animales where id = 1;
DELETE from animales where id = 2;
select * from animales; 
-- Había creado un par de registros y he borrado los dos primeros, asi me queda una tabla con todos felices y ditintos tipos.
--
-- READ. Creamos la tabla de usuario y trabajamos sobre ella.
CREATE TABLE user (
	id int not null auto_increment,
    name varchar (50) not null,
    edad int not null,
    email varchar (100) not null,
    primary key (id)
);
INSERT INTO user (name, edad, email) values ('Oscar', 25,'oscar@gmail.com');
INSERT INTO user (name, edad, email) values ('Layla', 15,'layla@gmail.com');
INSERT INTO user (name, edad, email) values ('Nicolas', 35,'nicolas@gmail.com');
INSERT INTO user (name, edad, email) values ('Chanchito', 7,'chanchito@gmail.com');
select * from user;
-- Sale toda la table
select * from user limit 1;
-- Limita la cantidad de registros que se nos muestra
select * from user where edad > 15;
-- Muestra con condiciones ejemplo mayor a 15
select * from user where edad >= 20 and email = 'nicolas@gmail.com';
-- Nos muestra la condicion si se cumplen las dos.
select * from user where edad > 20 or email = 'layla@gmail.com';
-- Nos salen todas las muestras con las dos condiciones al tener un or
select * from user where email != 'layla@gmail.com';
-- Muestra los diferentes a layla@
select * from user where edad between 15 and 30;
-- Muestra resultados entre () incluidos. 
--
-- MUESTRAS GENERALES
select * from user where email like '%gmail%';
-- Buscamos de forma general con LIKE y % a la derecha o a la izquierda dice al interprete que no importe lo que hay a la drch o izq
--
-- CONSULTA ORDENANDO LOS REGISTROS
select * from user order by edad asc;
-- ordena por edad de manera ascendente
select * from user order by edad desc;
-- ordena por edad de manera descendente
--
-- Mayor o menor
select max(edad) as mayor from user;
select min(edad) as menor from user;
-- Esto es una función donde hay que pasar de donde cogemos el dato  ()  y como llamaremos a ese dato 'as'
--
-- Seleccionamos sólo las columnas relevantes para nosotros
select id, name from user;
-- Seleccionamos las dos columnas para que las muestre
-- Pero también podemos cambiar el nombre de las columnas
select id, name as chanchito from user;
-- les ponemos como alias a la columna que queramos 
--














