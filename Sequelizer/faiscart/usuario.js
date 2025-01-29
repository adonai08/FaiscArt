const { DataTypes } = require('sequelize');
const sequelize = require('../db');

const Usuario = sequelize.define('Usuario', {
  id: {
    type: DataTypes.STRING(15),
    primaryKey: true,
    allowNull: false, // Certifica que o ID é obrigatório
  },
  nome: {
    type: DataTypes.STRING(100),
    allowNull: false, // Nome é obrigatório
  },
  email: {
    type: DataTypes.STRING(100),
    allowNull: false, // Email é obrigatório
    unique: true, // Garante que o email seja único
    validate: {
      isEmail: true, // Valida o formato de email
    },
  },
  senha: {
    type: DataTypes.STRING(100),
    allowNull: false, // Senha é obrigatória
  },
},);

module.exports = Usuario;