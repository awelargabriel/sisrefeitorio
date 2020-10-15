drop database sisrefeitorio;
create database sisrefeitorio;
use sisrefeitorio;

create table if not exists usuarios
(
matricula bigint primary key,
nome varchar(50) not null,
curso varchar(30) not null,
creditos int
);

create table if not exists registro
(
id int primary key auto_increment,
datahora varchar(20) not null,
matriculausuario bigint not null,
foreign key(matriculausuario)
references usuarios(matricula)
);

insert into usuarios
values(11161009412,"Gabriel Avelar Gonçalves", "SI", 4);

insert into registro (datahora, matriculausuario)
values(now(),11161009412);


select * from registro;
desc registro;