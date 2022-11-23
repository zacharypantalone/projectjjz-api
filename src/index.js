const port = 8001;
const express = require('express');

const server = express();
server.use(express.json());
server.use(express.urlencoded({ extended: true }));

const db = require('./db');

server.get('/test', (req, res) => {
  res.status(200).send('Test message: Back-end is ok');
});
server.get('/db', (req, res) => {
  db.query(
    `
    SELECT * from tests
    `,
  ).then(data => {
    res.send(data.rows[0]);
  });
});

server.post('/register', (req, res) => {
  const { firstname, lastname, email, password, passwordconfirm } =
    req.body.user;

  db.query(
    `
  INSERT INTO users (first_name, last_name, email, password, password_confirmation) VALUES ($1,$2,$3,$4,$5)
  `,
    [firstname, lastname, email, password, passwordconfirm],
  ).then(data => res.send(data.rows));
});

server.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
