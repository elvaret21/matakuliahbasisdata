-- Table Category
use penjualan_otopart;

create table categories
(
	id			varchar(10) NOT NULL,
    name		varchar(100)	not null,
    primary key (id)
)engine = InnoDB;
describe table categories;
select * from categories;
drop table categories;

insert into categories(id, name) values
('0001','Head Unit'),
('0002','Speaker'),
('0003','Lampu');

update products
set id_category ='0001'
where id_products In ('P1111','P1112','P1113','P1114','P1115','P1116','P1117','P1118','P1119','P1120');

update products
set id_category ='0002'
where id_products In ('P2111','P2112','P2113');

update products
set id_category ='0003'
where id_products In ('P3111','P3112');

select products.id_products, products.name_products, categories.name
from products
join categories on (categories.id = products.id_category);

