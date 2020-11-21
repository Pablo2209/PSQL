CREATE USER pablo_chavez WITH CREATEDB PASSWORD '220910';

CREATE TABLE post (
id INT,
username VARCHAR(255),
creation_date DATE,
content VARCHAR(255),
description VARCHAR(255)
);

INSERT INTO post
(id, username, creation_date)
VALUES
(1, 'PAMELA','05-05-1991');
INSERT 0 1
INSERT INTO post
(id, username)
VALUES
(2, 'CARLOS');

ALTER TABLE post add title varchar (255); 

UPDATE post SET titulo = 'Titulo uno' WHERE id=1;
UPDATE post SET titulo = 'Titulo de carlos' WHERE id=2;

INSERT INTO post (id, username, creation_date, content, description,title)
VALUES (3,'Pedro','1993-12-10', 'contenido1','contenido2','titulo3');

DELETE FROM post WHERE id = 2;

INSERT INTO post (id, username, creation_date, content, description,title)
VALUES (4,'Carlos','2010-03-23', 'Nuevo contenido','Descripcion2','titulo4');

CREATE TABLE comentarios (id INT , date_h TIMESTAMP, content VARCHAR(200), FOREIGN KEY (id) REFERENCES post(id));

INSERT INTO comentarios (id, date_h, content)
VALUES (5,'1990-10-15 17:11:24', 'comentario1');

INSERT INTO comentarios (id, date_h, content)
VALUES (5,'1990-10-15 12:14:35', 'comentario2');

INSERT INTO comentarios (id, date_h, content)
VALUES (5,'1990-10-15 12:15:35', 'comentario3');

INSERT INTO comentarios (id, date_h, content)
VALUES (5,'1990-10-15 12:16:35', 'comentario4');

INSERT INTO post (id, username, date_creation, contenido, descriptions,titulo)
VALUES (6,'Margarita','1990-10-15', 'Contenido de margarita','Esta es la descripcion del primer post de Pedro','titulo del post de margarita');

INSERT INTO comentarios (id, date_h, content)
VALUES (6,'1990-10-16 15:30:35', 'Comentario1');
INSERT INTO comentarios (id, date_h, content)
VALUES (6,'1990-10-16 15:31:35', 'Comentario2');
INSERT INTO comentarios (id, date_h, content)
VALUES (6,'1990-10-16 15:32:35', 'Comentario3');
INSERT INTO comentarios (id, date_h, content)
VALUES (6,'1990-10-16 15:33:35', 'Comentario4');
INSERT INTO comentarios (id, date_h, content)
VALUES (6,'1990-10-16 15:34:35', 'Comentario5');
