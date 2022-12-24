require('dotenv').config({ path: './.env' });
const Client = require('pg').Client;


const user = process.env.USERNAME || 'vagrant';
const password = process.env.PASSWORD || '123';
const host = process.env.HOST || 'localhost';
const database = process.env.DATABASE || 'football';
const port = process.env.PORT;

const client = new Client({
  user,
  password,
  host,
  database,
  port
});

// Establish a connection to the specified database
client.connect();

module.exports = { client };
