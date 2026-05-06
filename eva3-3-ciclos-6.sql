delimiter $$
create function sumatoria_while(num int)
returns int deterministic
begin
declare resu int default 1;

while num > 1 do
set resu = resu + num;
set num = num - 1;
end while;
return resu;
end$$
delimiter ;