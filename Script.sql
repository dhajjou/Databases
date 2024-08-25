--Partie DOHA HAJJOU
--question 1 
SELECT * FROM student;

--question 2 
SELECT c_name AS club_name, c_type AS club_type FROM club;

--question 3  
SELECT * FROM cevent WHERE budget BETWEEN 2000 AND 5000 ORDER BY event_start_date;

--question 4
SELECT ce.event_name, ce.budget, cm.responsability
FROM cevent ce
JOIN club_events cev ON ce.event_name = cev.event_name
JOIN club_member cm ON cev.club_name = cm.club_name
WHERE YEAR(ce.event_start_date) = 2021 AND cm.responsability = 'president';

--question 5 
SELECT COUNT(*) AS total_members
FROM club_member
WHERE start_date >= '2020-01-01';

--question 6
SELECT SUM(budget) FROM cevent WHERE YEAR(event_start_date) > 2010;

--question 7
SELECT c.c_type, c.c_name AS club_name, COUNT(cm.member_id) AS member_count
FROM club c
LEFT JOIN club_member cm ON c.c_name = cm.club_name
GROUP BY c.c_name
ORDER BY c.c_type;

--question 8
SELECT COUNT(*) FROM cevent WHERE budget = (SELECT MAX(budget) FROM cevent);

--question 9
SELECT ce.event_name, ce.budget
FROM cevent ce
WHERE ce.budget > (SELECT MAX(cevent.budget) FROM cevent WHERE YEAR(cevent.event_start_date) = 2021);

--question 10
SELECT s.*, cm.club_name
FROM student s
LEFT JOIN club_member cm ON s.s_num = cm.student_num
ORDER BY s.s_name DESC;

--Partie RAHMA ALBEKBASHY
--question 11 
SELECT ce.event_name, c.committee_creation_date, c.committee_dissolution_date, ce.budget, SUM(t.amount) AS total_expenses
FROM cevent ce
JOIN committee c ON ce.event_name = c.event_name
JOIN task t ON ce.event_name = t.event_name
WHERE ce.event_start_date >= '2021-01-01' AND ce.event_end_date <= '2021-12-31'
GROUP BY ce.event_name, c.committee_creation_date, c.committee_dissolution_date, ce.budget;

--question 12
SELECT c.c_name AS club_name, c.c_type AS club_type, cm.student_num AS president_id, s.s_name AS president_name, s.class AS president_class, s.s_level AS president_level
FROM club c
JOIN club_member cm ON c.c_name = cm.club_name AND cm.responsability = 'president'
JOIN student s ON cm.student_num = s.s_num;

--question 13
SELECT ar.club_name, ar.report_status
FROM activity_report ar;

--question 14 
SELECT rn.member_id, s.s_name
FROM reports_not_signed_yet rn
JOIN student s ON rn.member_id = s.s_num

--question 15
SELECT s.s_name, cm1.club_name, COALESCE(cm1.responsability, 'Member') AS position
FROM club_member cm1
JOIN student s ON cm1.student_num = s.s_num
WHERE cm1.student_num IN (
  SELECT cm2.student_num
  FROM club_member cm2
  GROUP BY cm2.student_num
  HAVING COUNT(DISTINCT cm2.club_name) > 1
);

--question 16
SELECT t.task_description, t.amount, cc.member_id
FROM task t
JOIN committee_composition cc ON t.task_description = cc.task_description
ORDER BY t.amount DESC
LIMIT 10;

--question 17
SELECT ce.event_name, cev.club_name, cc.member_id, cc.temporar_position
FROM cevent ce
JOIN club_events cev ON ce.event_name = cev.event_name
JOIN committee cc ON ce.event_name = cc.event_name
WHERE cev.club_name IN (
  SELECT cev2.club_name
  FROM club_events cev2
  GROUP BY cev2.event_name
  HAVING COUNT(DISTINCT cev2.club_name) > 1
);

--question 18
SELECT c.c_name AS club_name, GROUP_CONCAT(a.award_source) AS award_sources
FROM club c
JOIN wined_awards wa ON c.c_name = wa.club_name
JOIN award a ON wa.award_id = a.award_id
GROUP BY c.c_name;

--question 19
SELECT c.c_name
FROM club c
LEFT JOIN club_member cm ON c.c_name = cm.club_name
JOIN student s ON cm.student_num = s.s_num
WHERE s.s_name NOT IN ('ALLAM', 'ASSAF');

--question 20:
SELECT cm.member_id
FROM club_member cm
JOIN club c ON cm.club_name = c.c_name
WHERE c.c_type = 'cultural'
GROUP BY cm.member_id
HAVING COUNT(DISTINCT cm.club_name) = (
    SELECT COUNT(DISTINCT c_name)
    FROM club
    WHERE c_type = 'cultural'
);