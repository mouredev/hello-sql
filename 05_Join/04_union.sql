/*
UNION (FULL JOIN)
Lección 17.4: https://youtu.be/OuJerKzV5T0?t=17536
*/

-- UNION elimina duplicados

-- Obtiene todos los id de usuarios de las tablas dni y usuarios (exista o no relación)
SELECT users.user_id AS u_user_id, dni.user_id AS d_user_id
FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id
UNION
SELECT users.user_id AS user_id, dni.user_id AS d_user_id
FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id;

-- Obtiene todos los datos de las tablas dni y usuarios (exista o no relación)
SELECT *
FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id
UNION
SELECT *
FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id;

-- UNION ALL mantiene duplicados