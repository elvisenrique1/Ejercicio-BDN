
-- *** Ejercicios ***

/*
 Basándose en la tabla articulos, obtener:
1- articulos con precio mayor a 10000
2- articulos con precio entre 5000 y 12000 (usar > y <)
3- articulos con precio entre 5000 y 12000 (usar BETWEEN)
4- articulos con precio = 14000 y stock mayor a 3
5- articulos con precio (8000, 500, 45000) no usar IN
6- articulos con precio (8000, 500, 45000) usar IN
7- articulos cuyo precio no sea (12000, 14000, 16000)
8- articulos ordenados por precio de mayor a menor, si hubiera precios iguales,
ordenarlos por nombre
9- todos los articulos, incluyendo una columna denominada "precio con IVA", la cual
deberá tener el monto con el IVA del producto
10- todos los articulos, incluyendo una columna denominada "cantidad de cuotas" y 
otra "valor de cuota", la cantidad es fija y es 3, el valor de la cuota corresponde
a 1/3 del monto con un 5% de interés
11- todos los artículos cuyo nombre termine con a y tenga 21 letras
12- todos los artículos cuyo nombre contenga al menos dos 's'
13- todos los artículos cuyo nombre esté compuesto con al menos cuatro palabras
14- los primeros 5 artículos ordenados por precio en forma descendente
15- los 2 primeros artículos luego del segundo registro ordenado por stock
*/


show databases;

create database cursobd;

use cursobd;
show tables;


create table articulos(
	codigo int primary key,
    nombre varchar(50) not null,
    precio double not null,
    stock int not null
);

-- inserción de registros con definición de campos
insert into articulos (codigo, nombre, precio, stock) values
(1, 'pollo con fritas', 15000, 8);
insert into articulos (codigo, nombre, precio, stock) values
(2, 'milanesa con ensalada', 7500, 10);
insert into articulos (codigo, nombre, precio, stock) values
(3, 'guiso de lentejas', 8000, 15);
insert into articulos (codigo, nombre, precio, stock) values
(4, 'escalope con puré', 7000, 12);
insert into articulos (codigo, nombre, precio, stock) values
(5, 'pechito de cerdo con fritas', 8000, 10);
insert into articulos (codigo, nombre, precio, stock) values
(6, 'entraña caprese con puré', 14000, 5);
insert into articulos (codigo, nombre, precio, stock) values
(7, 'filet a la romana', 12000, 13);
insert into articulos (codigo, nombre, precio, stock) values
(8, 'tequeyoyo', 500, 200);
insert into articulos (codigo, nombre, precio, stock) values
(9, 'vacío al horno con papas', 15000, 4);
insert into articulos (codigo, nombre, precio, stock) values
(10, 'asado', 20000, 6);
insert into articulos (codigo, nombre, precio, stock) values
(11, 'hamburguesa de vegetales con papas fritas', 12000, 50);
insert into articulos (codigo, nombre, precio, stock) values
(12, 'ñoquis a los 4 quesos', 7500, 12);
insert into articulos (codigo, nombre, precio, stock) values
(13, 'pizza de jamón y ananá', 45000, 2);
insert into articulos (codigo, nombre, precio, stock) values
(14, 'tarta de verduras', 6000, 20);
insert into articulos (codigo, nombre, precio, stock) values
(15, 'pollo a la mostaza con papas a la crema', 16000, 2);
insert into articulos (codigo, nombre, precio, stock) values
(16, 'sorrentinos de ricota', 12, 8);
insert into articulos (codigo, nombre, precio, stock) values
(17, 'flan con crema', 3350, 0);
insert into articulos (codigo, nombre, precio, stock) values
(18, 'matambre a la pizza con fritas', 17000, 6);

insert into articulos (precio, codigo, stock, nombre) values
(150000, 235, 0, 'helado de menta granizada');

-- inserción sin definición de campos
insert into articulos values
(29, 'sandwich de lomito con jyq en pan árabe', 189000, 10);
-- si se completan todos los campos y en el mismo orden ,no hace falta que se declaran al iniciar 


-- 1- articulos con precio mayor a 10000
Select * from articulos where precio > 10000;

-- 2- articulos con precio entre 5000 y 12000 (usar > y <)
select * from articulos where precio > 5000 and precio < 12000;

-- 3- articulos con precio entre 5000 y 12000 (usar BETWEEN)
select * from articulos where precio between 5000 and 12000;

-- 4- articulos con precio = 14000 y stock mayor a 3
select * from articulos where precio = 14000 and stock > 3;

-- 5- articulos con precio (8000, 500, 45000) no usar IN
select * from articulos where precio=8000 or precio=500 or precio=45000;

-- 6- articulos con precio (8000, 500, 45000) usar IN
select * from articulos where precio in (8000, 500, 45000);

-- 7- articulos cuyo precio no sea (12000, 14000, 16000)
select * from articulos where precio<>12000 and precio<>14000 and precio<>16000;
select * from articulos where precio not in (12000, 14000, 16000);

-- 8- articulos ordenados por precio de mayor a menor, si hubiera precios iguales,
-- ordenarlos por nombre
select * from articulos order by precio desc, nombre;

-- 9- todos los articulos, incluyendo una columna denominada "precio con IVA", la cual
-- deberá tener el monto con el IVA del producto


-- 10- todos los articulos, incluyendo una columna denominada "cantidad de cuotas" y 
-- otra "valor de cuota", la cantidad es fija y es 3, el valor de la cuota corresponde
-- a 1/3 del monto con un 5% de interés


-- 11- todos los artículos cuyo nombre termine con a y tenga 21 letras
select * from articulos where nombre like '____________________%a';

-- 12- todos los artículos cuyo nombre contenga al menos dos 's'
select * from articulos where nombre like 's%';

-- 13- todos los artículos cuyo nombre esté compuesto con al menos cuatro palabras
select * from articulos where nombre like '%';

-- 14- los primeros 5 artículos ordenados por precio en forma descendente
select * from articulos order by precio desc limit 5;

-- 15- los 2 primeros artículos luego del segundo registro ordenado por stock

select * from articulos;