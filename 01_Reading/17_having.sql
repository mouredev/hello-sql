/*
HAVING
Clase 3: https://twitch.tv/videos/1953432950
*/

-- Cuenta cuantas filas contienen un dato no nulo en el campo edad de la tabla "users" mayor que 3
SELECT COUNT(age) FROM users HAVING COUNT(age) > 3