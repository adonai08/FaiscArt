CREATE DATABASE FaiscArt;
use FaiscArt;

CREATE TABLE Usuario (
    ID VARCHAR(15) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(100) NOT NULL
);

CREATE TABLE Publicacoes (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    descricao TEXT,
    imagem VARCHAR(255),
    valor DECIMAL(10, 2) NOT NULL,
    FK_Usuario_ID VARCHAR(15),
    FOREIGN KEY (FK_Usuario_ID) REFERENCES Usuario(ID)
);

CREATE TABLE Pagamentos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    FK_Publicacao_ID INT,
    metodo_pagamento VARCHAR(15),
    valor DECIMAL(10, 2) NOT NULL,
    numero_cartao VARCHAR(16),
    validade_cartao VARCHAR(5),
    cvv VARCHAR(3),
    FOREIGN KEY (FK_Publicacao_ID) REFERENCES Publicacoes(ID)
);

CREATE TABLE Denuncias (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    FK_Publicacoes_ID INT,
    FK_Usuario_ID VARCHAR(15),
    descricao VARCHAR(50),
    data_criacao DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (FK_Publicacoes_ID) REFERENCES Publicacoes(ID),
    FOREIGN KEY (FK_Usuario_ID) REFERENCES Usuario(ID)
);

CREATE TABLE mensagens (
    id_mensagem INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario_remetente VARCHAR(15) NOT NULL,
    id_usuario_destinatario VARCHAR(15) NOT NULL,
    mensagem TEXT NOT NULL,
    data_envio DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_usuario_remetente) REFERENCES Usuario(ID),
    FOREIGN KEY (id_usuario_destinatario) REFERENCES Usuario(ID)
);


CREATE TABLE Administrador (
    ID INT AUTO_INCREMENT,
    PRIMARY KEY (ID),
    email VARCHAR(50),
    nome VARCHAR(50),
    senha VARCHAR(50),
    telDeSuporte VARCHAR(20)
);

INSERT INTO Administrador (ID, email, nome, telDeSuporte, senha) VALUES
(1, 'adonai@gmail.com', 'AdonaiAdm', '8299352-4369','1234@'),
(2, 'matheus@gmail.com', 'MatheusAdm', '82991785743','teteus123@'),
(3, 'davidgoat@tal.com', 'DavidAdm', 'xxxxxxxxxxx','mariaejoao@'),
(4, 'lektoledo@tal.com', 'AlexanderAdm', 'yyyyyyyyyy','joaoemaria@');

INSERT INTO Usuario (ID, email, nome, senha) VALUES
('1', 'adonai@tal.com', 'Adonai', '1234@'),
('2', 'maria@tal.com', 'Maria','321@'),
('3', 'davidzinho@tal.com', 'David' ,'davidapelao@'),
('4', 'matheus@tal.com', 'Matheus' ,'753951@'),
('5', 'snoop@tal.com', 'SnoopDog' ,'aluno@'),
('6', 'givinha@tal.com', 'Givaldo' ,'caçaco123@'),
('7', 'joao@tal.com', 'João','maria@');

INSERT INTO Publicacoes (ID, titulo, FK_Usuario_ID, descricao, imagem, valor) VALUES
(1, 'CACHORROPORU', '1', 'Arte contemporânea sobre cães', 'poru.jpeg', 0),
(2, 'São Jerônimo', '1', 'Obra inspirada em São Jerônimo', 'sj.jpg', 0),
(3, 'Curso de pintura', '3', 'Aprenda a pintar de forma simples e divertida! Técnicas fáceis e práticas para criar suas próprias obras.', 'ensinando.svg', 75),
(4, 'A Criação de Adão', '4', 'Obra renascentista representando a criação', 'DedoComDedo.png', 0),
(5, 'Peça de Argila', '1', 'Peça única feita á mão, com acabamento natural e design exclusivo. ideal para decoração ou presente especial!', 'argila.png', 30),
(6, 'Curso de Origami', '4', 'Aprenda origami de forma fácil e divertida! Crie animais, flores e mais com nosso curso prático e rápido.', 'RaposaOrigami.jpg', 99),
(7, 'A noite estrelada', '4', 'Obra clássica de Van Gogh', 'Vangogh.jpg', 0),
(8, 'Aprenda a desenhar', '3', 'Aprenda a desenhar de forma simples e rápida! Nosso curso de desenho ensina técnicas básicas e avançadas para você criar incríveis obras de arte.', 'Olho.png', 60);

INSERT INTO Denuncias (ID, FK_Usuario_ID, FK_Publicacoes_ID, descricao) VALUES
(99999, '3', 4, 'Conteúdo impróprio para crianças'),
(88888, '3', 4, 'Violação de direitos autorais'),
(77777, '2', 4, 'Spam'),
(55555, '2', 3, 'Informações enganosas');

INSERT INTO mensagens (id_usuario_remetente, id_usuario_destinatario, mensagem) VALUES
('1', '4', 'Olá! Interessado na sua obra.'),
('1', '6', 'Gostaria de saber mais sobre seus cursos.'),
('1', '3', 'Parabéns pelas publicações!');

INSERT INTO Pagamentos (FK_Publicacao_ID, metodo_pagamento, valor)
VALUES (1, 'PIX', 100);

-- TELA DE NOVA PUBLICAÇÃO
INSERT INTO Publicacoes (titulo, descricao, imagem, valor, FK_Usuario_ID)
VALUES ('Novo Título', 'Nova descrição', 'nova_imagem.jpg', 100, '1');


INSERT INTO Pagamentos (FK_Publicacao_ID, metodo_pagamento, valor)
VALUES (1, 'PIX', 100);

INSERT INTO Pagamentos (FK_Publicacao_ID, metodo_pagamento, valor )
VALUES (1, 'BOLETO', 100);

INSERT INTO Pagamentos (FK_Publicacao_ID, metodo_pagamento, valor, numero_cartao, validade_cartao, cvv)
VALUES (1, 'CARTAO', 100, '1234567812345678', '12/25', '123');

-- TELA DE NOVA DENÚNCIA
INSERT INTO Denuncias (FK_Publicacoes_ID, FK_Usuario_ID, descricao)
VALUES (1, '2', 'Descrição da denúncia');

-- INSERIR NOVA MENSAGEM NO CHAT
INSERT INTO mensagens (id_usuario_remetente, id_usuario_destinatario, mensagem)
VALUES ('1', '4', 'Conteúdo da mensagem');
