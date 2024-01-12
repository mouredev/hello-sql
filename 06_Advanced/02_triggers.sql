/*
TRIGGERS
Lección 18.2: https://youtu.be/OuJerKzV5T0?t=18961
*/

-- Crea una tabla de historial para usar en el ejemplo
CREATE TABLE `hello_mysql`.`email_history` (
`email_history_id` INT NOT NULL AUTO_INCREMENT,
`user_id` INT NOT NULL,
`email` VARCHAR(100) NULL,
PRIMARY KEY (`email_history_id`),
UNIQUE INDEX `email_history_id_UNIQUE` (`email_history_id` ASC) VISIBLE);

-- Crea un trigger llamado "tg_email" que guarda el email previo en la tabla "email_history" siempre
-- que se actualiza el campo "email" en la tabla "users"

-- DELIMITER es una directiva que sirve para cambiar el delimitador de instrucciones SQL, que por defecto es ;
-- Se utiliza cuando se define un bloque de código como un procedimiento donde se requieren múltiples 
-- instrucciones SQL terminadas con punto y coma dentro de un mismo bloque.
DELIMITER //
CREATE TRIGGER tg_email
AFTER UPDATE ON users
FOR EACH ROW
BEGIN
	IF OLD.email <> NEW.email THEN
		INSERT INTO email_history (user_id, email)
		VALUES (OLD.user_id, OLD.email);
	END IF;
END//

-- Actualiza el campo "email" del usuario 1 la tabla "users" para probar el trigger
UPDATE users SET email = 'mouredev@gmail.com' WHERE user_id = 1

-- Elimina el trigger llamado "tg_email"
DROP TRIGGER tg_email;