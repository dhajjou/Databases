CREATE DATABASE clubs_efrei;
USE clubs_efrei;

CREATE TABLE Club (
    id INT AUTO_INCREMENT,
    name VARCHAR(255),
    creation_date DATE,
    type VARCHAR(255),
    description TEXT,
    PRIMARY KEY (id)
);

CREATE TABLE Member (
    id INT AUTO_INCREMENT,
    name VARCHAR(255),
    student_number VARCHAR(255),
    gender VARCHAR(255),
    class VARCHAR(255),
    level VARCHAR(255),
    date_of_birth DATE,
    PRIMARY KEY (id)
);

CREATE TABLE Responsibility (
    id INT AUTO_INCREMENT,
    position VARCHAR(255),
    start_date DATE,
    end_date DATE,
    member_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (member_id) REFERENCES Member(id)
);

CREATE TABLE Event (
    id INT AUTO_INCREMENT,
    name VARCHAR(255),
    start_date DATE,
    end_date DATE,
    start_time TIME,
    end_time TIME,
    type VARCHAR(255),
    club_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (club_id) REFERENCES Club(id)
);

CREATE TABLE Committee (
    id INT AUTO_INCREMENT,
    position VARCHAR(255),
    creation_date DATE,
    dissolution_date DATE,
    event_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (event_id) REFERENCES Event(id)
);

CREATE TABLE Member_Committee (
    id INT AUTO_INCREMENT,
    member_id INT,
    committee_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (member_id) REFERENCES Member(id),
    FOREIGN KEY (committee_id) REFERENCES Committee(id)
);

CREATE TABLE Task (
    id INT AUTO_INCREMENT,
    name VARCHAR(255),
    amount DECIMAL(10,2),
    event_id INT,
    member_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (event_id) REFERENCES Event(id),
    FOREIGN KEY (member_id) REFERENCES Member(id)
);

CREATE TABLE Report (
    id INT AUTO_INCREMENT,
    status VARCHAR(255),
    modification_date DATE,
    club_id INT,
    member_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (club_id) REFERENCES Club(id),
    FOREIGN KEY (member_id) REFERENCES Member(id)
);

CREATE TABLE Award (
    id INT AUTO_INCREMENT,
    source VARCHAR(255),
    club_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (club_id) REFERENCES Club(id)
);

CREATE TABLE Sanction (
    id INT AUTO_INCREMENT,
    description TEXT,
    club_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (club_id) REFERENCES Club(id)
);
