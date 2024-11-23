
#Select tela de Login
SELECT * FROM Usuario 
WHERE email = 'adonai@tal.com' AND senha = '1234@';


#Tela de Inicio
SELECT * FROM Publicacoes 
ORDER BY ID DESC;

#Tela de pesquisa
SELECT titulo AS TituloObra, imagem AS CaminhoImagem, Obra AS NomeObra
FROM Publicacoes where FK_Usuario_ID = 1;
    
#Qual o nome do usuário que publicou a A Criação de adão?
SELECT * FROM Publicacoes 
WHERE titulo LIKE 'A Criação de Adão' OR Obra LIKE 'A Criação de Adão';

#Tela de Compra
SELECT ID, titulo, valor, obra FROM Publicacoes WHERE valor >= 15;

#Tela de post
SELECT * 
FROM Publicacoes WHERE FK_Usuario_ID = '1' AND titulo = 'CACHORROPORU';

#tela de chat
SELECT u1.nome AS NomeUsuario1, u2.nome AS NomeUsuario2 FROM Chat c
JOIN Usuario u1 ON c.FK_Usuario_1 = u1.ID
JOIN Usuario u2 ON c.FK_Usuario_2 = u2.ID
WHERE u1.nome = 'Matheus' OR u2.nome = 'Matheus';

-- Obter todas as publicações do usuário Matheus

SELECT titulo, Obra, imagem, valor 
FROM Publicacoes 
WHERE FK_Usuario_ID = '4';

-- Listar todos os usuários registrados
SELECT ID, nome, email 
FROM Usuario;

 -- Visualizar informações de denúncia feitas pelo Adonai
 SELECT d.ID, d.FK_Publicacoes_ID, p.titulo AS PublicacaoDenunciada 
FROM Denuncias d
JOIN Publicacoes p ON d.FK_Publicacoes_ID = p.ID
WHERE d.FK_Usuario_ID = '3';

-- Buscar todas as publicações relacionadas a arte

SELECT * FROM Publicacoes 
WHERE titulo LIKE '%arte%' OR Obra LIKE '%arte%';

