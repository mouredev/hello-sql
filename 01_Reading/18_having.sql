/*
HAVING
Lección 10.12: https://youtu.be/OuJerKzV5T0?t=9265
*/

-- Cuenta cuantas filas contienen un dato no nulo en el campo edad de la tabla "users" mayor que 3
SELECT COUNT(age) FROM users HAVING COUNT(age) > 3