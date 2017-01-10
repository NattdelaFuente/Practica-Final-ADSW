/*
Created: 02/01/2017
Modified: 09/01/2017
Model: PostgreSQL 9.2
Database: PostgreSQL 9.2
*/

-- Create tables section -------------------------------------------------

-- Table usuarios

CREATE TABLE "usuarios"(
 "username" Varchar NOT NULL,
 "password" Varchar,
 "email" Varchar NOT NULL
)
WITH (OIDS=FALSE)
;

-- Add keys for table usuarios

ALTER TABLE "usuarios" ADD CONSTRAINT "Key1" PRIMARY KEY ("username")
;

ALTER TABLE "usuarios" ADD CONSTRAINT "email" UNIQUE ("email")
;

-- Table salas

CREATE TABLE "salas"(
 "idsala" Serial NOT NULL,
 "filas" Integer,
 "columnas" Integer,
 "nombresala" Varchar NOT NULL,
 "map" Varchar
)
WITH (OIDS=FALSE)
;

-- Add keys for table salas

ALTER TABLE "salas" ADD CONSTRAINT "Key2" PRIMARY KEY ("idsala")
;

ALTER TABLE "salas" ADD CONSTRAINT "nombresala" UNIQUE ("nombresala")
;

-- Table peliculas

CREATE TABLE "peliculas"(
 "nombre" Varchar NOT NULL,
 "idpelicula" Serial NOT NULL,
 "sinopsis" Varchar,
 "paginaoficial" Varchar,
 "genero" Varchar,
 "nacionalidad" Varchar,
 "duracion" Integer,
 "anio" Integer,
 "distribuidora" Varchar,
 "director" Varchar,
 "actores" Varchar,
 "clasificacion" Varchar,
 "otros" Varchar,
 "imagen" Varchar,
 "trailer" Varchar,
 "titulooriginal" Varchar
)
WITH (OIDS=FALSE)
;

-- Add keys for table peliculas

ALTER TABLE "peliculas" ADD CONSTRAINT "Key3" PRIMARY KEY ("idpelicula")
;

ALTER TABLE "peliculas" ADD CONSTRAINT "nombre" UNIQUE ("nombre")
;

-- Table sesiones

CREATE TABLE "sesiones"(
 "idsesion" Serial NOT NULL,
 "idpelicula" Integer NOT NULL,
 "idsala" Integer NOT NULL,
 "fechainicio" Varchar,
 "horainicio" Varchar,
 "milisinicio" Bigint,
 "fechafinal" Varchar,
 "horafinal" Varchar,
 "milisfinal" Bigint
)
WITH (OIDS=FALSE)
;

-- Add keys for table sesiones

ALTER TABLE "sesiones" ADD CONSTRAINT "Key4" PRIMARY KEY ("idsesion")
;

-- Table reservas

CREATE TABLE "reservas"(
 "idreserva" Serial NOT NULL,
 "username" Varchar NOT NULL,
 "idsesion" Integer NOT NULL,
 "tarjeta" Varchar
)
WITH (OIDS=FALSE)
;

-- Add keys for table reservas

ALTER TABLE "reservas" ADD CONSTRAINT "Key5" PRIMARY KEY ("idreserva")
;

-- Table comentarios

CREATE TABLE "comentarios"(
 "idpelicula" Integer NOT NULL,
 "comentario" Varchar,
 "fecha" Timestamp,
 "username" Varchar NOT NULL,
 "idcomentario" Serial NOT NULL
)
WITH (OIDS=FALSE)
;

-- Add keys for table comentarios

ALTER TABLE "comentarios" ADD CONSTRAINT "Key6" PRIMARY KEY ("idcomentario")
;

-- Table entradas

CREATE TABLE "entradas"(
 "fila" Integer,
 "columna" Integer,
 "idreserva" Integer NOT NULL,
 "identrada" Serial NOT NULL
)
WITH (OIDS=FALSE)
;

-- Add keys for table entradas

ALTER TABLE "entradas" ADD CONSTRAINT "Key7" PRIMARY KEY ("identrada")
;

-- Create relationships section ------------------------------------------------- 

ALTER TABLE "sesiones" ADD CONSTRAINT "es vista en" FOREIGN KEY ("idpelicula") REFERENCES "peliculas" ("idpelicula") ON DELETE CASCADE ON UPDATE NO ACTION
;

ALTER TABLE "sesiones" ADD CONSTRAINT "proyecta" FOREIGN KEY ("idsala") REFERENCES "salas" ("idsala") ON DELETE CASCADE ON UPDATE NO ACTION
;

ALTER TABLE "reservas" ADD CONSTRAINT "Realiza" FOREIGN KEY ("username") REFERENCES "usuarios" ("username") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "reservas" ADD CONSTRAINT "tiene" FOREIGN KEY ("idsesion") REFERENCES "sesiones" ("idsesion") ON DELETE CASCADE ON UPDATE NO ACTION
;

ALTER TABLE "comentarios" ADD CONSTRAINT "tiene" FOREIGN KEY ("idpelicula") REFERENCES "peliculas" ("idpelicula") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "comentarios" ADD CONSTRAINT "realiza" FOREIGN KEY ("username") REFERENCES "usuarios" ("username") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "entradas" ADD CONSTRAINT "contiene" FOREIGN KEY ("idreserva") REFERENCES "reservas" ("idreserva") ON DELETE CASCADE ON UPDATE NO ACTION
;





