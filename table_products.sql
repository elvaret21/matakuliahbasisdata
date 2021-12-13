-- Table Product
use penjualan_otopart;

create table products
(
id_products varchar (10) not null,
name_products varchar(100) not null,
description text,
price int unsigned not null,
quantity int unsigned not null default 0,
primary key (id_products)
)engine=innoDB; 

describe table products;
drop table products;
select *from products;

insert into products(id_products, name_products, description, price, quantity)
values ('P1111','Head Unit Android Auto carPlay 9" inch PRO+DVR Datsun Go Orca','4+64GB', 5299000, 5),
	   ('P1112','Head Unit Android Auto CarPlay 9" inch Pro+DVR Harrier 2004-2013','4+64GB',4899000,5),
       ('P1113','Head Unit Android Auto CarPlay 9" inch PRO+ Plus Grand New Avanza/Xenia 2019-2020 ORCA','4+64GB','4699000',5),
       ('P1114','Head Unit Android Auto CarPlay 9" inch PRO+ Plus Avanza/Xenia ORCA','4+64GB',4899000,5),
       ('P1115','Head Unit Android Auto CarPlay 9" inch PRO+ Plus AGYA/AYLA ORCA','4+64GB',4899000,5),
       ('P1116','Head Unit Android Auto CarPlay 7" inch PRO+ Plus Suzuki Grand Vitara ORCA','2+32GB',3199000,5),
       ('P1117','Head Unit Android Auto CarPlay 7" inch PRO+ Plus Toyota YARIS 2005-2013 ORCA','2+32GB',3099000,5),
       ('P1118','Head Unit Android 9" inch Toyota YARIS 2005-2013 ORCA ECO','2+16GB',2099000,5),
       ('P1119','Head Unit Android 9" inch RUSH/TERIOS 2011-2017 ORCA ECO','2+16GB',2299000,5),
       ('P1120','Head Unit Android Auto CarPlay 9" inch Suzuki Ertiga/XL7 2018-2021 ORCA','2+32GB',3199000,5),
       ('P2111','Speaker Subwofer 8" inch','',3650000,3),
       ('P2112','Speaker Split Component','3 Way (Midbass + Midrange + Tweeter)',3299000,4),
       ('P2113','Speaker Split 2 Way Cello Audio Performance PRO (2021)','2 Way (Midbass + Midrange)',2699000,6),
       ('P3111','Lampu Mobil LED Philips H8','',1399000,10),
       ('P3112','Lampu Mobil LED Carbon P2 5700K','',1499000,12);
alter table products
add column id_category varchar(10);


alter table products
    add constraint fk_products_categories
        foreign key (id_category) references categories(id);

show create table products;




select * from products
where id_category = 1;

select * from products
where id_category = 3;

select*from products where name_products !='Head Unit';

select * from products
where price between 2000000 and 3000000;






select 
	id_products 	as	'Kode',
    name_products 	as 	'Nama',
    price		    as	'Harga',
	quantity	    as	'Stok'
from products;

select 
	p.id_products   as	'Kode',
    p.name_products	as 	'Nama',
    p.price		as	'Harga',
	p.quantity	as	'Stok'
from products as p;

SELECT * FROM products;
describe products;
