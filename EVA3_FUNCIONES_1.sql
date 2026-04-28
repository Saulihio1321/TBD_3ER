create function saludo(mensaje varchar(50))
returns varchar(60) deterministic
return concat('hola', mensaje);DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `saludo`(mensaje varchar(50)) RETURNS varchar(60) CHARSET utf8mb4
    DETERMINISTIC
return concat('hola', mensaje)$$
DELIMITER ;
