INSERT INTO Administrador(ID, email, nome, telDeSuporte) VALUE(01, "adonai@tal.com", "Adonai", 00000000001);
INSERT INTO Administrador(ID, email, nome, telDeSuporte) VALUE(02, "matheus@tal.com", "Matheus", 00000000002);
INSERT INTO Administrador(ID, email, nome, telDeSuporte) VALUE(03, "joao@tal.com", "João", 00000000003);
INSERT INTO Administrador(ID, email, nome, telDeSuporte) VALUE(04, "maria@tal.com", "Maria", 00000000004);
INSERT INTO Administrador(ID, email, nome, telDeSuporte) VALUE(05, "pedro@tal.com", "Pedro", 00000000005);
INSERT INTO Administrador(ID, email, nome, telDeSuporte) VALUE(06, "ana@tal.com", "Ana", 00000000006);
INSERT INTO Administrador(ID, email, nome, telDeSuporte) VALUE(07, "miguel@tal.com", "Miguel", 00000000007);
INSERT INTO Administrador(ID, email, nome, telDeSuporte) VALUE(08, "alana@tal.com", "Alana", 00000000008);
INSERT INTO Administrador(ID, email, nome, telDeSuporte) VALUE(09, "juliana@tal.com", "Juliana", 00000000009);
INSERT INTO Administrador(ID, email, nome, telDeSuporte) VALUE(10, "mariana@tal.com", "Mariana", 00000000010);

INSERT INTO Planos(ID, nome, valor) VALUE(111, "basico", 25);
INSERT INTO Planos(ID, nome, valor) VALUE(222, "intermediario", 100);
INSERT INTO Planos(ID, nome, valor) VALUE(333, "avancado", 150);


INSERT INTO Usuario(ID, email, nome, FK_Planos_ID) VALUE(000000000001, "douglassola@tal.com", "Douglas", 111);
INSERT INTO Usuario(ID, email, nome, FK_Planos_ID) VALUE(000000000002, "maria@tal.com", "Maria", 222);
INSERT INTO Usuario(ID, email, nome, FK_Planos_ID) VALUE(000000000003, "joaozinho@tal.com", "João", 111);
INSERT INTO Usuario(ID, email, nome, FK_Planos_ID) VALUE(000000000004, "juninho@tal.com", "Junior", null);
INSERT INTO Usuario(ID, email, nome, FK_Planos_ID) VALUE(000000000005, "snoop@tal.com", "SnoopDog", 333);
INSERT INTO Usuario(ID, email, nome, FK_Planos_ID) VALUE(000000000006, "marinho@tal.com", "Mario", 222);
INSERT INTO Usuario(ID, email, nome, FK_Planos_ID) VALUE(000000000007, "toinho@tal.com", "Antonio", null);
INSERT INTO Usuario(ID, email, nome, FK_Planos_ID) VALUE(000000000008, "chico@tal.com", "Francisco", 333);
INSERT INTO Usuario(ID, email, nome, FK_Planos_ID) VALUE(000000000009, "rondonia@tal.com", "Ribeiro", 111);
INSERT INTO Usuario(ID, email, nome, FK_Planos_ID) VALUE(000000000010, "givinha@tal.com", "Givaldo", null);

INSERT INTO Publicacoes(ID, titulo) VALUE(00000001, "Origami com papel de Jornal");
INSERT INTO Publicacoes(ID, titulo) VALUE(00000002, "Truque para melhorar seus desenhor");
INSERT INTO Publicacoes(ID, titulo) VALUE(00000003, "Como aprender a desenhar");
INSERT INTO Publicacoes(ID, titulo) VALUE(00000004, "Tecnicas para pintura");
INSERT INTO Publicacoes(ID, titulo) VALUE(00000005, "Vasos de argilas");
INSERT INTO Publicacoes(ID, titulo) VALUE(00000006, "Arte contemporânea");




INSERT INTO AdmUsuPub(FK_Usuario_ID,FK_Administrador_ID,FK_Publicações_ID) VALUE(000000000005,01,00000005)