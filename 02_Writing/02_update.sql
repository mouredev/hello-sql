/*
UPDATE
Clase 3: https://twitch.tv/videos/1953432950
*/

-- Estable el valor 21 para la edad del registro de la tabla "users" con identificador igual a 11
UPDATE users SET age = '21' WHERE user_id = 11

-- Estable el valor 20 para la edad del registro de la tabla "users" con identificador igual a 11
UPDATE users SET age = '20' WHERE user_id = 11

-- Estable edad y una fecha para registro de la tabla "users" con identificador igual a 11
UPDATE users SET age = 20, init_date = '2020-10-12' WHERE user_id = 11