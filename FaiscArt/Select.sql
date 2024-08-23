#selecionar o nome de todos os usuários que têm o plano 444 ou 222.
SELECT nome,FK_Planos_ID  FROM Usuario WHERE FK_Planos_ID IN (444,222);

#Usuarios que possuem plano do mais caro ao mais barato.
SELECT nome, FK_Planos_ID FROM Usuario WHERE FK_Planos_ID > 0 ORDER BY FK_Planos_ID DESC;

#Quantidade de usuarios que cada plano possui.
SELECT FK_Planos_ID, COUNT(*) AS qntd FROM Usuario GROUP BY FK_Planos_ID;

#quantidade de denuncias em cada publicação.
SELECT FK_Publicacoes_ID, COUNT(*) AS quant FROM Denuncias GROUP BY FK_Publicacoes_ID ORDER BY quant DESC;

#Quantidade de pessoas que tem interesses nos tópicos.
SELECT Cod, COUNT(*) AS quant FROM Interesses group by Cod order by quant desc;

#Nomes dos usuários em ordem alfabetica.
SELECT DISTINCT nome FROM Usuario ORDER BY nome;

#Usuários que fizeram denúncias.
SELECT FK_Usuario_ID FROM Denuncias ORDER BY FK_Usuario_ID;

#Maior e Menor valor dos planos.
SELECT MAX(valor) AS maior_valor, MIN(valor) AS menor_valor FROM
Planos;

#Quantas obras cada usuário possui
SELECT FK_Usuario_ID, obra, COUNT(ID)  AS QuantDeObras FROM Publicacoes group by FK_Usuario_ID;

#Selecionar todos os usuários com interesses específicos
SELECT FK_Usuario_ID, Cod
FROM Interesses
WHERE Cod = 'Desenho';

#Usuários que possuem o plano gratuito.
SELECT nome FROM Usuario WHERE FK_Planos_ID = 111