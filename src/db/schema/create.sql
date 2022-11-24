CREATE DATABASE careersquared;

DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS appointments CASCADE;
DROP TABLE IF EXISTS mentors CASCADE;
DROP TABLE IF EXISTS careers CASCADE;
DROP TABLE IF EXISTS jobs CASCADE;
DROP TABLE IF EXISTS quiz_results CASCADE;
DROP TABLE IF EXISTS questions CASCADE;
DROP TABLE IF EXISTS articles CASCADE;
DROP TABLE IF EXISTS tests CASCADE;
-- Create DATABASE line is required to house the tables

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

CREATE TABLE quiz_results (
  id SERIAL PRIMARY KEY NOT NULL,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  recommendation_1 VARCHAR(255),
  recommendation_2 VARCHAR(255),
  recommendation_3 VARCHAR(255),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- CREATE TABLE appointments (
--   id SERIAL PRIMARY KEY NOT NULL,
--   user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
--   mentor_id INTEGER REFERENCES mentors(id) ON DELETE CASCADE,
--   appointment_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );

-- CREATE TABLE mentors (
--   id SERIAL PRIMARY KEY NOT NULL,
--   job_id INTEGER REFERENCES jobs(id) ON DELETE CASCADE,
--   first_name VARCHAR(255) NOT NULL,
--   last_name VARCHAR(255) NOT NULL,
--   available_times VARCHAR(255),
--   booked_times VARCHAR(255),
--   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );

-- CREATE TABLE careers (
--   id SERIAL PRIMARY KEY NOT NULL,
--   title VARCHAR(255),
--   career_type VARCHAR(255),
--   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );

-- CREATE TABLE jobs (
--   id SERIAL PRIMARY KEY NOT NULL,
--   career_id INTEGER REFERENCES careers(id) ON DELETE CASCADE,
--   title VARCHAR(255),
--   jobs_blurb VARCHAR(255),
--   career_type VARCHAR(255),
--   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );



-- CREATE TABLE articles (
--   id SERIAL PRIMARY KEY NOT NULL,
--   title VARCHAR(255),
--   job_id INTEGER REFERENCES jobs(id) ON DELETE CASCADE,
--   body_hyperlink TEXT,
--   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );