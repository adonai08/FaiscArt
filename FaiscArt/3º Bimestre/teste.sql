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

-- TABELAS ORIGINAIS MANTIDAS E COMPLEMENTADAS
CREATE TABLE Administrador (
    ID INT AUTO_INCREMENT,
    PRIMARY KEY (ID),
    email VARCHAR(50),
    nome VARCHAR(50),
    senha VARCHAR(50),
    telDeSuporte VARCHAR(20)
);

-- INSERÇÃO DE DADOS ORIGINAIS MANTIDA
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
(3, 'Curso de pintura', '3', 'Curso básico de pintura para iniciantes', 'ensinando.svg', 75),
(4, 'A Criação de Adão', '4', 'Obra renascentista representando a criação', 'DedoComDedo.png', 0),
(5, 'Peça de Argila', '1', 'Arte manual com argila', 'argila.png', 30),
(6, 'Curso de Origami', '4', 'Aprenda a fazer origamis complexos', 'RaposaOrigami.jpg', 99),
(7, 'A noite estrelada', '4', 'Obra clássica de Van Gogh', 'Vangogh.jpg', 0),
(8, 'Aprenda a desenhar', '3', 'Guia prático para desenhar olhos realistas', 'Olho.png', 60);

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

-- CONSULTAS PARA FUNCIONALIDADES DAS TELAS
-- TELA DE NOVA PUBLICAÇÃO
INSERT INTO Publicacoes (titulo, descricao, imagem, valor, FK_Usuario_ID)
VALUES ('Novo Título', 'Nova descrição', 'nova_imagem.jpg', 100, '1');

-- TELA DE PAGAMENTO
SELECT p.titulo AS TituloProduto, p.valor AS ValorProduto, p.imagem AS ImagemProduto, u.nome AS NomeVendedor
FROM Publicacoes p
JOIN Usuario u ON p.FK_Usuario_ID = u.ID
WHERE p.ID = 1;

INSERT INTO Pagamentos (FK_Publicacao_ID, metodo_pagamento, valor, data_pagamento)
VALUES (1, 'PIX', 100, CURRENT_DATE);

INSERT INTO Pagamentos (FK_Publicacao_ID, metodo_pagamento, valor, data_pagamento)
VALUES (1, 'BOLETO', 100, CURRENT_DATE);

INSERT INTO Pagamentos (FK_Publicacao_ID, metodo_pagamento, valor, numero_cartao, validade_cartao, cvv)
VALUES (1, 'CARTAO', 100, '1234567812345678', '12/25', '123');

-- TELA DE NOVA DENÚNCIA
INSERT INTO Denuncias (FK_Publicacoes_ID, FK_Usuario_ID, descricao)
VALUES (1, '2', 'Descrição da denúncia');

-- TELA DE CONSULTA DE DENÚNCIAS
SELECT d.ID AS IDDenuncia, d.FK_Publicacoes_ID AS IDPublicacao, p.titulo AS TituloPublicacao, d.descricao AS MotivoDenuncia, d.data_criacao AS DataDenuncia
FROM Denuncias d
JOIN Publicacoes p ON d.FK_Publicacoes_ID = p.ID
WHERE d.FK_Usuario_ID = '2';

-- TELA DE CHAT RECENTE
SELECT 
    u.ID AS id_usuario,
    u.nome,
    m.mensagem,
    m.data_envio
FROM 
    mensagens m
INNER JOIN Usuario u
    ON (m.id_usuario_remetente = u.ID OR m.id_usuario_destinatario = u.ID)
WHERE 
    m.id_usuario_remetente = '1'
    OR m.id_usuario_destinatario = '1'
GROUP BY 
    u.ID, m.mensagem, m.data_envio
ORDER BY 
    m.data_envio DESC;

-- TELA DE CHAT INDIVIDUAL
SELECT 
    m.id_mensagem,
    m.mensagem,
    m.data_envio,
    CASE 
        WHEN m.id_usuario_remetente = '1' THEN 'enviado'
        ELSE 'recebido'
    END AS tipo_mensagem
FROM 
    mensagens m
WHERE 
    (m.id_usuario_remetente = '1' AND m.id_usuario_destinatario = '4')
    OR (m.id_usuario_remetente = '4' AND m.id_usuario_destinatario = '1')
ORDER BY 
    m.data_envio ASC;

-- INSERIR NOVA MENSAGEM NO CHAT
INSERT INTO mensagens (id_usuario_remetente, id_usuario_destinatario, mensagem)
VALUES ('1', '4', 'Conteúdo da mensagem');
