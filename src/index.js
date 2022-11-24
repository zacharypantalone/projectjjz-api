const port = 8001;
const express = require('express');

const db = require('./db');

const app = express();
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.get('/test', (req, res) => {
  res.status(200).send('Test message: Back-end is ok');
});

app.post('/login', (req, res) => {
  db.query(
    `SELECT email, password, id
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
    res
      .status(201)
      .send({ Message: 'User logged in successfully', user: result.rows[0].id })
  });
});

app.get('/register'), (req, res) => {};
app.post('/register'), (req, res) => {};
app.get('/dashboard'), (req, res) => {};
app.get('/quiz'), (req, res) => {};
app.post('/quiz'), (req, res) => {};
app.get('/career'), (req, res) => {};
app.get('/schedule'), (req, res) => {};

app.get('/dashboard', (req, res) => {
  if (req.session.userID) {
    db.query(
      `SELECT recommendation_1, recommendation_2, recommendation_3
      FROM quiz_results
      WHERE user_id=$1
      `,
      [req.session.userID],
    ).then(res.send(res.rows));
  } else {
    res.status(401).send('Unauthorized user, redirecting to landing page');
  }
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

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
