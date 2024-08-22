INSERT INTO Administrador(ID, email, nome, telDeSuporte) VALUE(01, "adonai@tal.com", "Adonai", 00000000001),
(02, "matheus@tal.com", "Matheus", 00000000002),
(03, "joao@tal.com", "João", 00000000003),
(04, "maria@tal.com", "Maria", 00000000004);

INSERT INTO Planos(ID, nome, valor) VALUE(111, "basico", 25),
(222, "intermediario", 100),
(333, "avancado", 150);

INSERT INTO Usuario(ID, email, nome, FK_Planos_ID) VALUE(000000000001, "douglassola@tal.com", "Douglas", 111),
(000000000002, "maria@tal.com", "Maria", 222),
(000000000003, "joaozinho@tal.com", "João", 111),
(000000000004, "juninho@tal.com", "Junior", null),
(000000000005, "snoop@tal.com", "SnoopDog", 333),
(000000000010, "givinha@tal.com", "Givaldo", null);

INSERT INTO Publicacoes(ID, titulo) VALUE(00000001, "Origami com papel de Jornal"),
(00000002, "Truque para melhorar seus desenhor"),
(00000003, "Como aprender a desenhar"),
(00000004, "Tecnicas para pintura"),
(00000005, "Vasos de argilas");

INSERT INTO Interesses(Cod, FK_Usuario_ID) VALUE("Arte Classica", 000000000001),
("Renascimento", 000000000002),
("Arte Contemporanêa", 000000000010);

INSERT INTO AdmUsuPub(FK_Usuario_ID,FK_Administrador_ID,FK_Publicações_ID) VALUE(000000000005,01,00000005);

INSERT INTO Denuncias(ID,FK_Usuario_ID, FK_Publicacoes_ID) VALUE(99999, 000000000003, 00000004)