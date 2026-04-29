delimiter $$
create function dia_semana(dia int)
returns varchar(10) deterministic
begin
	declare dia_letra varchar(10);
    case dia
    when 1 then set dia_letra = "Domingo";
    when 2 then set dia_letra = "Lunes";
    when 3 then set dia_letra = "Martes";
    when 4 then set dia_letra = "Miercoles";
    when 5 then set dia_letra = "Jueves";
    when 6 then set dia_letra = "Viernes";
    when 7 then set dia_letra = "Sabado";
    else set dia_letra = "No valido";
    end case;
    return dia_letra;
end$$
delimiter ;