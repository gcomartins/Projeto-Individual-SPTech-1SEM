create database HomoUniversalis;
use HomoUniversalis;

create table Usuario (
idUsuario int primary key auto_increment,
Nome varchar(45),
Sobrenome varchar(45),
dataNascimento date,
email varchar(45),
check (email like '%@%'),
senha varchar(45),
-- check ((senha like '%1%' or senha like '%2%' or senha like '%3%' or senha like '%4%' or senha like '%5%' or senha like '%6%'
-- or senha like '%7%' or senha like '%8%' or senha like '%9%') and (senha like '%@%' or senha like '%#%' or senha like '%&%' or senha like '%$%')),
fkAnfitriao int,
foreign key (fkAnfitriao) references Usuario(idUsuario)
) auto_increment = 100;
create table Ranking (
idJogada int primary key auto_increment,
fkUsuario int,
foreign key (fkUsuario) references Usuario(idUsuario),
pontos int
)auto_increment = 1000;
select * from Ranking;
select count(fkUsuario), pontos from ranking group by pontos;
insert into Usuario values
(null, 'Guiherme', 'Martins', 20000412, 'gcomartins@gmail.com', 'Senha@123', null);
insert into Usuario values
(null, 'Gustavo', 'Martins', 20010607, 'gustavo.c.o.martis@gmail.com', 'Senha@123', 100),
(null, 'Gabriel', 'Anterio', 20010919, 'gabrielantero1909@gmail.com', 'Senha@123', 100);
insert into Usuario values
(null, 'Eros', 'Bosco', 20010311, 'erosbosco@gmail.com', 'Senha@123', 101),
(null, 'Rute', 'Raabe', 20010225, 'ruteraabe@usp.br', 'Senha@123', 101),
(null, 'Maycon', 'Nogueira', 20010923, 'maycon.ogueira@hotmail.com', 'Senha@123', 102),
(null, 'Anna', 'Castro', 20020824, 'anna.triz.castro@gmail.com', 'Senha@123', 102);
insert into Usuario values
(null, 'Rafael', 'Rapacci', 20030108, 'rafaelmrapacci@gmail.com', 'Senha@123', 104),
(null, 'Marccelo', 'Spinelli', 20030102, 'marccelospinelli@outlook.com', 'Senha@123', 105),
(null, 'Joice', 'Cavalcante', 20000525, 'joicecdeazevedo@gmail.com', 'Senha@123', 100);

select * from usuario;
delete from usuario where idUsuario = 104;
use HomoUniversalis;
select pontos, count(fkUsuario) from ranking group by pontos order by pontos;

use HomoUniversalis;
select * from usuario order by idUsuario desc;
select * from ranking order by idJogada desc;