delimiter $$
create function sumatoria_repeat(num int)
returns int deterministic
begin
declare resu int default 1;
repeat 
set resu = resu + num;
set num = num - 1;
until num = 1 end repeat;
return resu;

end$$

delimiter ;