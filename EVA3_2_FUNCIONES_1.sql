delimiter $$
create function sumar(num1 int, num2 int)
returns int deterministic
begin
declare resu int default 0; -- inicializacion de variables
set resu = num1 + num2; -- det permite asignar valor a una variable
return resu;
end$$
delimiter ;