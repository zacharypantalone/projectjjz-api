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

app.get('/user', (req, res) => {
  db.query(
    `SELECT first_name
     FROM users
     WHERE id=$1`,
    [req.session.userId],
  ).then(data => {
    res.send(data.rows[0]);
  });
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
  INSERT INTO users (first_name, last_name, email, password, password_confirmation) 
  VALUES ($1,$2,$3,$4,$5)
  RETURNING *
  `,
    [firstname, lastname, email, password, passwordconfirm],
  )
    .then(data => {
      req.session.userId = data.rows[0].id;
    })
    .then(() => {
      res.status(201).send({
        Message: 'User registered successfully',
      });
    });
});

app.post('/logout', (req, res) => {
  req.session = null;
  res.status(200).send();
});

app.get('/quizquestions', (req, res) => {
  db.query(`SELECT * FROM questions`).then(data => res.json(data.rows));
});

app.get('/quizresults', (req, res) => {
  const userID = req.session.userId;
  if (userID) {
    db.query(
      `SELECT job_one_id, job_two_id, job_three_id
        FROM quiz_results
        WHERE user_id=$1
        `,
      [userID],
    ).then(data1 => {
      if (!data1.rows.length > 0) {
        res.send([]);
        return;
      }
      db.query(
        `SELECT id, title, img, body 
        FROM jobs 
        WHERE id IN ($1, $2, $3);`,
        [
          data1.rows[0].job_one_id,
          data1.rows[0].job_two_id,
          data1.rows[0].job_three_id,
        ],
      ).then(data2 => {
        res.json(data2.rows);
      });
    });
  } else {
    res.status(401).send({ Message: 'Quiz Results not found' });
  }
});

app.get('/careerinfo/:jobId', (req, res) => {
  const jobID = req.params.jobId;
  db.query(
    `SELECT * FROM jobs 
    WHERE id = $1`,
    [jobID],
  ).then(data => {
    db.query(
      `SELECT * FROM articles
    WHERE articles.jobs_id = $1`,
      [jobID],
    ).then(data1 => {
      db.query(
        `SELECT * FROM learning_links
      WHERE learning_links.jobs_id = $1`,
        [jobID],
      ).then(data2 => {
        const returnedData = {
          article: data1.rows,
          job: data.rows[0],
          learning: data2.rows,
        };
        res.json(returnedData);
      });
    });
  });
});

app.post('/quizresults', (req, res) => {
  const userId = req.session.userId;

  db.query(
    `INSERT INTO quiz_results (user_id, job_one_id, job_two_id, job_three_id)
    VALUES ($1, $2, $3, $4)
    `,
    [userId, 1, 2, 3],
  ).then(() => {
    res.status(201).send({ Message: 'Quiz Results posted successfully' });
  });
});

app.delete('/quizresults', (req, res) => {
  db.query(
    `DELETE FROM quiz_results
     WHERE user_id=$1`,
    [req.session.userId],
  );
});

app.get('/mentors', (req, res) => {
  db.query(
    `
    SELECT * from mentors`,
  ).then(data => res.status(201).send(data.rows));
});

app.get('/days', (req, res) => {
  db.query(`SELECT id,day from days`).then(data =>
    res.status(201).send(data.rows),
  );
});

app.get('/times', (req, res) => {
  db.query(`SELECT id,time from times`).then(data =>
    res.status(201).send(data.rows),
  );
});

// app.post('/schedule'), (req, res) => {};

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
