CREATE DATABASE faiscart;
USE faiscart;


CREATE TABLE Planos(
ID int,
PRIMARY KEY (ID),
nome varchar(50),
valor int
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
titulo varchar(50)
);


CREATE TABLE Administrador(
ID int,
PRIMARY KEY(ID),
email varchar(50),
nome varchar(50),
telDeSuporte int
);


CREATE TABLE Interesses(
Cod VARCHAR(12),
PRIMARY KEY (Cod),
FK_Usuario_ID int,
FOREIGN KEY(FK_Usuario_ID) References Usuario (ID)
);

CREATE TABLE AdmUsuPub(
FK_Usuario_ID int,
FK_Administrador_ID int,
FK_Publicações_ID int,
FOREIGN KEY(FK_Usuario_ID) References Usuario (ID),
FOREIGN KEY(FK_Administrador_ID) References Administrador (ID),
FOREIGN KEY(FK_Publicações_ID) References Administrador (ID)
)