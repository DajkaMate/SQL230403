delimiter //
create procedure curcrunchy(in mennyi integer, in viszonyszam double(12,2))
begin
	declare a int;
    declare b double(12,2);
    declare kesz int default 0;
    declare cur1 cursor for select * from eladas order by PIZZAVALUE desc limit mennyi;
    declare continue handler for not found set kesz = 1;
    open cur1;
    repeat
		fetch cur1 into a,b;
        if not kesz then select a as s_id, b as SUMSALES;
        select pizza_sales.s_id, pizzax.p_name, (sales_food.s_value / viszonyszam) as arány from SALES_FOOD
		inner join PROD_TYPE on pizza_sales.s_id=PROD_TYPE.s_id
		inner join PRODUCT on PROD_TYPE.p_id=PRODUCT.p_id
        where pizza_sales.s_id = a;
        end if;
	until kesz end repeat;
    close cur1;
end //
Delimiter ;