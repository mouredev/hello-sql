/*
ALIAS
Clase 3: https://twitch.tv/videos/1953432950
*/

-- Establece el alias 'Fecha de inicio en programación' a la columna init_date
SELECT name, init_date AS 'Fecha de inicio en programación' FROM users WHERE name = 'Brais'

-- Consulta igual que la anterior. Representa la posibilidad de usar comillas dobles para cadenas
SELECT name, init_date AS "Fecha de inicio en programación" FROM users WHERE name = "Brais"