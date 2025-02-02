const { DataTypes } = require('sequelize');
const sequelize = require('../db');

const Adm = sequelize.define('Adm', {
  id: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true,
  },
  email: {
    type: DataTypes.STRING(50),
    allowNull: false,
    unique: true, // Garante que o email seja único
  },
  nome: {
    type: DataTypes.STRING(50),
    allowNull: false,
  },
  senha: {
    type: DataTypes.STRING(50),
    allowNull: false,
  },
  telDeSuporte: {
    type: DataTypes.STRING(20),
    allowNull: false,
  },
});

module.exports = Adm;