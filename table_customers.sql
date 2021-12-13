-- Table Customer
create table customers
(
	id_customers    varchar(10)	not null,
    email		    varchar(100)not null,
    nama_depan	    varchar(100)not null,
    nama_belakang	varchar(100),
    primary key(id_customers),
    unique key email_unique (email)
)engine=InnoDB;
select * from customers;
describe customers;
drop table customers;
show create table customers;



-- memasukkan data customer
insert into customers (id_customers,email,nama_depan,nama_belakang)
values("C1111",'agi@gmail.com', 'Agi','Jurniawan');

insert into customers (id_customers, email,nama_depan,nama_belakang)
values("C1112",'nurma@gmail.com', 'Nurma','Dewi'),
      ("C1113",'angelee@gmail.com', 'Angelee','jeli'),
      ("C1114",'dono@gmail.com', 'Dono','Setiawan'),
      ("C1115",'elvaret@gmail.com', 'Elvaret',''),
      ("C1116",'rima@gmail.com', 'Rima','Narumiya'),
      ("C1117",'rehab@gmail.com', 'Rehab','Biaban'),
      ("C1118",'elvina@gmail.com', 'Elvina','Tarioka'),
      ("C1119",'yoga@gmail.com', 'Yoga','Gaman'),
      ("C1120",'heeyaa@gmail.com', 'Heeyaa','Huya');

alter table customers
add column NIK varchar (16) not null
after id_customers;

alter table customers
drop column NIK;

update customers 
set NIK = '3221072204140002'
where id_customers = 'C1111';

update customers 
set NIK = '3221072204140012'
where id_customers = 'C1112';

update customers 
set NIK = '3521072204140003'
where id_customers = 'C1113';

update customers 
set NIK = '3721072204140004'
where id_customers = 'C1114';

update customers 
set NIK = '3821072204140005'
where id_customers = 'C1115';

update customers 
set NIK = '3621072204140006'
where id_customers = 'C1116';

update customers 
set NIK = '3121072204140007'
where id_customers = 'C1117';

update customers 
set NIK = '3451072204140008'
where id_customers = 'C1118';

update customers 
set NIK = '3421072204140009'
where id_customers = 'C1119';

update customers 
set NIK = '3321072204140010'
where id_customers = 'C1120';

