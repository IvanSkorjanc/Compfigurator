# sipanje na server
/*
c:\xampp\mysql\bin\mysql -uedunova -pedunova --default_character_set=utf8 < "C:\pokušaj završnog\compfigurator.sql"
*/

drop database if exists compfigurator;
create database compfigurator default character set utf8;
use compfigurator;

create table konfiguracija (
sifra int not null primary key auto_increment,
naziv varchar(100) not null,
opis varchar(50) not null,
cijena decimal(18,2) not null
);

create table komponenta (
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
opis varchar(100) not null,
proizvodac int
);

create table proizvodac (
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
zemlja varchar(50) not null
);

create table dio (
konfiguracija int,
komponenta int
);


alter table dio add foreign key (konfiguracija) references konfiguracija(sifra);
alter table dio add foreign key (komponenta) references komponenta(sifra);

alter table komponenta add foreign key (proizvodac) references proizvodac(sifra);


insert into konfiguracija 
(naziv,opis,cijena)
values
# šifra 1
('Računalo Gamer Cyber 9700','AMD 10 9700, 8GB DDR4, 1TB HDD ,AMD Radeon RX550 2GB',3367.37),
# šifra 2
('Računalo Gamer Cyber GT','AMD 10 9700, 8GB DDR4, 1TB HDD, AMD Radeon RX560 2GB',3630.53),
# šifra 3
('Računalo Gamer HYDRA','AMD Ryzen 3 2200G, 8GB DDR4, 1TB HDD, AMD Radeon RX550 2GB',3998.95),
# šifra 4
('Računalo Gamer HYDRA GTX','AMD Ryzen 3 2200G, 8GB DDR4, 1TB HDD, NVIDIA GTX1650 4GB',4420.00),
# šifra 5
('Računalo Gamer Profundis','Intel Core i3 9100F, 8GB DDR4, 1TB HDD, NVIDIA GTX1650 4GB',4735.79),
# šifra 6
('Računalo Gamer HYDRA Ryzen 5','AMD Ryzen 5 2400G, 8GB DDR4, 256GB NVMe SSD, AMD RADEON RX560 4GB',4841.05),
# šifra 7
('Računalo Gamer Dominator Ti','Intel Core i5 8400, 8GB DDR4, 1TB HDD, NVIDIA GTX1050 2GB',4841.05),
# šifra 8
('Računalo Gamer Profundis Pro','Intel Core i5 9400F, 8GB DDR4, 1TB HDD, NVIDIA GTX1650 4GB',5156.84);



insert into proizvodac
(naziv,zemlja)
values
# šifra 1
('Intel','Amerika'),
# šifra 2
('Amd','Amerika'),
# šifra 3
('Nvidia','Amerika'),
# šifra 4
('Asus','Tajvan'),
# šifra 5
('ADATA','Tajvan'),
# šifra 6
('Seagate','Amerika'),
# šifra 7
('Maxtor','Amerika'),
# šifra 8
('Hitachi','Japan'),
# šifra 9
('Western Digital','Amerika'),
# šifra 10
('IBM','Amerika'),
# šifra 11
('Samsung','Južna Koreja'),
# šifra 12
('Fujitsu','Japan'),
# šifra 13
('ASRock','Tajvan'),
# šifra 14
('Gigabyte','Tajvan'),
# šifra 15
('MSI','Tajvan'),
# šifra 16
('Akyga','Poljska'),
# šifra 17
('Corsair','Amerika'),
# šifra 18
('FSP Group','Tajvan');

insert into komponenta
(naziv,opis,proizvodac)
values
# šifra 1
('AMD A10 9700','up to 3.8GHz, Radeon R7, AM4, 65W, box',2),
# šifra 2
('AMD Radeon RX550','2GB DDR5',2),
# šifra 3
('AMD Radeon RX560','2GB DDR5',2),
# šifra 4
('AMD Ryzen 3 2200G','up to 3.7GHz, AM4',2),
# šifra 5
('Nvidia GeForce GTX1650','4GB GDDR4',3),
# šifra 6
('Intel Core i3 9100F','up to 4.2GHz, Coffee Lake',1),
# šifra 7
('AMD Ryzen 5 2400G','up to 3.9GHz, AM4',2),
# šifra 8
('AMD RADEON RX560 4GB','AMD RADEON RX560 4GB DDR5',2),
# šifra 9
('Intel Core i5 8400','up to 4.0GHz, Coffee Lake',1),
# šifra 10
('NVIDIA GTX1050 2GB','2GB DDR5',3),
# šifra 11
('Intel Core i5 9400F','up to 4.10GHz, Coffee Lake',1),
# šifra 12
('NVIDIA GTX1650 4GB','4GB GDDR5',3);


insert into dio
(konfiguracija,komponenta)
values
# šifra 1
(1,1),
# šifra 2
(1,2),
# šifra 3
(2,1),
# šifra 4
(2,3),
# šifra 5
(3,4),
# šifra 6
(3,2),
# šifra 7
(4,4),
# šifra 8
(4,5),
# šifra 9
(5,5),
# šifra 10
(5,6),
# šifra 11
(6,7),
# šifra 12
(6,8),
# šifra 13
(7,9),
# šifra 14
(7,10),
# šifra 15
(8,11),
# šifra 16
(8,12);


# šta dalje?