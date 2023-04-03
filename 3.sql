delimiter //
create procedure curpelda(in mennyi integer)
begin 
	declare a int;
    declare b double(12,2);
    declare kesz int default 0;
    declare cur1 cursor for select * from eladas
    order by PIZZAVALUE desc 
    limit mennyi;
    declare continue handler for not found set kesz = 1;
    open cur1;
    repeat
		fetch cur1 into a,b;
        if not kesz then select * from pizzax where a = p_id and b = s_id;
        end if;
    until kesz end repeat;
    close cur1;
end //
delimiter ;