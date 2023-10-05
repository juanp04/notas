SHOW DATABASES;
use base;

--Comentario

DESCRIBE usuario;

INSERT INTO usuario
(id,nombre,apellido,email,pass)
VALUES
(NULL,"Pedro","Mendoza","pedrito@gmail.com","1234")

SELECT * FROM usuario;

INSERT INTO usuario
(id,nombre,apellido,email,pass)
VALUES
(NULL,"Laura","Cocaro","pau@gmail.com","9966"),
(NULL,"Claudia","Rosato","clau@gmail.com","1234");

DESCRIBE producto;

insert into  producto
(id,nombre,valor,stock)
VALUES
(NUll, "Fideo Marollio 500gr",600.50,50),
(NUll, "Jorgelin Blanco 1u",520.6,150),
(NUll, "Yerba Playadito 1kg",1400.50,60),
(NUll, "Tic Tacs 1u",200,100);

SELECT * FROM producto;
DESCRIBE compra;

INSERT INTO compra
(id,fecha,id_usuario)
VALUES
(NULL,"2023-09-29",3);

SELECT * FROM compra;

DESCRIBE listacompra;

INSERT INTO listacompra
(id,id_compra,id_producto,cantidad,valor)
VALUES
(NULL, 1,3,1,1400),
(NULL, 1,1,2,2000);

SELECT * FROM listacompra;

UPDATE producto
SET nombre="TIC TAC MENTA 1U"
WHERE id=4;

insert into  producto
(id,nombre,valor,stock)
VALUES
(NUll, "Fideo Di Maria 500gr",600.50,50);

DELETE FROM producto
WHERE id=5;

SELECT * FROM producto;