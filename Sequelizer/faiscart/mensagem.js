const { DataTypes } = require('sequelize');
const sequelize = require('../db');
const Usuario = require('./usuario');

const Mensagem = sequelize.define('Mensagem', {
  id_mensagem: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true,
  },
  id_usuario_remetente: {
    type: DataTypes.STRING(15),
    allowNull: false,
    references: {
      model: Usuario,
      key: 'id',
    },
  },
  id_usuario_destinatario: {
    type: DataTypes.STRING(15),
    allowNull: false,
    references: {
      model: Usuario,
      key: 'id',
    },
  },
  mensagem: {
    type: DataTypes.TEXT,
    allowNull: false,
  },
  data_envio: {
    type: DataTypes.DATE,
    allowNull: false,
    defaultValue: DataTypes.NOW,
  },
}, {

});

module.exports = Mensagem;