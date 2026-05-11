delimiter $$
create procedure contar_cliente(out cont int)
begin
	select count(*) into cont from customer;
end$$
delimiter ;