INSERT INTO users (first_name, last_name, email, password, created_at, updated_at) VALUES (info here);

INSERT INTO appointments (user_id, mentor_id, appointment_time, created_at, updated_at) VALUES (info here);

INSERT INTO mentors (job_id, first_name, last_name, available_times, booked_times, created_at, updated_at) VALUES (info here);

INSERT INTO careers (title, career_type, created_at, updated_at) VALUES (info here);
-- INSERT INTO careers (title, career_type, created_at, updated_at) VALUES ('Test Career','This is the test''s career type');

INSERT INTO jobs (career_id, title, jobs_blurb, career_type, ) VALUES (info here);
-- INSERT INTO jobs (career_id, title, jobs_blurb, career_type, ) VALUES (1,'Test Job Title','This is the test job''s blurb','This is the test job''s career type');

INSERT INTO quiz_results (user_id, recommentdation_1, recommentdation_2, recommentdation_3, created_at, updated_at) VALUES (info here);

INSERT INTO questions (questions, option_a, option_b, option_c, created_at, updated_at) VALUES (info here);

INSERT INTO articles (title, job_id, body_hyperlink, created_at, updated_at) VALUES (info);
-- INSERT INTO articles (title, job_id, body_hyperlink, created_at, updated_at) VALUES ('Test Article',1,'This is the test article''s body');

--Test seed for the 'tests' table
INSERT INTO tests (body) VALUES ('This is the first test records body');