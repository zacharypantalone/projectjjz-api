const port = 8001;
const express = require('express');
const cookieSession = require('cookie-session');

const db = require('./db');

const app = express();
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(
  cookieSession({
    name: 'session',
    keys: ['key1', 'key2'],

    maxAge: 24 * 60 * 60 * 1000,
  }),
);

app.get('/test', (req, res) => {
  res.status(200).send('Test message: Back-end is ok');
});

app.post('/dashboard', (req, res) => {
  console.log(req.session);
  db.query(
    `SELECT email, password, id
    FROM users
    WHERE email=$1
    AND password=$2
    `,
    [req.body.user.email, req.body.user.password],
  ).then(result => {
    if (result.rows.length === 1) {
      req.session.userID = result.rows[0].id;
      res.status(200).send({ userID: result.rows[0].id });
    }
  });
});

// app.get('/dashboard',() => {
//   db.query(
//     `SELECT articles where userID = req.session`
//   )
// })

app.post('/register', (req, res) => {
  const { firstname, lastname, email, password, passwordconfirm } =
    req.body.user;

  db.query(
    `
  INSERT INTO users (first_name, last_name, email, password, password_confirmation) VALUES ($1,$2,$3,$4,$5)
  `,
    [firstname, lastname, email, password, passwordconfirm],
  );
});

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
