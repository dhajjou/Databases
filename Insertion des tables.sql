-- Tableau student
INSERT INTO student (s_name, gender, class, s_level, date_of_birth) VALUES
('John Doe', 'Male', 'Class A', 'Level 1', '2000-01-01'),
('Jane Smith', 'Female', 'Class B', 'Level 2', '2001-02-03'),
('David Johnson', 'Male', 'Class A', 'Level 3', '1999-05-10'),
('Sarah Thompson', 'Female', 'Class C', 'Level 2', '2002-09-15'),
('Michael Brown', 'Male', 'Class B', 'Level 1', '2003-04-20'),
('Emily Davis', 'Female', 'Class A', 'Level 3', '2000-12-05'),
('Daniel Wilson', 'Male', 'Class B', 'Level 2', '2001-06-30'),
('Olivia Martin', 'Female', 'Class C', 'Level 1', '1999-08-12'),
('William Anderson', 'Male', 'Class A', 'Level 3', '2002-03-25'),
('Sophia Thomas', 'Female', 'Class B', 'Level 2', '2003-07-18');

-- Tableau club
INSERT INTO club (name, creation_date, type) VALUES
('Music Club', '2020-01-01', 'cultural'),
('Robotics Club', '2018-03-15', 'technical'),
('Football Club', '2017-09-10', 'sports'),
('Art Club', '2019-05-20', 'cultural'),
('Science Club', '2016-11-03', 'technical'),
('Basketball Club', '2015-07-08', 'sports'),
('Dance Club', '2021-02-10', 'cultural'),
('Chess Club', '2014-09-01', 'technical'),
('Volleyball Club', '2013-04-12', 'sports'),
('Photography Club', '2022-03-05', 'cultural');

-- Tableau club_member
INSERT INTO club_member (responsability, start_date, end_date, club_name, student_num) VALUES
('president', '2021-01-01', '2022-01-01', 'Music Club', 1),
('treasurer', '2021-01-01', '2022-01-01', 'Music Club', 2),
('secretary', '2021-01-01', '2022-01-01', 'Music Club', 3),
('president', '2021-01-01', '2022-01-01', 'Robotics Club', 2),
('vice-president', '2021-01-01', '2022-01-01', 'Robotics Club', 1),
('treasurer', '2021-01-01', '2022-01-01', 'Football Club', 3),
('secretary', '2021-01-01', '2022-01-01', 'Art Club', 4),
('president', '2021-01-01', '2022-01-01', 'Science Club', 5),
('treasurer', '2021-01-01', '2022-01-01', 'Basketball Club', 6),
('secretary', '2021-01-01', '2022-01-01', 'Dance Club', 7);

-- Tableau activity_report
INSERT INTO activity_report (report_year, report_status, writter, club_name) VALUES
(2021, 'signed', 1, 'Music Club'),
(2021, 'pending signatures', 2, 'Music Club'),
(2021, 'missing', 3, 'Music Club'),
(2021, 'submitted', 1, 'Robotics Club'),
(2021, 'being created', 2, 'Robotics Club'),
(2021, 'pending signatures', 3, 'Robotics Club'),
(2022, 'signed', 4, 'Art Club'),
(2022, 'pending signatures', 5, 'Art Club'),
(2022, 'missing', 6, 'Art Club'),
(2022, 'submitted', 4, 'Science Club');

-- Tableau signed_reports
INSERT INTO signed_reports (id_report, member_id, signature_date) VALUES
(1, 1, '2021-12-31'),
(1, 2, '2022-01-02'),
(2, 1, '2022-01-05'),
(4, 1, '2022-01-10'),
(5, 2, '2022-01-15'),
(5, 3, '2022-01-18'),
(6, 1, '2022-01-20'),
(8, 4, '2022-02-05'),
(9, 4, '2022-02-10'),
(10, 5, '2022-02-15');

-- Tableau reports_not_signed_yet
INSERT INTO reports_not_signed_yet (id_report, member_id, affected_date) VALUES
(2, 3, '2022-01-03'),
(3, 1, '2022-01-04'),
(7, 6, '2022-02-01'),
(7, 7, '2022-02-02'),
(7, 8, '2022-02-03'),
(7, 9, '2022-02-04'),
(7, 10, '2022-02-05'),
(10, 6, '2022-02-20'),
(10, 7, '2022-02-22'),
(10, 8, '2022-02-24');

