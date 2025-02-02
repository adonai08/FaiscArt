const { DataTypes } = require('sequelize');
const sequelize = require('../db');
const Usuario = require('./usuario');
const Publicacao = require('./publicacao');

const Denuncia = sequelize.define('Denuncia', {
  id: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true,
  },
  FK_Publicacoes_ID: {
    type: DataTypes.INTEGER,
    allowNull: false,
    references: {
      model: Publicacao,
      key: 'id',
    },
  },
  FK_Usuario_ID: {
    type: DataTypes.STRING(15),
    allowNull: false,
    references: {
      model: Usuario,
      key: 'id',
    },
  },
  descricao: {
    type: DataTypes.STRING(50),
    allowNull: false,
  },
}, );

module.exports = Denuncia;