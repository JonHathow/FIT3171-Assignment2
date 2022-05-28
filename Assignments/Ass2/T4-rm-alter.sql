--****PLEASE ENTER YOUR DETAILS BELOW****
--T4-rm-alter.sql

--Student ID: 31189733
--Student Name: How Yu Chern
--Unit Code:FIT3171
--Applied Class No: Tutorial 04

/* Comments for your marker:




*/

--4(a)
ALTER TABLE entry ADD 
(entry_elapsedtime NUMERIC(8, 2) DEFAULT 0
);

--4(b)
--Drop table
DROP TABLE team_charity CASCADE CONSTRAINTS;

--Create associative entity in between team and charity
--the relationship in between team and charity is now many-to-many
CREATE TABLE team_charity AS SELECT team_id, char_id FROM team;

/*The reason why default 100 is used, is because if that charity is the only
charity supported by a team, then that team will give 100% of their funds.
If the team does not support any charity, than the charity and that team
will not appear in the team_charity associative entity, so setting default
to 0 is redundant.
*/
ALTER TABLE team_charity ADD
(
team_charity_percentage NUMBER(3) DEFAULT 100,
CONSTRAINT team_charity_percentage CHECK (team_charity_percentage >= 0 AND team_charity_percentage <= 100)
);

ALTER TABLE team_charity ADD
(
CONSTRAINT pk_team_charity PRIMARY KEY ( team_id, char_id ),
CONSTRAINT char_id_fk_team_charity FOREIGN KEY(char_id) REFERENCES charity(char_id),
CONSTRAINT team_id_fk_team_charity FOREIGN KEY(team_id) REFERENCES team(team_id)
);

COMMENT ON COLUMN team_charity.team_id IS
    'Unique identifier number for a team as a foreign key';
    
COMMENT ON COLUMN team_charity.char_id IS
    'Unique identifier number for a charity as a foreign key';
    
COMMENT ON COLUMN team_charity.team_charity_percentage IS
    'The percentage of funds given to a charity in between 0 to 100%';
    
--Delete char-id in teams table as it is no longer required.
ALTER TABLE team DROP COLUMN char_id CASCADE CONSTRAINTS;
        
        
--4(c)
--Drop tables
DROP TABLE official CASCADE CONSTRAINTS;
DROP TABLE official_role CASCADE CONSTRAINTS;

--Create table official_role
CREATE TABLE official_role
(
official_role_id NUMERIC(5) NOT NULL,
official_role_name VARCHAR2(50) NOT NULL,
CONSTRAINT pk_official_role PRIMARY KEY(official_role_id)
);

COMMENT ON COLUMN official_role.official_role_id IS
    'Unique identifier number for a official role';
    
COMMENT ON COLUMN official_role.official_role_name IS
    'The name of the official role';

--Add some default official roles into the official role table
INSERT INTO official_role
(
    official_role_id,
    official_role_name
) VALUES (
    1,
    'Time Keeper'
);

INSERT INTO official_role
(
    official_role_id,
    official_role_name
) VALUES (
    2,
    'Marshall'
);


INSERT INTO official_role
(
    official_role_id,
    official_role_name
) VALUES (
    3,
    'Starter'
);


INSERT INTO official_role
(
    official_role_id,
    official_role_name
) VALUES (
    4,
    'First Aid'
);


--Create table official
CREATE TABLE official
(
comp_no NUMERIC(5) NOT NULL,
carn_date DATE NOT NULL,
official_role_id NUMERIC(5) NOT NULL
);

COMMENT ON COLUMN official.comp_no IS
    'Unique identifier number for a competitor as a foreign key';
    
COMMENT ON COLUMN official.carn_date IS
    'Unique identifier number for a carnival as a foreign key';
    
COMMENT ON COLUMN official.official_role_id IS
    'The unique id for official role';

ALTER TABLE official ADD
(
CONSTRAINT pk_official PRIMARY KEY(comp_no),
CONSTRAINT official_fk_comp_no FOREIGN KEY(comp_no) REFERENCES competitor(comp_no),
CONSTRAINT official_fk_carn_date FOREIGN KEY(carn_date) REFERENCES carnival(carn_date),
CONSTRAINT official_fk_official_role_id FOREIGN KEY(official_role_id) REFERENCES official_role(official_role_id)
);


COMMIT;
