
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

INSERT INTO questions (answer_one) VALUES ('Start Your New Journey!');
INSERT INTO questions (question, answer_one, answer_two) VALUES ('Ideally, what would the majority of your working week look like?', 'I''d like to work 100% remotely', 'I''d prefer to be in the office most of the time');
INSERT INTO questions (question, answer_one, answer_two) VALUES ('Which one of these two skills do you think you can provide most to your new team?', 'Logical thinking', 'Communication');
INSERT INTO questions (question, answer_one, answer_two) VALUES ('In your day-to-day, would you prefer to mainly manipulate pre-existing data, or would you be happier creating new features and products from scratch?', 'I love improving on pre-existing structures!', 'I want a blank state and the opportunity to create something unique!');
INSERT INTO questions (question, answer_one, answer_two) VALUES ('From a high-level perspective, would you like to be part of a team that creates new applications that focus on users or would you like to create internal tools for professionals in your field?', 'Nothing makes me happier than providing a valuable product for the everyday user', 'It would be more rewarding for me if I knew I could improve the day-to-day lives of professionals in a similar position as myself.');
INSERT INTO questions (question, answer_one, answer_two) VALUES ('While creating apps, or tools, would you prefer to focus on working with informational-based programs, such as direct coding, or would you like to work primarily with visual-based programs such as Figma and design boards?', 'Designing things scares me! I''ll stick with text-based programs please.', 'If I''m not looking at pretty shapes and colors I''m going to be upset.');

--  ///////////////////////////////////////////
--  /////////      quiz results    //////////// 
--  ///////////////////////////////////////////

INSERT INTO quiz_results (user_id, job_one_id, job_two_id, job_three_id) VALUES (1, 1, 2, 3);

--  ///////////////////////////////////////////
--  /////////       mentors     ///////////////
--  ///////////////////////////////////////////

INSERT INTO mentors (job_id, first_name, last_name, blurb, headshot) VALUES (1, 'Paul', 'Parsons','Paul is a creative at heart, from Graphic Design to Woodworking to creative coding he loves to talk all things creative! With 5+ years of experience Paul can provide a senior perspective on this career','https://i.pravatar.cc/150?img=22');
INSERT INTO mentors (job_id, first_name, last_name, blurb, headshot) VALUES (1, 'Susilo', 'Cecilia','Susilo has progressed to leading a team of creative coders as their Director. She can provide valuable insight into what makes a junior creative coder the best they can be.','https://i.pravatar.cc/150?img=5');
INSERT INTO mentors (job_id, first_name, last_name, blurb, headshot) VALUES (1, 'Bolormaa', 'Samir','Bolormaa gained their position as a creative coder just 6 months ago and is a great resource to speak with on how their first 6 months has been.','https://i.pravatar.cc/150?img=28');
INSERT INTO mentors (job_id, first_name, last_name, blurb, headshot) VALUES (2, 'Suzie', 'Summers','With 10+ years of experience in Web Development, Suzie has kept her passion for her work by focusing in her local startup community. Always happy to pay it forward she specializes in Full-stack Web Development','https://i.pravatar.cc/150?img=11');
INSERT INTO mentors (job_id, first_name, last_name, blurb, headshot) VALUES (2, 'Maruxa', 'Kumar','Maruxa has been working as a Web Developer for 3 years in a large tech company. Specializing in Front-End development, Maruxa is a wealth of knowledge when it comes to working in larger tech companies','https://i.pravatar.cc/150?img=9');
INSERT INTO mentors (job_id, first_name, last_name, blurb, headshot) VALUES (2, 'Uisdean', 'Sabina','Uisdean is a newly graduated Web Development Bootcamp Alumni! If you''d like to speak with someone who can tell you exactly what it takes to become a Web Developer in today''s world, Uisdean is the mentor for you!','https://i.pravatar.cc/150?img=13');
INSERT INTO mentors (job_id, first_name, last_name, blurb, headshot) VALUES (3, 'Ned', 'Nielson','Ned is a database and server wizard! If you already know a thing or two about back-end development, Ned would be a fantastic person to speak with.','https://i.pravatar.cc/150?img=24');
INSERT INTO mentors (job_id, first_name, last_name, blurb, headshot) VALUES (3, 'Abra', 'Tellervo','Abra is currently working with a small to medium start up company and has been there for 2 years. They can provide a great window into a back-end developer''s life at a startup.','https://i.pravatar.cc/150?img=18');
INSERT INTO mentors (job_id, first_name, last_name, blurb, headshot) VALUES (3, 'Judith', 'Kerime','Judith is currently in school for a back-end developer degree and can speak to the learning curve required to become a back-end developer','https://i.pravatar.cc/150?img=19');

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

