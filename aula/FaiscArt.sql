CREATE DATABASE faiscart;
USE faiscart;


CREATE TABLE Planos(
ID varchar(12),
PRIMARY KEY (ID),
nome varchar(50),
valor int
);


CREATE TABLE Usuario(
ID varchar(12),
PRIMARY KEY(ID),
email varchar(50),
nome varchar(50),
FK_Planos_ID varchar(12),

FOREIGN KEY(FK_Planos_ID) References Planos (ID)
);





CREATE TABLE Publicações(
ID varchar(12),
PRIMARY KEY (ID),
titulo varchar(50)

);


CREATE TABLE Administrador(
ID varchar(12),
PRIMARY KEY(ID),
email varchar(50),
nome varchar(50),
telDeSuporte varchar(15)


);


CREATE TABLE Interesses(
Cod varchar(12),
PRIMARY KEY (Cod),
FK_Usuario_ID varchar(12),
FOREIGN KEY(FK_Usuario_ID) References Usuario (ID)


);

CREATE TABLE AdmUsuPub(
FK_Usuario_ID varchar(12),
FK_Administrador_ID varchar(12),
FK_Publicações_ID varchar(12),
FOREIGN KEY(FK_Usuario_ID) References Usuario (ID),
FOREIGN KEY(FK_Administrador_ID) References Administrador (ID),
FOREIGN KEY(FK_Publicações_ID) References Administrador (ID)
)