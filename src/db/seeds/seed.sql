--  ///////////////////////////////////////////
--  /////////       Users     /////////////////
--  ///////////////////////////////////////////

INSERT INTO users (first_name, last_name, email, password, password_confirmation) VALUES ('Bob','Ross','bob@ross.com','clouds','clouds');

--  ///////////////////////////////////////////
--  /////////       careers     ///////////////
--  ///////////////////////////////////////////

INSERT INTO careers (career_type) VALUES ('Technology');

--  ///////////////////////////////////////////
--  /////////       jobs        ///////////////
--  ///////////////////////////////////////////

INSERT INTO jobs (career_id, img, title, body, average_salary, salary_range, training, skills) VALUES (1,'https://cdn.dribbble.com/users/1626229/screenshots/16311321/media/0d2090c377191f4e49bde0932d71f9d3.jpg?compress=1&resize=400x300','Creative Coding','Like any form of expression, creative coding can be used to enhance your existing career or to start a new one. Experienced web developers might learn creative coding to help them create better interactive websites. Others use creative coding as a form of artistic expression. Agencies and start-ups are using creative coding to build interactive installations for the public and big brands',
'$82,094/year', '$25,000 - $173,000/year', '6 months - 2 years', 'Javascript, P5.js, Sketch.js, Three.js, 3D');

INSERT INTO jobs (career_id, img, title, body, average_salary, salary_range, training, skills) VALUES (1,'https://static.vecteezy.com/system/resources/thumbnails/008/516/079/small_2x/man-and-woman-are-working-together-on-programming-vector.jpg','Front End Developer','What is a front end developer youre wondering?! Their main task is the make sure websites are interacted with easily by users. Through a combination of coding and visual design, they are tasked with the front end building and upkeep of apps and websites.',
'$72,208/year', '$49,000 - $106,000/year', '3 months - 2 years', 'Javascript, HTML, CSS, jQuery');
INSERT INTO jobs (career_id, img, title, body, average_salary, salary_range, training, skills)
VALUES (1,'https://static.vecteezy.com/system/resources/previews/008/517/363/original/man-and-woman-are-doing-research-together-vector.jpg','Back End Developer','A back end developers focus is behind the scene. They control what you cannot see, like data and functionality. This is an excellent choice for those with a logical brain and are interested in the inner workings. Web development is a fast growing industry with tons of demand and earning potential.',
'$81,363/year', '$21,000 - $153,500/year', '3 months - 2 years', 'Javascript, Python, Java, SQL, Git, HTML, CSS');


--  ///////////////////////////////////////////
--  /////////      learning_links      ////////
--  ///////////////////////////////////////////

INSERT INTO learning_links (link, jobs_id) VALUES ('https://thecodingtrain.com/tracks, https://www.kadenze.com/courses/the-nature-of-code-ii/info', 1);
INSERT INTO learning_links (link, jobs_id) VALUES ('https://www.udemy.com/course/code-art/', 1);
INSERT INTO learning_links (link, jobs_id) VALUES ('https://www.ecuad.ca/academics/teen-programs/summer-institute-for-teens/creative-coding-web-design-sit', 1);
INSERT INTO learning_links (link, jobs_id) VALUES ('https://www.freecodecamp.org/', 2);
INSERT INTO learning_links (link, jobs_id) VALUES ('https://www.udemy.com/course/crashing-course-for-web-front-end-development', 2);
INSERT INTO learning_links (link, jobs_id) VALUES ('https://www.thinkful.com/bootcamp/web-development/#introduction', 2);
INSERT INTO learning_links (link, jobs_id) VALUES ('https://www.lighthouselabs.ca/', 2);
INSERT INTO learning_links (link, jobs_id) VALUES ('https://www.freecodecamp.org/', 3);
INSERT INTO learning_links (link, jobs_id) VALUES ('https://www.udemy.com/courses/search/?q=backend+web+development&src=sac&kw=Back', 3);
INSERT INTO learning_links (link, jobs_id) VALUES ('Software Engineering Online Bootcamp | 1-on-1 Mentorship | Thinkful™ https://www.lighthouselabs.ca/', 3);

--  ///////////////////////////////////////////
--  /////////      articles            ////////
--  ///////////////////////////////////////////

INSERT INTO articles (article, jobs_id) VALUES ('https://interestingengineering.com/culture/everything-you-need-to-know-about-the-artistic-world-of-creative-coding', 1);
INSERT INTO articles (article, jobs_id) VALUES ('https://www.udemy.com/course/code-art/', 1);
INSERT INTO articles (article, jobs_id) VALUES ('https://www.simplilearn.com/how-to-become-a-front-end-developer-article', 2);
INSERT INTO articles (article, jobs_id) VALUES ('https://en.wikipedia.org/wiki/Front-end_web_development', 2);
INSERT INTO articles (article, jobs_id) VALUES ('https://www.weareadam.com/blog/2020/11/a-day-in-the-life-of-a-front-end-developer?source=google.com', 2);
INSERT INTO articles (article, jobs_id) VALUES ('Software Engineering Online Bootcamp | 1-on-1 Mentorship | Thinkful™', 3);
INSERT INTO articles (article, jobs_id) VALUES ('https://www.guru99.com/what-is-backend-developer.html', 3);


