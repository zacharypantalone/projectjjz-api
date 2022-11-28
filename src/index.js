const port = 8001;
const express = require('express');
const session = require('express-session');
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
  
const db = require('./db');

app.get('/test', (req, res) => {
  res.status(200).send('Test message: Back-end is ok');
});

app.post('/login', (req, res) => {
  db.query(
    `SELECT id, email, password
    FROM users
    WHERE email=$1
    `,
    [req.body.user.email],
  ).then(data => {
    if (data.rows.length === 0) {
      return res.status(404).send({ Message: 'User not found' });
    }
    if (req.body.user.password !== data.rows[0].password) {
      return res.status(401).send({ Message: 'User login unauthorized' });
    }
    req.session.userId = data.rows[0].id;
    res.status(201).send({
      Message: 'User logged in successfully',
      user: data.rows[0].id,
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
  db.query(
    `
    SELECT id from users
    WHERE email = $1`,
    [email],
  ).then(data => {
    req.session.userId = data.rows[0].id;
    res.status(201).send({
      Message: 'User registered successfully',
    });
  });
});

app.post('/logout', (req, res) => {
  req.session = null;
  res.status(200).send();
});

app.get('/quizresults', (req, res) => {
  const userID = req.session.userId
  db.query(
    `SELECT recommendation_1, recommendation_2, recommendation_3
      FROM quiz_results
      WHERE user_id=$1
      `,
    [userID],
  ).then(data => res.json(data.rows));
});

app.post('/quizresults'), (req, res) => {
};

app.post('/schedule'), (req, res) => {};

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
