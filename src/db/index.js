//Create a connection to a our database named careersquared (see src/create.sql line 11)
const { Client } = require('pg');
const client = new Client({ connectionString: 'careersquared' });

client.connect();

module.exports = client;
// do we need this ? ^^^^

//Jack - Moved this file out of the /schema folder as it was having trouble
//with the import/export pathing.
// Also changed it to use the minimal example in the postgres documentation
