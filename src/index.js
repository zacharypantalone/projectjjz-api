const port = 8001;
const express = require('express');
const session = require('express-session');

const db = require('./db');

const app = express();
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(
  session({
    secret: 'secret',
    resave: false,
    saveUninitialized: false,
  }),
);

app.get('/test', (req, res) => {
  res.status(200).send('Test message: Back-end is ok');
});

app.post('/login', (req, res) => {
  db.query(
    `SELECT id
    FROM users
    WHERE email=$1
    `,
    [req.body.user.email],
  ).then(result => {
    if (result.rows.length === 0) {
      return res.status(404).send({ Message: 'User not found' });
    }
    if (req.body.user.password !== result.rows[0].password) {
      return res.status(401).send({ Message: 'User login unauthorized' });
    }
    req.session.id = result.rows[0].id;
    res.status(201).send({
      Message: 'User logged in successfully',
      user: result.rows[0].id,
    });
  });
});

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

app.post('/logout', (req, res) => {
  if (!req.session.id) {
  }
  console.log(req.session);
  req.session = null;
  console.log(req.session);
  res.status(200).send();
});

app.get('/quizresults', (req, res) => {
  // guery the current user from the front end - MVP version - user 1 = bob ross
  const userId = req.query.userId;
  // console.log(userId);
  db.query(
    `SELECT recommendation_1, recommendation_2, recommendation_3
      FROM quiz_results
      WHERE user_id=$1
      `,
    [1],
  ).then(data => res.json(data.rows));
});

app.get('/quiz'), (req, res) => {};
app.post('/quiz'), (req, res) => {};
app.get('/career'), (req, res) => {};
app.get('/schedule'), (req, res) => {};
app.post('/schedule'), (req, res) => {};

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
