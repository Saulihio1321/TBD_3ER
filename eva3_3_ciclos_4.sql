delimiter $$
create function sumatoria(num int)
returns int deterministic
begin
	declare resu int default 1;
    
    facto: loop
    -- sumatoria de 5
		set resu = resu + num;
        set num = num - 1;
        if num = 1 then
			leave facto; 
        end if;
    end loop facto;
		
    return resu;
end$$
delimiter ;