-- Tableau cevent
INSERT INTO cevent (event_name, event_start_date, event_end_date, event_start_time, event_end_time, event_type, budget) VALUES
('Training Session 1', '2022-02-01', '2022-02-02', '09:00:00', '17:00:00', 'training', 1000),
('Workshop 1', '2022-02-05', '2022-02-05', '14:00:00', '18:00:00', 'workshop', 500),
('Party Night', '2022-02-10', '2022-02-11', '21:00:00', '02:00:00', 'party', 2000),
('Hackathon 2022', '2022-03-01', '2022-03-03', '18:00:00', '18:00:00', 'hackathon', 3000),
('Training Session 2', '2022-03-15', '2022-03-16', '10:00:00', '16:00:00', 'training', 1500);

-- Tableau club_events
INSERT INTO club_events (club_name, event_name) VALUES
('Music Club', 'Training Session 1'),
('Music Club', 'Workshop 1'),
('Music Club', 'Party Night'),
('Robotics Club', 'Training Session 1'),
('Robotics Club', 'Hackathon 2022'),
('Football Club', 'Workshop 1'),
('Football Club', 'Party Night'),
('Art Club', 'Training Session 1'),
('Art Club', 'Workshop 1'),
('Art Club', 'Hackathon 2022');

-- Tableau committee
INSERT INTO committee (committee_creation_date, committee_dissolution_date, event_name) VALUES
('2022-01-01', '2022-02-28', 'Training Session 1'),
('2022-02-01', '2022-03-31', 'Party Night'),
('2022-03-01', '2022-04-30', 'Hackathon 2022'),
('2022-04-01', '2022-05-31', 'Workshop 1'),
('2022-05-01', '2022-06-30', 'Training Session 2');

-- Tableau task
INSERT INTO task (task_description, amount, event_name) VALUES
('Event Setup', 5, 'Training Session 1'),
('Promotion', 3, 'Workshop 1'),
('Food and Beverages', 10, 'Party Night'),
('Registration', 8, 'Hackathon 2022'),
('Technical Support', 4, 'Conference'),
('Decoration', 6, 'Workshop 2'),
('Sound and Lighting', 7, 'Party Night 2'),
('Training Materials', 5, 'Training Session 3'),
('Project Evaluation', 3, 'Hackathon 2023'),
('Workshop Materials', 6, 'Workshop 1');

-- Tableau committee_composition
INSERT INTO committee_composition (committee_creation_date, committee_dissolution_date, member_id, task_description, temporar_position) VALUES
('2022-01-01', '2022-02-28', 1, 'Event Setup', 'president'),
('2022-01-01', '2022-02-28', 2, 'Promotion', 'vice-president'),
('2022-01-01', '2022-02-28', 3, 'Food and Beverages', 'treasurer'),
('2022-02-01', '2022-03-31', 1, 'Event Setup', 'president'),
('2022-02-01', '2022-03-31', 3, 'Food and Beverages', 'treasurer'),
('2022-03-01', '2022-04-30', 2, 'Registration', 'president'),
('2022-03-01', '2022-04-30', 4, 'Technical Support', 'vice-president'),
('2022-04-01', '2022-05-31', 1, 'Event Setup', 'president'),
('2022-04-01', '2022-05-31', 3, 'Food and Beverages', 'treasurer'),
('2022-05-01', '2022-06-30', 2, 'Promotion', 'president');

-- Tableau award
INSERT INTO award (award_source) VALUES
('Department of Education'),
('Local Business Association'),
('University Grants Committee'),
('Community Foundation'),
('National Science Foundation'),
('Arts Council'),
('Sports Federation'),
('Technology Innovation Fund'),
('Cultural Exchange Program'),
('Entrepreneurship Development Board');

-- Tableau sanction
INSERT INTO sanction (cause) VALUES
('Violation of Club Rules'),
('Non-compliance with Financial Regulations'),
('Misconduct during Events'),
('Insubordination'),
('Plagiarism'),
('Conflict of Interest'),
('Cheating'),
('Dishonesty'),
('Harassment'),
('Unauthorized Fundraising');

-- Tableau wined_awards
INSERT INTO wined_awards (award_id, club_name) VALUES
(1, 'Music Club'),
(2, 'Music Club'),
(2, 'Robotics Club'),
(3, 'Robotics Club'),
(4, 'Art Club'),
(5, 'Art Club'),
(5, 'Football Club'),
(6, 'Football Club'),
(7, 'Basketball Club'),
(8, 'Basketball Club');

-- Tableau sanctioned_club
INSERT INTO sanctioned_club (sanction_id, club_name) VALUES
(1, 'Music Club'),
(3, 'Robotics Club'),
(3, 'Football Club'),
(5, 'Art Club'),
(7, 'Science Club'),
(7, 'Basketball Club'),
(9, 'Dance Club'),
(9, 'Chess Club'),
(9, 'Volleyball Club'),
(10, 'Photography Club');

