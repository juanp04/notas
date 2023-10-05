USE base;
SHOW databases;
SHOW tables;

-- Funciones posibles: --
-- INSERT INTO (nombre de la tabla) --
-- DELETE --
-- UPDATE --
-- SELECT --
DESCRIBE usuario;

-- FUNCION INSERT --
INSERT INTO usuario (id,nombre,apellido,email,pass) VALUES 
(NULL, "juan", "garrahan", "jgarrahan@uca.edu.ar", "juan123");

-- Consulta Usuario--
-- FUNCION SELECT --
SELECT * FROM usuario;

-- Agregar varios usuarios --
INSERT INTO usuario (id,nombre,apellido,email,pass) VALUES 
(NULL, "paco", "navarro", "pnavarro@uca.edu.ar", "pep123"),
(NULL, "pedro", "de la mar", "pdlmar@gmail.com", "hola123"),
(NULL, "santiago", "acosta", "sacosta@uca.edu.ar", "santi");

DESCRIBE producto;

INSERT INTO producto (id, nombre, valor, stock) VALUES
(NULL, "Coca-Cola Comun 1L", 499.99, 45),
(NULL, "Fideos Marolio 500g", 400, 200),
(NULL, "Queso La Paulina 200g", 360, 250),
(NULL, "Yerba la tranquera 1Kg", 956.32, 23);

SELECT * FROM producto;

DESCRIBE compra;
INSERT INTO compra (id, fecha, id_usuario) VALUES
(NULL, "2023-03-13", 1),
(NULL, "4-10-14", 3),
(NULL, "3-10-15", 4);

SELECT * FROM compra;

-- FUNCION UPDATE --
-- Error en carga, usamos update --
UPDATE compra
SET fecha="2023-10-04"
WHERE id=1;


DESCRIBE listacompra;

INSERT INTO listacompra (id, id_compra, id_producto, cantidad, valor) VALUES
(NULL, 1, 2, 2, 800),
(NULL, 1, 3, 1, 360),
(NULL, 1, 1, 2, 1798.02);

SELECT * FROM listacompra;

INSERT INTO producto (id, nombre, valor, stock) VALUES
(NULL, "Pipas de girasol 50g", 100, 900);

DELETE FROM producto WHERE id=5;