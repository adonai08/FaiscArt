CREATE DATABASE faiscart;
USE faiscart;


CREATE TABLE Planos(
ID int,
PRIMARY KEY (ID),
nome varchar(50),
valor int
);



CREATE TABLE Administrador(
ID int,
PRIMARY KEY(ID),
email varchar(50),
nome varchar(50),
telDeSuporte int
);

CREATE TABLE Usuario(
ID int,
PRIMARY KEY(ID),
email varchar(50),
nome varchar(50),
FK_Planos_ID int,
FOREIGN KEY(FK_Planos_ID) References Planos (ID)
);

CREATE TABLE Publicacoes(
ID int,
PRIMARY KEY (ID),
titulo varchar(50),
FK_Usuario_ID int,
FOREIGN KEY(FK_Usuario_ID) References Usuario (ID),
Obra varchar(50)
);


CREATE TABLE Interesses(
Cod VARCHAR(50),
PRIMARY KEY (Cod),
FK_Usuario_ID int,
FOREIGN KEY(FK_Usuario_ID) References Usuario (ID)
);



CREATE TABLE Denuncias(
ID int,
PRIMARY KEY (ID),
FK_Usuario_ID int,
FK_Publicacoes_ID int
)
