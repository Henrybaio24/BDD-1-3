CREATE TABLE Instrumentos(
id Serial PRIMARY KEY,
nombre text NOT NULL,
tipo text NOT NULL,
tamaño int NOT NULL,
material varchar(50)

);

//MUESTRA LA TABLA
select * from Instrumentos

//INSERTAR VALORES
INSERT INTO Instrumentos(nombre,tipo,tamaño,material)
VALUES ('guitarra','cuerda',120,'tabla' );

INSERT INTO Instrumentos(nombre,tipo,tamaño,material)
VALUES ('tambor','percusion',300,'madera' );

INSERT INTO Instrumentos(nombre,tipo,tamaño,material)
VALUES ('piano','percusion',150,'madera' );

INSERT INTO Instrumentos(nombre,tipo,tamaño,material)
VALUES ('trompeta','viento',100,'metal' );

INSERT INTO Instrumentos(nombre,tipo,tamaño,material)
VALUES ('flauta','viento',40,'madera' );

//NUEVA TABLA

CREATE TABLE estado(
id Serial PRIMARY KEY,

descripcion text NOT NULL
);

select * from estado


//INGRESAR VALORES

INSERT INTO estado(descripcion)
VALUES ('El instrumento esta en muy buen estado' );

INSERT INTO estado(descripcion)
VALUES ('El instrumento esta en buen estado');

INSERT INTO estado(descripcion)
VALUES ('El instrumento esta en muy mal estado');

INSERT INTO estado(descripcion)
VALUES ('El instrumento esta en muy buen estado');

INSERT INTO estado(descripcion)
VALUES ('El instrumento merece ser cambiado');


//FORANEA

ALTER TABLE Instrumentos ADD FOREIGN KEY (idEstado) REFERENCES estado(id);


UPDATE Instrumentos SET idEstado = 1 WHERE id=3
UPDATE Instrumentos SET idEstado = 2 WHERE id=2
UPDATE Instrumentos SET idEstado = 3 WHERE id=1
UPDATE Instrumentos SET idEstado = 4 WHERE id=4
UPDATE Instrumentos SET idEstado = 5 WHERE id=1
UPDATE Instrumentos SET idEstado = 1 WHERE id=5


SELECT Instrumentos.nombre, Instrumentos.tipo
FROM Instrumentos INNER JOIN estado 
ON Instrumentos.idestado= estado.id; 





