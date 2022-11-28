--  ///////////////////////////////////////////
--  /////////       Users     /////////////////
--  ///////////////////////////////////////////
-- INSERT INTO users (first_name, last_name, email, password, created_at, updated_at) VALUES (info here);
INSERT INTO users (first_name, last_name, email, password, password_confirmation) VALUES ('Bob','Ross','bob@ross.com','clouds','clouds');

--  ///////////////////////////////////////////
--  /////////       mentors     ///////////////
--  ///////////////////////////////////////////


-- INSERT INTO mentors (job_id, first_name, last_name, available_times, booked_times, created_at, updated_at) VALUES (info here);
-- INSERT INTO mentors (job_id, first_name, last_name, available_times, booked_times, created_at, updated_at) VALUES (1, 'Suzie', 'Summers',  FIGURE OUT DATES, FIGURE OUT BOOKED TIMES);
-- INSERT INTO mentors (job_id, first_name, last_name, available_times, booked_times, created_at, updated_at) VALUES (2, 'Paul', 'Parsons',  FIGURE OUT DATES, FIGURE OUT BOOKED TIMES);
-- INSERT INTO mentors (job_id, first_name, last_name, available_times, booked_times, created_at, updated_at) VALUES (3, 'Ned', 'Nielson',  FIGURE OUT DATES, FIGURE OUT BOOKED TIMES);


--  ///////////////////////////////////////////
--  /////////       appointments     //////////
--  ///////////////////////////////////////////

-- INSERT INTO appointments (user_id, mentor_id, appointment_time, created_at, updated_at) VALUES (info here);
INSERT INTO appointments (user_id, mentor_id, appointment_time, created_at, updated_at) VALUES (info here)
INSERT INTO appointments (user_id, mentor_id, appointment_time, created_at, updated_at) VALUES (info here)
INSERT INTO appointments (user_id, mentor_id, appointment_time, created_at, updated_at) VALUES (info here)


--  ///////////////////////////////////////////
--  /////////       careers     ///////////////
--  ///////////////////////////////////////////

-- INSERT INTO careers (title, career_type, created_at, updated_at) VALUES (info here);
-- INSERT INTO careers (title, career_type, created_at, updated_at) VALUES ('Test Career','This is the test''s career type');
-- INSERT INTO careers (title, career_type, created_at, updated_at) VALUES ('Tech', 'career type');


--  ///////////////////////////////////////////
--  /////////       jobs        ///////////////
--  ///////////////////////////////////////////

-- INSERT INTO jobs (career_id, img, title, body, average_salary, salary_range, training, skills, learning_links, articles career_type) VALUES (info here);
-- INSERT INTO jobs (career_id, img, title, body, average_salary, salary_range, training, skills, learning_links, articles, career_type) VALUES (1,'https://cdn.dribbble.com/users/1626229/screenshots/16311321/media/0d2090c377191f4e49bde0932d71f9d3.jpg?compress=1&resize=400x300','Creative Coding','Like any form of expression, creative coding can be used to enhance your existing career or to start a new one. Experienced web developers might learn creative coding to help them create better interactive websites. Others use creative coding as a form of artistic expression. Agencies and start-ups are using creative coding to build interactive installations for the public and big brands',
-- '$82,094/year', '$25,000 - $173,000/year', '6 months - 2 years', 'Javascript, P5.js, Sketch.js, Three.js, 3D',  'https://thecodingtrain.com/tracks, https://www.kadenze.com/courses/the-nature-of-code-ii/info, https://www.udemy.com/course/code-art/, https://www.ecuad.ca/academics/teen-programs/summer-institute-for-teens/creative-coding-web-design-sit', 
-- 'https://interestingengineering.com/culture/everything-you-need-to-know-about-the-artistic-world-of-creative-coding', 'Tech?');
-- INSERT INTO jobs (career_id, img, title, body, average_salary, salary_range, training, skills, learning_links, articles, career_type) VALUES (2,'https://static.vecteezy.com/system/resources/thumbnails/008/516/079/small_2x/man-and-woman-are-working-together-on-programming-vector.jpg','Front End Developer','What is a front end developer youre wondering?! Their main task is the make sure websites are interacted with easily by users. Through a combination of coding and visual design, they are tasked with the front end building and upkeep of apps and websites.',
-- '$72,208/year', '$49,000 - $106,000/year', '3 months - 2 years', 'Javascript, HTML, CSS, jQuery',  'https://www.freecodecamp.org/, https://www.udemy.com/course/crashing-course-for-web-front-end-development, https://www.thinkful.com/bootcamp/web-development/#introduction, https://www.lighthouselabs.ca/', 
-- 'https://www.simplilearn.com/how-to-become-a-front-end-developer-article,  https://en.wikipedia.org/wiki/Front-end_web_development, https://www.weareadam.com/blog/2020/11/a-day-in-the-life-of-a-front-end-developer?source=google.com', 'Tech?');
-- INSERT INTO jobs (career_id, img, title, body, average_salary, salary_range, training, skills, learning_links, articles, career_type) VALUES (3,'https://static.vecteezy.com/system/resources/previews/008/517/363/original/man-and-woman-are-doing-research-together-vector.jpg','A back end developers focus is behind the scene. They control what you cannot see, like data and functionality. This is an excellent choice for those with a logical brain and are interested in the inner workings. Web development is a fast growing industry with tons of demand and earning potential.',
-- '$81,363/year', '$21,000 - $153,500/year', '3 months - 2 years', 'Javascript, Python, Java, SQL, Git, HTML, CSS',  'https://www.freecodecamp.org/, https://www.udemy.com/courses/search/?q=backend+web+development&src=sac&kw=Back, Software Engineering Online Bootcamp | 1-on-1 Mentorship | Thinkful™ https://www.lighthouselabs.ca/', 
-- 'Software Engineering Online Bootcamp | 1-on-1 Mentorship | Thinkful™, https://www.guru99.com/what-is-backend-developer.html', 'Tech?');


--  ///////////////////////////////////////////
--  /////////      quiz results    ////////////
--  ///////////////////////////////////////////

INSERT INTO quiz_results (user_id, recommendation_1, recommendation_2, recommendation_3) VALUES (1, 'recommendation 1', 'recommendation 2', 'recommendation 3');


--Test seed for the 'tests' table
INSERT INTO tests (body) VALUES ('This is the second test records body');


--  I didnt delete the below but I don't think we need them anymore?
-- INSERT INTO questions (questions, option_a, option_b, option_c, created_at, updated_at) VALUES (info here);
-- INSERT INTO articles (title, job_id, body_hyperlink, created_at, updated_at) VALUES (info);
-- INSERT INTO articles (title, job_id, body_hyperlink, created_at, updated_at) VALUES ('Test Article',1,'This is the test article''s body');



