const sequelize = require('./db');
const Usuario = require('./models/usuario');
const Publicacao = require('./models/publicacao');
const Adm = require('./models/adm');
const Mensagem = require('./models/mensagem');
const Denuncia = require('./models/denuncias');
const setupRelationships = require('./models/relationships');

(async () => {
  try {
    // Configurar relacionamentos
    setupRelationships();

    // Sincronizar o banco de dados
    await sequelize.sync({ force: true });
    console.log('Banco de dados sincronizado.');

    // // Criar um usuário
    // const usuario = await Usuario.create({
    //   id: 'USR001',
    //   nome: 'John Doe',
    //   email: 'john@example.com',
    //   senha: 'senha123',
    // });

    // // Criar o perfil do usuário
    // const profile = await Profile.create({
    //   bio: 'Desenvolvedor apaixonado por tecnologia.',
    //   avatar: 'avatar.jpg',
    //   FK_Usuario_ID: usuario.id,
    // });

    // console.log('Usuário e perfil criados:', usuario.toJSON(), profile.toJSON());

    // // Criar publicações
    // const publicacao1 = await Publicacao.create({
    //   titulo: 'Meu primeiro post',
    //   descricao: 'Este é o conteúdo do meu primeiro post!',
    //   valor: 0,
    //   FK_Usuario_ID: usuario.id,
    // });

    // const publicacao2 = await Publicacao.create({
    //   titulo: 'Dicas de programação',
    //   descricao: 'Aqui estão algumas dicas úteis para programadores.',
    //   valor: 0,
    //   FK_Usuario_ID: usuario.id,
    // });

    // console.log('Publicações criadas:', publicacao1.toJSON(), publicacao2.toJSON());

    // // Criar administradores (como tags no contexto original)
    // const adm1 = await Adm.create({ nome: 'Tecnologia', email: 'adm1@example.com', senha: '1234' });
    // const adm2 = await Adm.create({ nome: 'Programação', email: 'adm2@example.com', senha: '5678' });

    // console.log('Administradores criados:', adm1.toJSON(), adm2.toJSON());

    // // Associar administradores às publicações
    // await publicacao1.addAdm(adm1, { through: { relevance: 5 } });
    // await publicacao1.addAdm(adm2, { through: { relevance: 3 } });
    // await publicacao2.addAdm(adm2, { through: { relevance: 4 } });

    // console.log('Administradores associados às publicações.');

    // // Consultar publicações com administradores
    // const publicacoes = await Publicacao.findAll({
    //   include: {
    //     model: Adm,
    //     through: { attributes: ['relevance'] },
    //   },
    // });

    console.log('Publicações com administradores:', JSON.stringify(publicacoes, null, 2));
  } catch (error) {
    console.error('Erro ao sincronizar o banco de dados:', error);
  }
})();