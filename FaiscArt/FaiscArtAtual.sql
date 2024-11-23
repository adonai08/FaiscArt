CREATE DATABASE faiscart;
USE faiscart;

-- Tabela de Planos
#CREATE TABLE Planos (
#    ID INT AUTO_INCREMENT,
#    PRIMARY KEY (ID),
#    nome VARCHAR(50),
#    valor INT
#);

-- Tabela de Administradores
CREATE TABLE Administrador (
    ID INT AUTO_INCREMENT,
    PRIMARY KEY (ID),
    email VARCHAR(50),
    nome VARCHAR(50),
    senha varchar(50),
    telDeSuporte VARCHAR(20) -- Usado VARCHAR para manter zeros à esquerda
);

-- Tabela de Usuários
CREATE TABLE Usuario (
    ID VARCHAR(15), -- Usando VARCHAR para IDs com zeros à esquerda
    PRIMARY KEY (ID),
    email VARCHAR(50),
    nome VARCHAR(50),
    senha varchar(50)
    #FK_Planos_ID INT,
    #FOREIGN KEY (FK_Planos_ID) REFERENCES Planos (ID)
);

-- Tabela de Publicações
CREATE TABLE Publicacoes (
    ID INT AUTO_INCREMENT,
    PRIMARY KEY (ID),
    titulo VARCHAR(50),
    imagem varchar(50),
    valor int,
    FK_Usuario_ID VARCHAR(15),
    FOREIGN KEY (FK_Usuario_ID) REFERENCES Usuario (ID),
    Obra VARCHAR(50)
);

-- Tabela de Interesses
CREATE TABLE Interesses (
    Cod VARCHAR(50),
    PRIMARY KEY (Cod),
    FK_Usuario_ID VARCHAR(15),
    FOREIGN KEY (FK_Usuario_ID) REFERENCES Usuario (ID)
);



-- Tabela de Denúncias
CREATE TABLE Denuncias (
    ID INT AUTO_INCREMENT,
    PRIMARY KEY (ID),
    FK_Usuario_ID VARCHAR(15),
    FK_Publicacoes_ID INT,
    FOREIGN KEY (FK_Usuario_ID) REFERENCES Usuario (ID),
    FOREIGN KEY (FK_Publicacoes_ID) REFERENCES Publicacoes (ID)
);

 -- Tabela de Chat
 CREATE TABLE Chat(
 ID INT AUTO_INCREMENT, -- Identificador único da relação
    PRIMARY KEY (ID),
    FK_Usuario_1 VARCHAR(15), -- ID do primeiro usuário
    FK_Usuario_2 VARCHAR(15), -- ID do segundo usuário
    FOREIGN KEY (FK_Usuario_1) REFERENCES Usuario(ID),
    FOREIGN KEY (FK_Usuario_2) REFERENCES Usuario(ID)

 );

-- Inserção de dados na tabela Administrador
INSERT INTO Administrador (ID, email, nome, telDeSuporte, senha) VALUES
(1, 'adonai@gmail.com', 'AdonaiAdm', '8299352-4369','1234@'),
(2, 'matheus@gmail.com', 'MatheusAdm', '82991785743','teteus123@'),
(3, 'davidgoat@tal.com', 'DavidAdm', 'xxxxxxxxxxx','mariaejoao@'),
(4, 'lektoledo@tal.com', 'AlexanderAdm', 'yyyyyyyyyy','joaoemaria@');

-- Inserção de dados na tabela Planos
#INSERT INTO Planos (ID, nome, valor) VALUES
#(111, 'gratis', 0),
#(222, 'basico', 50),
#(333, 'intermediario', 100),
#(444, 'avancado', 150);

-- Inserção de dados na tabela Usuario
INSERT INTO Usuario (ID, email, nome, senha) VALUES
('1', 'adonai@tal.com', 'Adonai', '1234@'),
('2', 'maria@tal.com', 'Maria','321@'),
('3', 'davidzinho@tal.com', 'David' ,'davidapelao@'),
('4', 'matheus@tal.com', 'Matheus' ,'753951@'),
('5', 'snoop@tal.com', 'SnoopDog' ,'aluno@'),
('6', 'givinha@tal.com', 'Givaldo' ,'caçaco123@'),
('7', 'joao@tal.com', 'João','maria@');

-- Inserção de dados na tabela Publicacoes
INSERT INTO Publicacoes (ID, titulo, FK_Usuario_ID, Obra, imagem, valor) VALUES
(1, 'CACHORROPORU', '1', 'CACHORROPORU', 'poru.jpeg', NULL),
(2, 'Truque para melhorar seus desenhos', '1', 'Melhor Lápis', 'dicas.jgp', NULL),
(3, 'Como aprender a desenhar', '4', 'Livro de desenho (iniciantes)',' ensinando.svg', 20),
(4, 'A Criação de Adão', '4', 'A Criação de Adão', 'DedoComDedo.png', null),
(5, 'Vasos de argilas', '6', 'Galinha de argila', 'galinha.png', NULL);

-- Inserção de dados na tabela Interesses
INSERT INTO Interesses (Cod, FK_Usuario_ID) VALUES
('Desenho', '2'),
('Teatro', '4'),
('Modelagens', '6');

-- Inserção de dados na tabela Denuncias
INSERT INTO Denuncias (ID, FK_Usuario_ID, FK_Publicacoes_ID) VALUES
(99999, '3', 4),
(88888, '3', 4),
(77777, '2', 4),
(55555, '2', 3);

-- Inserção de dados na tabela Chat
INSERT INTO Chat (ID,FK_Usuario_1, FK_Usuario_2) VALUES
(1, 1, 4),
(2, 1, 6),
(3,1,3);