const port = 8001;
const express = require('express');

const server = express();
const bodyparser = require('body-parser');
const db = require('./db');
//Set up a route for a get request to /test as mentioned in our front-end codebase
server.get('/test', (req, res) => {
  //Run a basic query to our database, requesting all rows from the 'tests' table
  db.query(
    `
    SELECT * from tests
    `,
    //Once the query is complete send it to the client side (haven't quite figured out how formatting works yet)
  ).then(data => {
    res.send(data.rows[0]);
  });
});

server.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
