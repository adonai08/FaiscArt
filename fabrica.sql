CREATE DATABASE fabrica;
USE fabrica;

CREATE TABLE setor(
cod varchar (15),
nome varchar (15),
primary key (cod)
);

CREATE TABLE  tele(
tel int (11),
fk_setor_cod varchar (15),
primary key(tel),
foreign key (fk_setor_cod) references setor(cod)
);


CREATE TABLE area (
nome varchar (15),
cod varchar (15),
primary key (cod)
);

CREATE TABLE projeto(
nome varchar (15),
cod varchar (15),
primary key (cod)
);

CREATE TABLE empresa (
cod varchar (15),
nome varchar (15),
rua varchar (15),
uf varchar (15),
cidade varchar (15),
primary key (cod)

);

CREATE TABLE funcionario(
nome varchar (15),
cod varchar (15),
email varchar (15),
primary key (cod),
FK_funcionario_cod varchar(15),
foreign key (FK_funcionario_cod) 
references funcionario (cod)
 
 );



