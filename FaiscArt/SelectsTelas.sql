
#Verificar se existe um usuário com o email e senha fornecidos para autenticação no sistema.
SELECT * FROM Usuario 
WHERE email = 'adonai@tal.com' AND senha = '1234@';


#Exibir todas as publicações cadastradas no sistema, ordenadas pela mais recente.
SELECT * FROM Publicacoes 
ORDER BY ID DESC;

-- Retornar informações básicas das publicações feitas pelo User com ID = 1
SELECT titulo AS TituloObra, imagem AS CaminhoImagem, Obra AS NomeObra
FROM Publicacoes where FK_Usuario_ID = 1;
    
#Buscar informações sobre a publicação "A Criação de Adão" e identificar quem a publicou.
SELECT u.nome AS NomeUsuario, p.titulo AS TituloPublicacao FROM Publicacoes p
JOIN Usuario u ON p.FK_Usuario_ID = u.ID
WHERE p.titulo = 'A Criação de Adão' OR p.Obra = 'A Criação de Adão';

#Exibir uma lista de publicações que estão à venda e têm valor igual ou superior a 15.
SELECT ID, titulo, valor, obra FROM Publicacoes WHERE valor >= 15;

#Exibir informações de uma publicação específica feita por um usuário com ID = 1, cujo título seja CACHORROPORU.
SELECT u.nome AS NomeUsuario, p.titulo AS TituloPublicacao, p.valor AS ValorPublicacao, p.Obra AS NomeObraFROM FROM Publicacoes p
JOIN Usuario u ON p.FK_Usuario_ID = u.ID
WHERE p.FK_Usuario_ID = '1' AND p.titulo = 'CACHORROPORU';

#Obter os nomes dos usuários envolvidos em um chat que incluem o usuário chamado 'Matheus'.
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

 -- Visualizar informações de denúncia feitas pelo User com ID = 3
 SELECT d.ID, d.FK_Publicacoes_ID, p.titulo AS PublicacaoDenunciada 
FROM Denuncias d
JOIN Publicacoes p ON d.FK_Publicacoes_ID = p.ID
WHERE d.FK_Usuario_ID = '3';

-- Buscar todas as publicações relacionadas a desenho
SELECT titulo AS Titulo, Obra AS NomeDaObra, valor AS Valor FROM Publicacoes 
WHERE titulo LIKE '%desenho%' OR Obra LIKE '%desenho%';

-- Selecionar a média dos valores das publicações
SELECT AVG(valor) AS MediaValores FROM Publicacoes 
WHERE valor IS NOT NULL;

-- Contar o número de denúncias feitas por cada usuário
SELECT u.nome AS NomeUsuario, COUNT(d.ID) AS TotalDenuncias
FROM Denuncias d
JOIN Usuario u ON d.FK_Usuario_ID = u.ID
GROUP BY u.nome
ORDER BY TotalDenuncias DESC;