create table product (
	product_id		bigint				primary key,
	name			varchar(50)			not null,
	manufacturer    varchar(50)         not null
)

create table nutrient (
	nutrient_id		bigint				primary key,
	product_id		bigint,
	protein			double precision	not null,
	carbohydrates	double precision	not null,
	fat				double precision	not null,
	serving_size	double precision	not null,
	serving_unit	varchar(30)			not null,
	calories		double precision	generated always as (protein * 4 + carbohydrates * 4 + fat * 9) stored,
	foreign key (product_id) references product(product_id)
)

insert into product values
(1, 'Sausage Egg McMuffin', 'McDonald''s'),
(2, 'Quest Bar', 'Quest'),
(3, 'Super Hawaiian', 'Pizza Nova')

insert into nutrient values
(1, 1, 21, 30, 27, 1, 'sandwich'),
(2, 2, 21, 22, 8, 1, 'bar'),
(3, 3, 0, 82, 26, 1, 'slice')
