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
    telDeSuporte VARCHAR(20) 
);

-- Tabela de Usuários
CREATE TABLE Usuario (
    ID VARCHAR(15), 
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
#CREATE TABLE Interesses (
 #   Cod VARCHAR(50),
 #   PRIMARY KEY (Cod),
 #   FK_Usuario_ID VARCHAR(15),
 #   FOREIGN KEY (FK_Usuario_ID) REFERENCES Usuario (ID)
#);



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
 ID INT AUTO_INCREMENT,
    PRIMARY KEY (ID),
    FK_Usuario_1 VARCHAR(15), 
    FK_Usuario_2 VARCHAR(15), 
    FOREIGN KEY (FK_Usuario_1) REFERENCES Usuario(ID),
    FOREIGN KEY (FK_Usuario_2) REFERENCES Usuario(ID)

 );
-- Tabela de comentários
CREATE TABLE Comentarios (
    ID INT AUTO_INCREMENT, 
    PRIMARY KEY (ID),
    FK_Publicacao_ID INT,
    FK_Usuario_ID VARCHAR(15),
    texto VARCHAR(255) NOT NULL,          
    FOREIGN KEY (FK_Publicacao_ID) REFERENCES Publicacoes(ID),
    FOREIGN KEY (FK_Usuario_ID) REFERENCES Usuario(ID)
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
(2, 'São Jerônimo', '1', 'São Jerônimo', 'sj.jgp', NULL),
(3, 'Curso de pintura', '3', 'Livro de pintura (iniciantes)',' ensinando.svg', 75),
(4, 'A Criação de Adão', '4', 'A Criação de Adão', 'DedoComDedo.png', null),
(5, 'Peça de Argila', '1', 'Peça de argila', 'argila.png', 30),
(6, 'Curso de Origami', '4', 'Curso de Origami', 'RaposaOrigami.jpg', 99),
(7, 'A noite estrelada', '4', 'A Noite Estrelada', 'Vangogh.jpg', NULL),
(8, 'Aprenda a desenhar', '3', 'Aprenda a desenhar', 'Olho.png', 60);

-- Inserção de dados na tabela Interesses
#INSERT INTO Interesses (Cod, FK_Usuario_ID) VALUES
#('Desenho', '2'),
#('Teatro', '4'),
#('Modelagens', '6');

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

-- Inserção de dados na tabela comentários  Obs: Não conseguimos (falta de planejamento) implementar os textos dos comentários
#INSERT INTO Comentarios (FK_Publicacao_ID, FK_Usuario_ID, texto) VALUES
#(1, '2', 'Essa publicação é maravilhosa, gostei muito do conceito!'),
#(2, '3', 'Adorei a ideia, muito inspirador!'),
#(3, '4', 'Ótimas dicas para quem está começando, adorei o conteúdo!'),
#(4, '5', 'Muito boa a obra, gostei da proposta, mas o valor está alto.'),
#(5, '1', 'Achei interessante, mas precisaria de mais detalhes na descrição da obra.'),
#(6, '3', 'O conteúdo está muito bem explicado, vou tentar aplicar no meu trabalho!'),
#(7, '6', 'Eu sou fã do Van Gogh! Essa obra ficou incrível!'),
#(8, '2', 'Muito legal, estou aprendendo muito com o seu material!'),
#(8, '4', 'Excelente! Eu adorei as dicas de como desenhar olhos de forma mais realista!');