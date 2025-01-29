const sequelize = require('./db');
const Usuario = require('./faiscart/usuario');
const Publicacao = require('./faiscart/publicacao');
const Adm = require('./faiscart/adm');
const Mensagem = require('./faiscart/mensagem');
const Denuncia = require('./faiscart/denuncias');
const setupRelationships = require('./faiscart/relationships');

(async () => {
  try {
    // Configurar relacionamentos
    setupRelationships();

    // Sincronizar o banco de dados
    await sequelize.sync({ force: true });
    console.log('Banco de dados sincronizado.');

    // Inserir administradores
    const admin1 = await Administrador.create({
      email: 'adonai@gmail.com',
      nome: 'AdonaiAdm',
      senha: '1234@',
      telDeSuporte: '8299352-4369',
    });
    const admin2 = await Administrador.create({
      email: 'matheus@gmail.com',
      nome: 'MatheusAdm',
      senha: 'teteus123@',
      telDeSuporte: '82991785743',
    });
    const admin3 = await Administrador.create({
      email: 'davidgoat@tal.com',
      nome: 'DavidAdm',
      senha: 'mariaejoao@',
      telDeSuporte: 'xxxxxxxxxxx',
    });
    const admin4 = await Administrador.create({
      email: 'lektoledo@tal.com',
      nome: 'AlexanderAdm',
      senha: 'joaoemaria@',
      telDeSuporte: 'yyyyyyyyyy',
    });

    console.log('Administradores criados.');

    // Inserir usuários
    const usuarios = await Promise.all([
      Usuario.create({ id: '1', email: 'adonai@tal.com', nome: 'Adonai', senha: '1234@' }),
      Usuario.create({ id: '2', email: 'maria@tal.com', nome: 'Maria', senha: '321@' }),
      Usuario.create({ id: '3', email: 'davidzinho@tal.com', nome: 'David', senha: 'davidapelao@' }),
      Usuario.create({ id: '4', email: 'matheus@tal.com', nome: 'Matheus', senha: '753951@' }),
      Usuario.create({ id: '5', email: 'snoop@tal.com', nome: 'SnoopDog', senha: 'aluno@' }),
      Usuario.create({ id: '6', email: 'givinha@tal.com', nome: 'Givaldo', senha: 'caçaco123@' }),
      Usuario.create({ id: '7', email: 'joao@tal.com', nome: 'João', senha: 'maria@' }),
    ]);

    console.log('Usuários criados.');

    // Inserir publicações
    const publicacoes = await Promise.all([
      Publicacao.create({
        id: 1,
        titulo: 'CACHORROPORU',
        descricao: 'Arte contemporânea sobre cães',
        imagem: 'poru.jpeg',
        valor: 0,
        FK_Usuario_ID: '1',
      }),
      Publicacao.create({
        id: 2,
        titulo: 'São Jerônimo',
        descricao: 'Obra inspirada em São Jerônimo',
        imagem: 'sj.jpg',
        valor: 0,
        FK_Usuario_ID: '1',
      }),
      Publicacao.create({
        id: 3,
        titulo: 'Curso de pintura',
        descricao: 'Curso básico de pintura para iniciantes',
        imagem: 'ensinando.svg',
        valor: 75,
        FK_Usuario_ID: '3',
      }),
      Publicacao.create({
        id: 4,
        titulo: 'A Criação de Adão',
        descricao: 'Obra renascentista representando a criação',
        imagem: 'DedoComDedo.png',
        valor: 0,
        FK_Usuario_ID: '4',
      }),
      Publicacao.create({
        id: 5,
        titulo: 'Peça de Argila',
        descricao: 'Arte manual com argila',
        imagem: 'argila.png',
        valor: 30,
        FK_Usuario_ID: '1',
      }),
      Publicacao.create({
        id: 6,
        titulo: 'Curso de Origami',
        descricao: 'Aprenda a fazer origamis complexos',
        imagem: 'RaposaOrigami.jpg',
        valor: 99,
        FK_Usuario_ID: '4',
      }),
      Publicacao.create({
        id: 7,
        titulo: 'A noite estrelada',
        descricao: 'Obra clássica de Van Gogh',
        imagem: 'Vangogh.jpg',
        valor: 0,
        FK_Usuario_ID: '4',
      }),
      Publicacao.create({
        id: 8,
        titulo: 'Aprenda a desenhar',
        descricao: 'Guia prático para desenhar olhos realistas',
        imagem: 'Olho.png',
        valor: 60,
        FK_Usuario_ID: '3',
      }),
    ]);

    console.log('Publicações criadas.');

    // Inserir denúncias
    const denuncias = await Promise.all([
      Denuncia.create({ id: 99999, FK_Usuario_ID: '3', FK_Publicacoes_ID: 4, descricao: 'Conteúdo impróprio para crianças' }),
      Denuncia.create({ id: 88888, FK_Usuario_ID: '3', FK_Publicacoes_ID: 4, descricao: 'Violação de direitos autorais' }),
      Denuncia.create({ id: 77777, FK_Usuario_ID: '2', FK_Publicacoes_ID: 4, descricao: 'Spam' }),
      Denuncia.create({ id: 55555, FK_Usuario_ID: '2', FK_Publicacoes_ID: 3, descricao: 'Informações enganosas' }),
    ]);

    console.log('Denúncias criadas.');

    // Inserir mensagens
    const mensagens = await Promise.all([
      Mensagem.create({ id_usuario_remetente: '1', id_usuario_destinatario: '4', mensagem: 'Olá! Interessado na sua obra.' }),
      Mensagem.create({ id_usuario_remetente: '1', id_usuario_destinatario: '6', mensagem: 'Gostaria de saber mais sobre seus cursos.' }),
      Mensagem.create({ id_usuario_remetente: '1', id_usuario_destinatario: '3', mensagem: 'Parabéns pelas publicações!' }),
    ]);

    console.log('Mensagens criadas.');

    // Inserir pagamentos
    const pagamentos = await Promise.all([
      Pagamento.create({ FK_Publicacao_ID: 1, metodo_pagamento: 'PIX', valor: 100 }),
      Pagamento.create({ FK_Publicacao_ID: 1, metodo_pagamento: 'BOLETO', valor: 100}),
      Pagamento.create({ FK_Publicacao_ID: 1, metodo_pagamento: 'CARTAO', valor: 100}),
    ]);

    // Ler todos os usuários
    const usuariosParaLer = await Usuario.findAll();
    console.log('Usuários:', usuariosParaLer);

    // Ler uma publicação específica
    const publicacaoParaLer = await Publicacao.findByPk(1);
    console.log('Publicação:', publicacaoParaLer);



    // Atualizar nome do usuário com ID 1
    const usuarioParaAtualizar = await Usuario.findByPk(1);
    if (usuarioParaAtualizar) {
      await usuarioParaAtualizar.update({ nome: 'Adonai Atualizado' });
      console.log('Usuário atualizado:', usuarioParaAtualizar);
    }


    // Deletar uma publicação
    const publicacaoParaDeletar = await Publicacao.findByPk(2);
    if (publicacaoParaDeletar) {
      await publicacaoParaDeletar.destroy();
      console.log('Publicação deletada:', publicacaoParaDeletar);
    }

    // Deletar um usuário
    const usuarioParaDeletar = await Usuario.findByPk(7);
    if (usuarioParaDeletar) {
      await usuarioParaDeletar.destroy();
      console.log('Usuário deletado:', usuarioParaDeletar);
    }

    console.log('Pagamentos criados.');
  } catch (error) {
    console.error('Erro ao sincronizar o banco de dados:', error);
  }
})();