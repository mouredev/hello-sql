/*
LIMIT
Clase 2: https://twitch.tv/videos/1949226275
*/

-- Obtiene las 3 primeras filas de la tabla "users"
SELECT * FROM users LIMIT 3;

-- Obtiene las 32 primeras filas de la tabla "users" con email distinto a sara@gmail.com o edad igual a 15
SELECT * FROM users WHERE NOT email = 'sara@gmail.com' OR age = 15 LIMIT 2;