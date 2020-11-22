
CREATE DATABASE prestamo;

\c prestamo

CREATE TABLE editorial(
    id SERIAL,
    editorial VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE autor(
    id SERIAL,
    autor VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE libros(
    id SERIAL,
    titulo VARCHAR(255),
    id_editorial INT,
    PRIMARY KEY (id),
    FOREIGN KEY (id_editorial) REFERENCES editorial(id)
);

CREATE TABLE libros_autor( 
    id SERIAL,
    id_autor INT,
    id_libros INT,
    PRIMARY KEY (id),
    FOREIGN KEY (id_autor) REFERENCES autor(id),
    FOREIGN KEY (id_libros) REFERENCES libros(id)
);

CREATE TABLE lector(
    id SERIAL,
    lector VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE prestamos(
    id SERIAL,
    id_libros INT,
    id_lector INT,
    fecha DATE,
    devolucion DATE,
    FOREIGN KEY (id_lecto) REFERENCES lector(id),
    FOREIGN KEY (id_libros) REFERENCES libros(id)
);