//Create a connection to a our database named careersquared (see src/create.sql line 11)
const { Client } = require('pg');
const client = new Client({ connectionString: 'careersquared' });

client.connect();

module.exports = client;
