const { Client } = require('pg');
const client = new Client({ connectionString: 'careersquared' });

client.connect();

module.exports = client;
// do we need this ? ^^^^
