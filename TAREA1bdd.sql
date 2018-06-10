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

//CREAR UNA NUEVA COLUMNA

ALTER TABLE Instrumentos ADD COLUMN caracteristicas TEXT DEFAULT FALSE 


//NOT NULL A UNA COLUMNA

ALTER TABLE Instrumentos ALTER COLUMN caracteristicas SET NOT NULL


//INGRESA Y ACTUALIZA LOS VALORES A UNA NUEVA COLUMNA

UPDATE Instrumentos SET caracteristicas = 'La guitarra debe ser cambiada' WHERE id=1 
UPDATE Instrumentos SET caracteristicas = 'El tambor es un buen instrumento' WHERE id=2 
UPDATE Instrumentos SET caracteristicas = 'El piano esta sin una tecla' WHERE id=3 
UPDATE Instrumentos SET caracteristicas = 'la trompeta esta muy dañada' WHERE id=4 
UPDATE Instrumentos SET caracteristicas = 'La flauta ya no suena como antes' WHERE id=5 


//QUITAR UN NOT NULL

ALTER TABLE Instrumentos ALTER COLUMN caracteristicas DROP NOT NULL

//BORRAR UNA COLUMNA


ALTER TABLE Instrumentos DROP COLUMN caracteristicas
