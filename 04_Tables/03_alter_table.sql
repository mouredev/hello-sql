/*
ALTER TABLE
Clase 4: https://twitch.tv/videos/1959296112
*/

-- ADD: Añade un nuevo atributo surname a la tabla "persons8"
ALTER TABLE persons8
ADD surname varchar(150);

-- RENAME COLUMN: Renombra el atributo surname a description en la tabla "persons8"
ALTER TABLE persons8
RENAME COLUMN surname TO description;

-- MODIFY COLUMN: Modifica el tipo de dato del atributo description en la tabla "persons8"
ALTER TABLE persons8
MODIFY COLUMN description varchar(250);

-- DROP COLUMN: Elimina el atributo description en la tabla "persons8"
ALTER TABLE persons8
DROP COLUMN description;