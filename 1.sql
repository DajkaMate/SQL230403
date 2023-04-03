drop table if exists pizza_sales;
create table pizza_sales (
	s_Year mediumint not null,
	s_Month tinyint not null,
	s_id int not null,
	s_value double(12,2),
	s_volume double(12,2),
	primary key(s_Year, s_Month, s_id)
);

insert into pizza_sales values 
(2022,01,1,2000,12),
(2022,02,1,2000,14),
(2022,03,1,2000,16),
(2022,04,1,2000,12),
(2022,01,2,2500,10),
(2022,02,2,2500,14),
(2022,03,2,2500,16),
(2022,04,2,2500,12),
(2022,05,2,2500,12),
(2022,06,2,2500,12),
(2022,01,3,3000,12),
(2022,02,3,3000,14),
(2022,03,3,3000,16),
(2022,04,3,3000,12),
(2022,05,3,3000,12),
(2022,06,3,3000,12),
(2022,07,3,3000,19),
(2022,08,3,3000,12);

drop table if exists pizzax;
CREATE TABLE pizzax (
    p_id INT NOT NULL,
    p_name VARCHAR(15),
    PRIMARY KEY (p_id)
);
insert into pizzax values
	(1, 'cheap'),
	(2, 'medium'),
	(3, 'expensive');

drop table if exists PROD_TYPE;
create table if not exists PROD_TYPE
(
	row_num int not null auto_increment,
	s_id int not null,
	p_id int not null,
	primary key (row_num),
	unique key sp(s_id,p_id)	
);

insert into PROD_TYPE(s_id, p_id) values
	(1,1),
	(2,1),
	(3,2),
	(3,3);

