const { DataTypes } = require('sequelize');
const sequelize = require('../db');
const Publicacao = require('./publicacao');

const Pagamento = sequelize.define('Pagamento', {
  id: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true,
  },
  FK_Publicacao_ID: {
    type: DataTypes.INTEGER,
    allowNull: true,
    references: {
      model: Publicacao,
      key: 'id',
    },
  },
  metodo_pagamento: {
    type: DataTypes.STRING(15),
    allowNull: true,
  },
  valor: {
    type: DataTypes.INTEGER,
    allowNull: true,
  },
}, );

module.exports = Pagamento;