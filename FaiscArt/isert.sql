INSERT INTO administrador(ID, email, nome, telDeSuporte) VALUE(01, "adonai@tal.com", "Adonai", "00000000000");
INSERT INTO administrador(ID, email, nome, telDeSuporte) VALUE(02, "matheus@tal.com", "Matheus", "11111111111");

INSERT INTO planos(ID, nome, valor) VALUE(111, "basico", 25);
INSERT INTO planos(ID, nome, valor) VALUE(222, "intermediario", 100);
INSERT INTO planos(ID, nome, valor) VALUE(333, "avancado", 150);


INSERT INTO usuario(ID, email, nome, FK_Planos_ID) VALUE(00000000001, "zezinho@tal.com", "Zé", "111");
INSERT INTO usuario(ID, email, nome, FK_Planos_ID) VALUE(00000000002, "maria@tal.com", "Maria", "333");
INSERT INTO usuario(ID, email, nome, FK_Planos_ID) VALUE(00000000003, "joaozinho@tal.com", "João", NULL);
