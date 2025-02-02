-- TELA DE PAGAMENTO
SELECT p.titulo AS TituloProduto, p.valor AS ValorProduto, p.imagem AS ImagemProduto, u.nome AS NomeVendedor
FROM Publicacoes p
JOIN Usuario u ON p.FK_Usuario_ID = u.ID
WHERE p.ID = 1;

-- TELA DE CONSULTA DE DENÚNCIAS
SELECT d.ID AS IDDenuncia, d.FK_Publicacoes_ID AS IDPublicacao, p.titulo AS TituloPublicacao, d.descricao AS MotivoDenuncia, d.data_criacao AS DataDenuncia
FROM Denuncias d
JOIN Publicacoes p ON d.FK_Publicacoes_ID = p.ID
WHERE d.FK_Usuario_ID = '2';

-- TELA DE MENSAGEM
SELECT u.ID AS id_usuario, u.nome, m.mensagem, m.data_envio
FROM mensagens m INNER JOIN Usuario u
ON (m.id_usuario_remetente = u.ID OR m.id_usuario_destinatario = u.ID)
WHERE m.id_usuario_remetente = '1' OR m.id_usuario_destinatario = '1'
GROUP BY u.ID, m.mensagem, m.data_envio
ORDER BY m.data_envio DESC;

-- TELA DE INICIO
SELECT p.ID AS IDPublicacao, 
       p.titulo AS TituloPublicacao, 
       p.imagem AS ImagemPublicacao, 
       u.nome AS NomeUsuario
FROM Publicacoes p
JOIN Usuario u ON p.FK_Usuario_ID = u.ID
ORDER BY p.ID DESC; -- Publicações mais recentes primeiro

-- TELA DE PERFIL 
SELECT p.ID AS IDPublicacao, 
       p.titulo AS TituloPublicacao, 
       p.imagem AS ImagemPublicacao, 
       u.nome AS NomeUsuario
FROM Publicacoes p
JOIN Usuario u ON p.FK_Usuario_ID = u.ID
WHERE u.ID = '1'; -- Substituir pelo ID do usuário logado

-- TELA DE POST
SELECT p.titulo AS TituloPublicacao, 
       p.descricao AS DescricaoPublicacao, 
       p.imagem AS ImagemPublicacao, 
       u.nome AS NomeAutor
FROM Publicacoes p
JOIN Usuario u ON p.FK_Usuario_ID = u.ID
WHERE p.ID = 1; -- Substituir pelo ID da publicação selecionada


 -- TELA DE COMPRA
SELECT p.id AS id_publicacao,p.titulo,p.descricao,p.valor,p.imagem, u.nome AS nome_usuario
FROM Publicacoes AS p INNER JOIN usuario AS u
ON p.FK_Usuario_ID = u.id WHERE p.valor > 0;

-- TELA DE PESQUISA
SELECT p.ID AS id_publicacao, p.titulo AS titulo_publicacao, p.imagem AS imagem_publicacao
FROM Publicacoes AS p;

-- TELA DE DETTALHAMENTO DE COMPRA
SELECT * FROM Publicacoes WHERE id = 5;