const port = 8001;
const express = require('express');
const basicAuth = require('express-basic-auth');

const server = express();
server.use(express.json());
server.use(express.urlencoded({ extended: true }));
// server.use(basicAuth({ authorizer: myAuthorizer }));

const db = require('./db');

// function myAuthorizer(email, password) {
//   const userMatches = basicAuth.safeCompare(email, 'bob@ross.com');
//   const passwordMatches = basicAuth.safeCompare(password, 'clouds');

//   return userMatches & passwordMatches;
// }

server.post('/dashboard', (req, res) => {
  console.log(req.body);
  const { email, password } = req.body.user;
  db.query(
    `
    SELECT first_name, email, password
    FROM users
    WHERE email=$1 AND password=$2
    `,
    [email, password],
  ).then(result => {
    console.log(result.rows);
    // if (myAuthorizer(email, password)) {
    //   res.status(200).send('User Login Authentication Successful');
    // } else {
    //   res.status(404).send('User not found');
    // }
  });
});

server.get('/test', (req, res) => {
  res.status(200).send('Test message: Back-end is ok');
});

server.post('/register', (req, res) => {
  const { firstname, lastname, email, password, passwordconfirm } =
    req.body.user;

  db.query(
    `
  INSERT INTO users (first_name, last_name, email, password, password_confirmation) VALUES ($1,$2,$3,$4,$5)
  `,
    [firstname, lastname, email, password, passwordconfirm],
  );
});

server.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
