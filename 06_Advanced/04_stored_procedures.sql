/*
STORED PROCEDURES
Clase 6: https://twitch.tv/videos/1997815022
*/

-- Crea un procedimiento almacenado llamado "p_all_users" que obtiene todos los datos de "users"
DELIMITER //
CREATE PROCEDURE p_all_users()
BEGIN
	SELECT * FROM users;
END//

-- Invoca al procedimiento almacenado llamado "p_all_users"
CALL p_all_users;

-- Crea un procedimiento almacenado llamado "p_age_users" parametrizado para
-- obtener usuarios con edad variable
DELIMITER //
CREATE PROCEDURE p_age_users(IN age_param int)
BEGIN
	SELECT * FROM users WHERE age = age_param;
END//

-- Invoca al procedimiento almacenado llamado "p_age_users" con un parámetro de valor 30
CALL p_age_users(30);

-- Elimina el procedimiento almacenado llamado "p_age_users"
DROP PROCEDURE p_age_users;