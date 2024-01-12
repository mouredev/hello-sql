/*
LEFT JOIN
Lección 17.2: https://youtu.be/OuJerKzV5T0?t=17045
*/

-- Obtiene los datos de todos los usuarios junto a su dni (lo tenga o no)
SELECT * FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id;

-- Obtiene el nombre de todos los usuarios junto a su dni (lo tenga o no)
SELECT name, dni_number FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id;

-- Obtiene todos los dni junto al nombre de su usuario (lo tenga o no)
SELECT name, dni_number FROM dni
LEFT JOIN users
ON users.user_id = dni.user_id;

-- Obtiene el nombre de todos los usuarios junto a sus lenguajes (los tenga o no)
SELECT users.name, languages.name
FROM users
LEFT JOIN users_languages ON users.user_id=users_languages.user_id
LEFT JOIN languages ON users_languages.language_id=languages.language_id;