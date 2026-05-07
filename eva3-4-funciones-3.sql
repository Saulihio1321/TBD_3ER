delimiter $$

create function generar_rfc(nombre varchar(50), ap_pat varchar(50), ap_mat varchar(50), fecha_nac date)
returns varchar(10)
deterministic
begin 
    declare rfc varchar(10) default "";
    set rfc = concat(
        left(ap_pat, 1),
        substring(ap_pat, regexp_instr(substring(ap_pat, 2), '[AEIOU]') + 1, 1),
        
        if(ap_mat = "" or ap_mat is null, 'X', left(ap_mat, 1)),
        left(nombre, 1),
        date_format(fecha_nac, '%y%m%d')
    );

    return upper(rfc);
end $$

delimiter ;