--  ///////////////////////////////////////////
--  /////////      questions           ////////
--  ///////////////////////////////////////////

INSERT INTO questions (question, answer_one) VALUES ('Welcome to our quiz!', 'Click here to start');
INSERT INTO questions (question, answer_one, answer_two) VALUES ('Would you prefer to work on-site or remotely?', 'Remotely', 'On site');
INSERT INTO questions (question, answer_one, answer_two) VALUES ('What is your strongest skill?', 'Logical thinking', 'Communication');
INSERT INTO questions (question, answer_one, answer_two) VALUES ('Do you prefer manipulating data, or creative tasks?', 'I love data!', 'I love creating!');
INSERT INTO questions (question, answer_one, answer_two) VALUES ('Would you prefer to create application for users or tools for professionals?', 'I want to create apps for the everyday joe.', 'I want to create apps for all my fellow geeks.');
INSERT INTO questions (question, answer_one, answer_two) VALUES ('In your day-to-day, would you enjoy working with informational-based, or visual-based programs?', 'I''m more of and informational person', 'I''m more of a visual person');

--  ///////////////////////////////////////////
--  /////////      quiz results    //////////// 
--  ///////////////////////////////////////////

INSERT INTO quiz_results (user_id, job_one_id, job_two_id, job_three_id) VALUES (1, 1, 2, 3);

--  ///////////////////////////////////////////
--  /////////       mentors     ///////////////
--  ///////////////////////////////////////////

INSERT INTO mentors (job_id, first_name, last_name, blurb, headshot) VALUES (1, 'Paul', 'Parsons','','https://i.pravatar.cc/150?img=22');
INSERT INTO mentors (job_id, first_name, last_name, blurb, headshot) VALUES (1, 'Susilo', 'Cecilia','','https://i.pravatar.cc/150?img=5');
INSERT INTO mentors (job_id, first_name, last_name, blurb, headshot) VALUES (1, 'Bolormaa', 'Samir','','https://i.pravatar.cc/150?img=28');
INSERT INTO mentors (job_id, first_name, last_name, blurb, headshot) VALUES (2, 'Suzie', 'Summers','With 10+ years of experience in Web Development, Suzie has kept her passion for her work by focusing in her local startup community. Always happy to pay it forward she specializes in Full-stack Web Development','https://i.pravatar.cc/150?img=11');
INSERT INTO mentors (job_id, first_name, last_name, blurb, headshot) VALUES (2, 'Maruxa', 'Kumar','Maruxa has been working as a Web Developer for 3 years in a large tech company. Specializing in Front-End development, Maruxa is a wealth of knowledge when it comes to working in larger tech companies','https://i.pravatar.cc/150?img=9');
INSERT INTO mentors (job_id, first_name, last_name, blurb, headshot) VALUES (2, 'Uisdean', 'Sabina','Uisdean is a newly graduated Web Development Bootcamp Alumni! If you''d like to speak with someone who can tell you exactly what it takes to become a Web Developer in today''s world, Uisdean is the mentor for you!','https://i.pravatar.cc/150?img=13');
INSERT INTO mentors (job_id, first_name, last_name, blurb, headshot) VALUES (3, 'Ned', 'Nielson','','https://i.pravatar.cc/150?img=24');
INSERT INTO mentors (job_id, first_name, last_name, blurb, headshot) VALUES (3, 'Abra', 'Tellervo','','https://i.pravatar.cc/150?img=18');
INSERT INTO mentors (job_id, first_name, last_name, blurb, headshot) VALUES (3, 'Judith', 'Kerime','','https://i.pravatar.cc/150?img=19');

--  ///////////////////////////////////////////
--  /////////       days             //////////
--  ///////////////////////////////////////////

INSERT INTO days (day) VALUES ('Monday');
INSERT INTO days (day) VALUES ('Tuesday');
INSERT INTO days (day) VALUES ('Wednesday');
INSERT INTO days (day) VALUES ('Thursday');
INSERT INTO days (day) VALUES ('Friday');


--  ///////////////////////////////////////////
--  /////////       times            //////////
--  ///////////////////////////////////////////

INSERT INTO times (time) VALUES ('9am');
INSERT INTO times (time) VALUES ('10am');
INSERT INTO times (time) VALUES ('11am');
INSERT INTO times (time) VALUES ('12pm');
INSERT INTO times (time) VALUES ('1pm');

--  ///////////////////////////////////////////
--  /////////       appointments     //////////
--  ///////////////////////////////////////////

INSERT INTO appointments (
  user_id, 
  mentor_id, 
  day_id, 
  time_id) 
  
  VALUES (1,4,1,1)



