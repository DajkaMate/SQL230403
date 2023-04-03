drop view if exists eladas;

create view eladas as 
select pizza_sales.s_id, SUM(s_value) as PIZZAVALUE from pizza_sales
inner join PROD_TYPE on pizza_sales.s_id=PROD_TYPE.s_id
inner join pizzax on PROD_TYPE.p_id=pizzax.p_id
group by pizza_sales.s_id;

Select * from eladas
order by PIZZAVALUE DESC
limit 3;