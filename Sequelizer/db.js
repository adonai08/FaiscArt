const {Sequelize} = require('sequelize');
const sequelize = new Sequelize(
    'sequelize', // nome do banco
    'aluno.ifal', // nome do usuario
    'aluno.ifal', // senha de acesso
    {
        host: '127.0.0.1',
        dialect: 'mysql'
    }
);
module.exports = sequelize;