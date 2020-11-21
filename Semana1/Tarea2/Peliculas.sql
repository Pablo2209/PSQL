
CREATE DATABASE peliculas;


CREATE TABLE peliculas (
id INT PRIMARY KEY,
pelicula VARCHAR(255),
anio INT,
director VARCHAR(120)
);


CREATE TABLE reparto (
pelicula_reparto INT, 
actor VARCHAR(120), 
FOREIGN KEY (pelicula_reparto) REFERENCES peliculas(id)
);


\COPY peliculas FROM './peliculas.csv' csv header;
\COPY reparto FROM './reparto.csv' csv header;


SELECT actor, pelicula , anio, director from reparto INNER JOIN 
peliculas on reparto.pelicula_reparto = peliculas.id WHERE pelicula = 'Titanic';


SELECT pelicula  from peliculas INNER JOIN 
reparto on reparto.pelicula_reparto = peliculas.id WHERE actor = 'Harrison Ford';

SELECT director, COUNT(*) as cantidad FROM peliculas GROUP BY director ORDER BY cantidad DESC LIMIT 10;

SELECT COUNT(DISTINCT actor) FROM reparto;

SELECT pelicula, anio FROM peliculas WHERE anio BETWEEN 1990 and 1999 ORDER BY pelicula ASC;

SELECT actor FROM reparto INNER JOIN peliculas ON reparto.pelicula_reparto = peliculas.id WHERE anio = 2001;

SELECT actor FROM reparto INNER JOIN peliculas ON reparto.pelicula_reparto = peliculas.id ORDER BY anio DESC, pelicula DESC LIMIT 1;