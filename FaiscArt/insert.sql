INSERT INTO Administrador(ID, email, nome, telDeSuporte) VALUE(01, "adonai@tal.com", "Adonai", 00000000001),
(02, "matheus@tal.com", "Matheus", 00000000002),
(03, "joao@tal.com", "João", 00000000003),
(04, "maria@tal.com", "Maria", 00000000004);

INSERT INTO Planos(ID, nome, valor) VALUE(111, "gratis", 0),
(222, "basico", 50),
(333, "intermediario", 100),
(444, "avancado", 150);

INSERT INTO Usuario(ID, email, nome, FK_Planos_ID) VALUE(000000000001, "adonai@tal.com", "Adonai", 444),
(000000000002, "maria@tal.com", "Maria", 444),
(000000000003, "davidzinho@tal.com", "David", 222),
(000000000004, "matheus@tal.com", "Matheus", 333),
(000000000005, "snoop@tal.com", "SnoopDog", 111),
(000000000006, "givinha@tal.com", "Givaldo", 222),
(000000000007, "joao@tal.com", "João", 111);

INSERT INTO Publicacoes(ID, titulo, FK_Usuario_ID, Obra) VALUE(00000001, "Origami com papel de Jornal", 000000000002, "Sapo de Origami"),
(00000002, "Truque para melhorar seus desenhor", 000000000002, "Melhor Lápis"),
(00000003, "Como aprender a desenhar", 000000000004, "Livro de desenho (iniciantes)"),
(00000004, "Tecnicas para pintura", 000000000007, "Sombreado no papel"),
(00000005, "Vasos de argilas", 000000000006, "Galinha de argila");

INSERT INTO Interesses(Cod, FK_Usuario_ID) VALUE("Desenho", 000000000002),
('Teatro', 000000000004),
("Modelagens",000000000006);

INSERT INTO Denuncias(ID,FK_Usuario_ID, FK_Publicacoes_ID) VALUE(99999, 000000000003, 00000004),
(88888, 000000000003, 00000004),
(77777, 000000000002, 00000004),
(55555, 000000000002, 00000003)
