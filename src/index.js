const port = 8001;
const express = require('express');

const server = express();
const bodyparser = require('body-parser');
const db = require('./db');

server.get('/test', (req, res) => {
  db.query(
    `
    SELECT * from tests
    `,
  ).then(data => {
    res.send(data.rows[0]);
  });
});

server.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
