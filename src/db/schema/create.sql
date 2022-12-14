CREATE DATABASE careersquared;

DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS mentors CASCADE;
DROP TABLE IF EXISTS days CASCADE;
DROP TABLE IF EXISTS times CASCADE;
DROP TABLE IF EXISTS appointments CASCADE;


DROP TABLE IF EXISTS careers CASCADE;
DROP TABLE IF EXISTS jobs CASCADE;
DROP TABLE IF EXISTS quiz_results CASCADE;
DROP TABLE IF EXISTS questions CASCADE;
DROP TABLE IF EXISTS articles CASCADE;

DROP TABLE IF EXISTS learning_links CASCADE;

CREATE TABLE users (
  id SERIAL PRIMARY KEY NOT NULL,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  password_confirmation VARCHAR(255) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE careers (
  id SERIAL PRIMARY KEY NOT NULL,
  career_type VARCHAR(255)
);

CREATE TABLE jobs (
  id SERIAL PRIMARY KEY NOT NULL,
  career_id INTEGER REFERENCES careers(id) ON DELETE CASCADE,
  img VARCHAR(255),
  title VARCHAR(255),
  body VARCHAR(500),
  average_salary VARCHAR(255),
  salary_range VARCHAR(255),
  training VARCHAR(255),
  skills VARCHAR(255),
  -- learning_links VARCHAR(255), 
  -- articles VARCHAR(255),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE learning_links (
  id SERIAL PRIMARY KEY NOT NULL,
  link VARCHAR(255),
  jobs_id INTEGER REFERENCES jobs(id) ON DELETE CASCADE
);

CREATE TABLE articles (
  id SERIAL PRIMARY KEY NOT NULL,
  article VARCHAR(255),
  jobs_id INTEGER REFERENCES jobs(id) ON DELETE CASCADE
);

CREATE TABLE questions (
  id SERIAL PRIMARY KEY NOT NULL,
  question VARCHAR(510),
  answer_one VARCHAR(255),
  answer_two VARCHAR(255)
);

CREATE TABLE quiz_results (
  id SERIAL PRIMARY KEY NOT NULL,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  job_one_id INTEGER REFERENCES jobs(id) ON DELETE CASCADE,
  job_two_id INTEGER REFERENCES jobs(id) ON DELETE CASCADE,
  job_three_id INTEGER REFERENCES jobs(id) ON DELETE CASCADE
);

CREATE TABLE mentors (
  id SERIAL PRIMARY KEY NOT NULL,
  job_id INTEGER REFERENCES jobs(id) ON DELETE CASCADE,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  blurb TEXT NOT NULL,
  headshot VARCHAR(255) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE days (
  id SERIAL PRIMARY KEY NOT NULL,
  day VARCHAR(255) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE times (
  id SERIAL PRIMARY KEY NOT NULL,
  time VARCHAR(255) NOT NULL,
  day_id INTEGER REFERENCES days(id) ON DELETE CASCADE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE appointments (
  id SERIAL PRIMARY KEY NOT NULL,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  mentor_id INTEGER REFERENCES mentors(id) ON DELETE CASCADE,
  day_id INTEGER REFERENCES days(id) ON DELETE CASCADE,
  time_id INTEGER REFERENCES times(id) ON DELETE CASCADE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);