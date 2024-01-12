/*
INNER JOIN (JOIN)
Lección 17.1: https://youtu.be/OuJerKzV5T0?t=16101
*/

-- Realiza un JOIN de manera incorrecta, ya que no existe un campo de relación
SELECT * FROM users
INNER JOIN dni;

-- Obtiene los datos de los usuarios que tienen un dni 
SELECT * FROM users
INNER JOIN dni
ON users.user_id = dni.user_id;

-- Obtiene los datos de los usuarios que tienen un dni (JOIN es lo mismo que INNER JOIN)
SELECT * FROM users
JOIN dni
ON users.user_id = dni.user_id;

-- Obtiene el nombre y el dni de los usuarios que tienen un dni y los ordena por edad
SELECT name, dni_number FROM users
JOIN dni
ON users.user_id = dni.user_id
ORDER BY age ASC;

-- Obtiene los datos de los usuarios que tienen empresa
SELECT * FROM users
JOIN companies
ON users.company_id = companies.company_id;

-- Obtiene los datos de las empresas que tienen usuarios
SELECT * FROM companies
JOIN users
ON users.company_id = companies.company_id;

-- Obtiene el nombre de las empresas junto al nombre de sus usuarios
SELECT companies.name, users.name FROM companies
JOIN users
ON companies.company_id = users.company_id;

-- Obtiene los nombres de usuarios junto a los lenguajes que conocen
SELECT users.name, languages.name
FROM users_languages
JOIN users ON users_languages.user_id=users.user_id
JOIN languages ON users_languages.language_id=languages.language_id;

-- Obtiene los nombres de usuarios junto a los lenguajes que conocen (utilizando otro orden de relación entre tablas)
SELECT users.name, languages.name
FROM users
JOIN users_languages ON users.user_id=users_languages.user_id
JOIN languages ON users_languages.language_id=languages.language_id;