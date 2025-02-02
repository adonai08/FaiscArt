const {Sequelize} = require('sequelize');
const sequelize = new Sequelize(
    'sequelize', // nome do banco
    'root', // nome do usuario
    'M@theus01', // senha de acesso
    {
        host: '127.0.0.1',
        dialect: 'mysql'
    }
);
module.exports = sequelize;