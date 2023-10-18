/*
WHERE
Clase 2: https://twitch.tv/videos/1949226275
*/

-- Filtra todos los datos de la tabla "users" con edad igual a 15
SELECT * FROM users WHERE age = 15;

-- Filtra todos los nombres de la tabla "users" con edad igual a 15
SELECT name FROM users WHERE age = 15;

-- Filtra todos los nombres distintos de la tabla "users" con edad igual a 15
SELECT DISTINCT name FROM users WHERE age = 15;

-- Filtra todas las edades distintas de la tabla "users" con edad igual a 15
SELECT DISTINCT age FROM users WHERE age = 15;