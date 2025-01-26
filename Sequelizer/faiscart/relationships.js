const Usuario = require('./usuario');
const Adm = require('./adm');
const Publicacao = require('./publicacao');
const Pagamento = require('./pagamentos');
const Denuncia = require('./denuncias');
const Mensagem = require('./mensagem');

module.exports = () => {
  // Relacionamento 1:N - Usuario -> Publicacoes
  Usuario.hasMany(Publicacao, { foreignKey: 'FK_Usuario_ID' });
  Publicacao.belongsTo(Usuario, { foreignKey: 'FK_Usuario_ID' });

  // Relacionamento 1:N - Publicacao -> Pagamentos
  Publicacao.hasMany(Pagamento, { foreignKey: 'FK_Publicacao_ID' });
  Pagamento.belongsTo(Publicacao, { foreignKey: 'FK_Publicacao_ID' });

  // Relacionamento 1:N - Usuario -> Denuncias
  Usuario.hasMany(Denuncia, { foreignKey: 'FK_Usuario_ID' });
  Denuncia.belongsTo(Usuario, { foreignKey: 'FK_Usuario_ID' });

  // Relacionamento 1:N - Publicacao -> Denuncias
  Publicacao.hasMany(Denuncia, { foreignKey: 'FK_Publicacoes_ID' });
  Denuncia.belongsTo(Publicacao, { foreignKey: 'FK_Publicacoes_ID' });

  // Relacionamento 1:N - Usuario -> Mensagens (como remetente)
  Usuario.hasMany(Mensagem, { foreignKey: 'id_usuario_remetente', as: 'MensagensEnviadas' });
  Mensagem.belongsTo(Usuario, { foreignKey: 'id_usuario_remetente', as: 'Remetente' });

  // Relacionamento 1:N - Usuario -> Mensagens (como destinatário)
  Usuario.hasMany(Mensagem, { foreignKey: 'id_usuario_destinatario', as: 'MensagensRecebidas' });
  Mensagem.belongsTo(Usuario, { foreignKey: 'id_usuario_destinatario', as: 'Destinatario' });
};