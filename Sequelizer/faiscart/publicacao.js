const { DataTypes } = require('sequelize');
const sequelize = require('../db');
const Usuario = require('./usuario'); // Importa o modelo Usuario para referência

const Publicacao = sequelize.define('Publicacoes', {
  id: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true,
  },
  titulo: {
    type: DataTypes.STRING(100),
    allowNull: false,
  },
  descricao: {
    type: DataTypes.TEXT,
    allowNull: true,
  },
  imagem: {
    type: DataTypes.STRING(255),
    allowNull: true,
  },
  valor: {
    type: DataTypes.INTEGER, // Alterado para INTEGER para refletir a definição SQL
    allowNull: false,
  },
  FK_Usuario_ID: {
    type: DataTypes.STRING(15),
    allowNull: false,
    references: {
      model: Usuario, // Referencia o modelo Usuario
      key: 'ID',      // Referencia a coluna ID do modelo Usuario
    },
    onUpdate: 'CASCADE', // Propaga alterações no ID do usuário
    onDelete: 'CASCADE', // Remove publicações se o usuário for deletado
  },
});


module.exports = Publicacao;
