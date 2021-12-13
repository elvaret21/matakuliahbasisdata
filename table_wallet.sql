-- Table wallet
use penjualan_otopart;
create table wallet
(	
	  id_customers	VARCHAR(10) not null,
  	id		varchar(10) not null,
    balance		int not null default 0,
    primary key(id_customers),
    unique key id_unique (id),
    constraint fk_wallet_customers
		foreign key (id) references customers (id_customers)
)engine = innoDB;


insert into wallet (id) 
values (1),(2),(3),(4),(5),(6),(7),(8),(9),(10);

drop table wallet;

-- Tabel relasi
select * from wallet;
describe wallet;
select customers.email, wallet.balance
from wallet join customers on (wallet.id_customers= customers.id);
