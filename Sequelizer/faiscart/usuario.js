const { DataTypes } = require('sequelize');
const sequelize = require('../db');

const Usuario = sequelize.define('Usuario', {
  id: {
    type: DataTypes.STRING(15),
    primaryKey: true,
    allowNull: false, 
  },
  nome: {
    type: DataTypes.STRING(100),
    allowNull: false, 
  },
  email: {
    type: DataTypes.STRING(100),
    allowNull: false, 
    unique: true, 
    validate: {
      isEmail: true, 
    },
  },
  senha: {
    type: DataTypes.STRING(100),
    allowNull: false, 
  },
},);

module.exports = Usuario;