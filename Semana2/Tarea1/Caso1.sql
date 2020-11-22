  
CREATE DATABASE trabajadores;

\c trabajadores

CREATE TABLE departamento(
    id SERIAL,
    nombre_departamento VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE trabajadores(
    id SERIAL,
    rut VARCHAR(255), 
    nombre VARCHAR(255),
    direccion VARCHAR(255),
    id_departamento INT,
    PRIMARY KEY (id),
    FOREIGN KEY (id_departamento) REFERENCES departamento(id)
);

CREATE TABLE liquidaciones(
    id SERIAL,
    trabajadores INT,
    archivo_dirve VARCHAR(255),
    PRIMARY KEY (id),
    FOREIGN KEY (id_trabajadores) REFERENCES trabajadores(id)
);


}