/*
INSERT
Lección 11.1: https://youtu.be/OuJerKzV5T0?t=10370
*/

-- Inserta un registro con identificador, nombre y apellido en la tabla "users"
INSERT INTO users (user_id, name, surname) VALUES (8, 'María', 'López')

-- Inserta un registro con nombre y apellido en la tabla "users"
INSERT INTO users (name, surname) VALUES ('Paco', 'Pérez')

-- Inserta un registro con identificador no correlativo, nombre y apellido en la tabla "users"
INSERT INTO users (user_id, name, surname) VALUES (11, 'El', 'Merma')