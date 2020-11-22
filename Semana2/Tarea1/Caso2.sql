
CREATE DATABASE calificaciones;

\c calificaciones

CREATE TABLE curso(
    id SERIAL,
    nombre VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE departamento(
    id SERIAL,
    nombre VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE profesores(
    id SERIAL,
    nombre VARCHAR(255),
    id_departamento INT,
    PRIMARY KEY (id),
    FOREIGN KEY (id_departamento) REFERENCES departamento(id)
);

CREATE TABLE estudiantes(
    id SERIAL,
    rut VARCHAR(255), 
    nombre VARCHAR(255),
    id_curso INT,
    PRIMARY KEY (id),
    FOREIGN KEY (id_curso) REFERENCES curso(id)
);

CREATE TABLE pruebas(
    id SERIAL,
    notas INT,
    id_profesores INT,
    id_alumnos INT,
    PRIMARY KEY (id),
    FOREIGN KEY (id_profesores) REFERENCES profesores(id),
    FOREIGN KEY (id_alumnos) REFERENCES estudiantes(id)
);