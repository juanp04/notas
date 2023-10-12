USE ubicacion;
SELECT *
FROM pais;
SELECT *
FROM provincia
WHERE nombre like "jua%";
-- %contenido en cualquier lugar% --
-- contenido al principio explicitamente% --
-- %contenido al final explicitamente --
SELECT *
FROM provincia
WHERE id IN (5, 6, 7, 8) -- AND nombre LIKE "C%"-- ;
    -- multiples condiciones --
SELECT *
FROM provincia
WHERE id BETWEEN 5 AND 8;
-- rango --
SELECT *
FROM provincia
WHERE id = 5
    OR id = 6
    OR id = 7
    OR id = 8;
SELECT *
FROM pais
    INNER JOIN provincia ON pais.id = provincia.idpais
WHERE pais.nombre LIKE "%arg%";
SELECT pais.nombre AS Pais,
    provincia.nombre AS Provincia
FROM pais
    INNER JOIN provincia ON pais.id = provincia.idpais
WHERE pais.nombre LIKE "%arg%";
SELECT pais.nombre AS Pais,
    provincia.nombre AS Provincia,
    departamento.nombre AS Departamento
FROM provincia
    INNER JOIN departamento ON provincia.id = departamento.idprovincia
    INNER JOIN pais ON provincia.idpais = pais.id
WHERE provincia.nombre LIKE "Buenos Aires"
LIMIT 20;

SELECT pais.nombre AS Pais,
    provincia.nombre AS Provincia,
    departamento.nombre AS Departamento,
    superficie.valor AS Superficie
FROM provincia
    INNER JOIN departamento ON provincia.id = departamento.idprovincia
    INNER JOIN pais ON provincia.idpais = pais.id
    INNER JOIN superficie ON departamento.id = superficie.idDepartamento
WHERE provincia.nombre LIKE "Buenos Aires"
LIMIT 20;

SELECT pais.nombre AS Pais,
    provincia.nombre AS Provincia,
    departamento.nombre AS Departamento,
    poblacion.valor AS Habitantes,
    anio.numero AS Anio
FROM provincia
    INNER JOIN departamento ON provincia.id = departamento.idprovincia
    INNER JOIN pais ON provincia.idpais = pais.id
    INNER JOIN poblacion ON departamento.id = poblacion.idDepartamento
    INNER JOIN anio ON anio.id=poblacion.idAnio
WHERE provincia.nombre LIKE "Buenos Aires" AND pais.nombre LIKE "Argentina" AND anio.numero = 2010
ORDER BY poblacion.valor DESC
-- ORDENAR DESC (descendente) o ASC (ascendente) --
LIMIT 20;
