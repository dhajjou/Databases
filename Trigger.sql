CREATE VIEW small_clubs AS
SELECT c.c_name, c.c_type, COUNT(cm.member_id) AS member_count
FROM club c
LEFT JOIN club_member cm ON c.c_name = cm.club_name
GROUP BY c.c_name, c.c_type
HAVING COUNT(cm.member_id) < 3;


CREATE VIEW small_clubs_2020 AS
SELECT sc.c_name, sc.c_type, sc.member_count
FROM small_clubs sc
JOIN club c ON sc.c_name = c.c_name
WHERE YEAR(c.creation_date) = 2020;


SELECT * FROM small_clubs_2020 WHERE c_type = 'Cultural';


CREATE TABLE member_deletion_history (
    id INT AUTO_INCREMENT PRIMARY KEY,
    member_id INT,
    club_name VARCHAR(255),
    deletion_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TRIGGER after_member_delete
AFTER DELETE ON club_member
FOR EACH ROW
BEGIN
    INSERT INTO member_deletion_history (member_id, club_name)
    VALUES (OLD.member_id, OLD.club_name);
END;
