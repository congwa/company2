const mysql = require('think-model-mysql');

module.exports = {
  handle: mysql,
  database: 'nideshop',
  prefix: 'nideshop_',
  encoding: 'utf8mb4',
  host: '127.0.0.1',//139.199.103.116
  port: '33070',
  user: 'root',
  password: 'congwang0921!',
  dateStrings: true
};
