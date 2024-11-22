
#Select tela de Login
SELECT * FROM Usuario 
WHERE email = 'adonai@tal.com' AND senha = '1234@';


#Tela de Inicio
SELECT * FROM Publicacoes 
ORDER BY ID DESC;

#Tela de pesquisa
SELECT * FROM Publicacoes 
WHERE titulo LIKE 'A Criação de Adão' OR Obra LIKE 'A Criação de Adão';

#Tela de Compra
SELECT * FROM Publicacoes WHERE preco > 15;

#Tela de post
SELECT * 
FROM Publicacoes WHERE FK_Usuario_ID = '1' AND titulo = 'CACHORROPORU';


