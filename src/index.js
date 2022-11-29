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
  console.log(req.session)
  const userID = req.session.userId
  db.query(
    `SELECT job_one_id, job_two_id, job_three_id
      FROM quiz_results
      WHERE user_id=$1
      `,
    [userID],
  ).then(data1 =>
    db.query(
      `SELECT title, img, body FROM jobs 
      WHERE id IN ($1, $2, $3);`,
      [data1.rows[0].job_one_id, data1.rows[0].job_two_id, data1.rows[0].job_three_id]
    )
  )
    .then(data2 => res.json(data2.rows));
});



app.get('/careerinfo/:jobId', (req, res) => {
  const jobID = req.params.jobId
  db.query(
    `SELECT * FROM jobs
    WHERE id = $1`,
    [jobID]
  )
    .then(data => {

      console.log("*******", data.rows)
      res.json(data.rows[0])
    })
    
})



app.post('/quizresults'), (req, res) => {
};

app.post('/schedule'), (req, res) => { };

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
