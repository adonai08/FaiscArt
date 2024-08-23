#selecionar o nome de todos os usuários que têm o plano 333 ou 222.
SELECT nome FROM Usuario WHERE FK_Planos_ID IN (333,222);

#Usuarios que possuem plano do mais caro ao mais barato.
SELECT nome, FK_Planos_ID FROM Usuario WHERE FK_Planos_ID > 0 ORDER BY nome DESC;

#Quantidade de usuarios que cada plano possui.
SELECT FK_Planos_ID, nome, COUNT(*) AS qntd FROM Usuario GROUP BY FK_Planos_ID;

#quantidade de denuncias em cada publicação.
SELECT FK_Publicacoes_ID, COUNT(*) AS quant FROM Denuncias GROUP BY FK_Publicacoes_ID;

#Quantidade de pessoas que tem interesses nos tópicos.
SELECT Cod, COUNT(*) AS quant FROM Interesses group by Cod;

#Nomes dos usuários em ordem alfabetica.
SELECT DISTINCT nome FROM Usuario ORDER BY nome;

