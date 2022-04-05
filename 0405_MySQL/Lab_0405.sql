CREATE DATABASE efub;
USE efub;

CREATE TABLE member (
	member_id BIGINT NOT NULL auto_increment,
    name VARCHAR(45) NOT NULL,
    position VARCHAR(45) NOT NULL,
    email VARCHAR(200),
    birth_date DATE,
    PRIMARY KEY (member_id)
);

USE efub;
INSERT INTO member (name, position, email, birth_date) 
VALUES
("김은서", "back", "eunseo@gmail.com", "2000-04-20"),
("신짱구", "front", "zzang@gmail.com", "2000-05-05"),
("박이화", "front-back", "ewha@ewhain.net", "1886-05-31");

SELECT * FROM member;

USE efub;
CREATE TABLE sws (
	sws_id BIGINT NOT NULL auto_increment,
    name VARCHAR(45) NOT NULL,
    primary key (sws_id)
);

INSERT INTO sws (name)
VALUES
("1팀"),
("2팀");

SELECT * FROM sws;

ALTER TABLE member add sws_id bigint;
ALTER TABLE member add foreign key (sws_id) REFERENCES sws(sws_id);

UPDATE member SET sws_id=1 WHERE member_id=1;
UPDATE member SET sws_id=1 WHERE member_id=2;
UPDATE member SET sws_id=2 WHERE member_id=3;


SELECT
member.name AS member_name, position, email, birth_date, 
sws.name AS sws_name
FROM sws INNER JOIN member
ON sws.sws_id = member.sws_id;
