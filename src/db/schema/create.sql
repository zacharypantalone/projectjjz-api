DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS appointments CASCADE;
DROP TABLE IF EXISTS mentors CASCADE;
DROP TABLE IF EXISTS careers CASCADE;
DROP TABLE IF EXISTS jobs CASCADE;
DROP TABLE IF EXISTS quiz_questions CASCADE;
DROP TABLE IF EXISTS quiz_results CASCADE;
DROP TABLE IF EXISTS questions CASCADE;
DROP TABLE IF EXISTS articles CASCADE;
DROP TABLE IF EXISTS tests CASCADE;
DROP TABLE IF EXISTS quiz CASCADE;
DROP TABLE IF EXISTS user_quiz CASCADE;
-- This is a dummy table with one record inserted into it
CREATE TABLE tests (
  id SERIAL PRIMARY KEY NOT NULL,
  body VARCHAR(255) NOT NULL
);
-- Commented for testing purposes - There are syntax errors to test here

CREATE TABLE users (
  id SERIAL PRIMARY KEY NOT NULL,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  password_confirmation VARCHAR(255) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- CREATE TABLE user_quiz (
--   id SERIAL PRIMARY KEY NOT NULL,
--   user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
--   quiz_taken BOOLEAN 
-- );

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
  learning_links VARCHAR(500),
  articles VARCHAR(500),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- CREATE TABLE quiz (
--   id SERIAL PRIMARY KEY NOT NULL,
--   quiz_name VARCHAR(255)
-- );


CREATE TABLE questions (
  id SERIAL PRIMARY KEY NOT NULL,
  question VARCHAR(255),
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
-- CREATE TABLE mentors (
--   id SERIAL PRIMARY KEY NOT NULL,
--   job_id INTEGER REFERENCES jobs(id) ON DELETE CASCADE,
--   first_name VARCHAR(255) NOT NULL,
--   last_name VARCHAR(255) NOT NULL,
--   available_times VARCHAR(255),
--   booked_times VARCHAR(255),
--   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );

-- CREATE TABLE articles (
--   id SERIAL PRIMARY KEY NOT NULL,
--   title VARCHAR(255),
--   job_id INTEGER REFERENCES jobs(id) ON DELETE CASCADE,
--   body_hyperlink TEXT,
--   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );

-- CREATE TABLE appointments (
--   id SERIAL PRIMARY KEY NOT NULL,
--   user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
--   mentor_id INTEGER REFERENCES mentors(id) ON DELETE CASCADE,
--   appointment_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );