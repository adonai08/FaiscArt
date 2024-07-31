create database hospital;
use hospital;



CREATE TABLE medico(
especializacao varchar(50),
nome varchar(50),
crm varchar(50),
PRIMARY KEY(crm)
);

CREATE TABLE ala(
nome varchar(50),
id varchar(50),
PRIMARY KEY(id)
);

CREATE TABLE quarto(
andar varchar(50),
num varchar(50),

PRIMARY KEY(num),
FK_ala_id varchar(50),
foreign key (FK_ala_id) 
references ala (id)


);

CREATE TABLE paciente(
nome varchar(50),
cpf varchar(11),
saida varchar(10),
entrada varchar (10),
FK_quarto_num varchar(50),
foreign key (FK_quarto_num) 
references quarto (num),
PRIMARY KEY(cpf)
);


CREATE TABLE enfermeira(
nome varchar(50),
CRE varchar(50),
PRIMARY KEY(CRE),
FK_enfermeira_CRE varchar(50),
foreign key (FK_enfermeira_CRE) 
references enfermeira (CRE)
);


CREATE TABLE medpac(

datad varchar(8),
hora varchar(4),

FK_medico_crm varchar(50),
FK_paciente_cpf varchar(50),


foreign key (FK_medico_crm) 
references medico (crm),

foreign key (FK_paciente_cpf) 
references paciente (cpf)
);

CREATE TABLE enfala(
FK_ala_id varchar(50),
FK_enfermeira_CRE varchar (50),
foreign key (FK_ala_id) 
references ala (id),

foreign key (FK_enfermeira_CRE) 
references enfermeira (CRE)

);



