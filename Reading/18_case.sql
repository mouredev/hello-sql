/*
CASE
Clase 3: https://twitch.tv/videos/1953432950
*/

-- Obtiene todos los datos de la tabla "users" y establece condiciones de visualización de cadenas de texto según el valor de la edad 
SELECT *,
CASE 
	WHEN age > 18 THEN 'Es mayor de edad'
    WHEN age = 18 THEN 'Acaba de cumplir la mayoría de edad'
    ELSE 'Es menor de edad'
END AS '¿Es mayor de edad?'
FROM users;

-- Obtiene todos los datos de la tabla "users" y establece condiciones de visualización de valores booleanos según el valor de la edad 
SELECT *,
CASE 
	WHEN age > 17 THEN True
    ELSE False
END AS '¿Es mayor de edad?'
FROM users;