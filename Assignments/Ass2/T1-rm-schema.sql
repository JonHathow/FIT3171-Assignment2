--****PLEASE ENTER YOUR DETAILS BELOW****
--T1-rm-schema.sql

--Student ID: 31189733
--Student Name: How Yu Chern
--Unit Code: FIT3171
--Applied Class No: Tutorial 04

/* Comments for your marker:




*/

-- Task 1 Add Create table statements for the Missing TABLES below
-- Ensure all column comments, and constraints (other than FK's)
-- are included. FK constraints are to be added at the end of this script

SET ECHO ON

-- COMPETITOR
CREATE TABLE competitor
(
comp_no NUMERIC(5) NOT NULL,
comp_fname VARCHAR(30) NOT NULL,
comp_lname VARCHAR(30) NOT NULL,
comp_gender CHAR(1) DEFAULT 'U',
comp_dob DATE NOT NULL,
comp_email VARCHAR(50) NOT NULL,
comp_unistatus CHAR(1) DEFAULT 'N',
comp_phone CHAR(10) NOT NULL,
comp_ec_relationship CHAR(1) DEFAULT 'P',
ec_phone CHAR(10) NOT NULL,
CONSTRAINT comp_gender CHECK(comp_gender IN ('M', 'F', 'U')),
CONSTRAINT comp_unistatus CHECK(comp_unistatus IN ('Y', 'N')),
CONSTRAINT comp_ec_relationship CHECK(comp_ec_relationship IN ('P', 'G', 'T', 'F')),
CONSTRAINT pk_competitor PRIMARY KEY(comp_no)
);

COMMENT ON COLUMN competitor.comp_no IS
    'Unique identifier number for a competitor';

COMMENT ON COLUMN competitor.comp_fname IS
    'Competitor’s first name';

COMMENT ON COLUMN competitor.comp_lname IS
    'Competitor’s last name';
    
COMMENT ON COLUMN competitor.comp_gender IS
    'Competitor’s gender (M for male, F for female, or U for Undisclosed)';

COMMENT ON COLUMN competitor.comp_dob IS
    'Competitor’s date of birth';
    
COMMENT ON COLUMN competitor.comp_email IS
    'Competitor’s email';
    
COMMENT ON COLUMN competitor.comp_unistatus IS
    'Competitor’s university student/staff status (Y for Yes or N for No)';

COMMENT ON COLUMN competitor.comp_phone IS
    'Competitor’s phone number';
    
COMMENT ON COLUMN competitor.comp_ec_relationship IS
    'Emergency contact relationship to competitor (P for Parent, G for Guardian, T for Partner, or F for Friend)';    

COMMENT ON COLUMN competitor.ec_phone IS
    'Emergency contact’s phone number (unique identifier) as foreign key';    
   

-- EMERCONTACT
CREATE TABLE emercontact
(
ec_phone CHAR(10) NOT NULL,
ec_fname VARCHAR(30) NOT NULL,
ec_lname VARCHAR(30) NOT NULL,
CONSTRAINT pk_emercontact PRIMARY KEY(ec_phone)
);

COMMENT ON COLUMN emercontact.ec_phone IS
    'Emergency contact’s phone number (unique identifier)';

COMMENT ON COLUMN emercontact.ec_fname IS
    'Emergency contact’s first name';

COMMENT ON COLUMN emercontact.ec_lname IS
    'Emergency contact’s last name';

--ENTRY
CREATE TABLE entry
(
event_id NUMERIC(6) NOT NULL,
entry_no NUMERIC(5) NOT NULL,
entry_starttime DATE NOT NULL,
entry_finishtime DATE NOT NULL,
comp_no NUMERIC(5) NOT NULL,
team_id NUMERIC(3) NOT NULL,
char_id NUMERIC(3) NOT NULL
);

COMMENT ON COLUMN entry.event_id IS
    'Event id (unique for each event) as foreign key';
    
COMMENT ON COLUMN entry.entry_no IS
    'Entry number (unique for each event)';

COMMENT ON COLUMN entry.entry_starttime IS
    'The entrant start time';

COMMENT ON COLUMN entry.entry_finishtime IS
    'The entrant finish time';
    
COMMENT ON COLUMN entry.comp_no IS
    'Unique identifier for a competitor as foreign key';
    
COMMENT ON COLUMN entry.team_id IS 
    'Team identifier (unique) as foreign key';
    
COMMENT ON COLUMN entry.char_id IS
    'Charity unique identifier as foreign key';


--TEAM
CREATE TABLE team
(
team_id NUMERIC(3) NOT NULL,
team_name VARCHAR(30) NOT NULL,
carn_date DATE NOT NULL,
team_no_members NUMERIC(2) NOT NULL,
event_id NUMERIC(6) NOT NULL,
entry_no NUMERIC(5) NOT NULL,
char_id NUMERIC(3) NOT NULL,
CONSTRAINT pk_team PRIMARY KEY(team_id)
);

COMMENT ON COLUMN team.team_id IS
    'Team identifier (unique)';

COMMENT ON COLUMN team.team_name IS
    'Team name';

COMMENT ON COLUMN team.carn_date IS
    'Date of carnival (unique identifier) as foreign key';

COMMENT ON COLUMN team.team_no_members IS
    'Number of team members';

COMMENT ON COLUMN team.event_id IS
    'Event id (part of unique identifier for each entry) as foreign key';
    
COMMENT ON COLUMN team.entry_no IS
    'Entry number (unique for each entry) as foreign key';
    
COMMENT ON COLUMN team.char_id IS
    'Charity unique identifier as foreign key';

    

-- Add all missing FK Constraints below here
-- ENTRY FK
ALTER TABLE entry ADD 
(
CONSTRAINT event_id_entry_fk FOREIGN KEY(event_id) REFERENCES event(event_id) ON DELETE CASCADE,
CONSTRAINT comp_no_entry_fk FOREIGN KEY(comp_no) REFERENCES competitor(comp_no) ON DELETE CASCADE,
CONSTRAINT char_id_entry_fk FOREIGN KEY(char_id) REFERENCES charity(char_id) ON DELETE CASCADE,
CONSTRAINT team_id_entry_fk FOREIGN KEY(team_id) REFERENCES team(team_id) ON DELETE CASCADE
);

ALTER TABLE entry ADD CONSTRAINT pk_entry PRIMARY KEY ( event_id, entry_no );

--COMPETITOR FKs and NKs.
ALTER TABLE competitor ADD 
(CONSTRAINT ec_phone_competitor_fk FOREIGN KEY(ec_phone) REFERENCES emercontact(ec_phone) ON DELETE CASCADE
);

--TEAM Fks and NKs.
ALTER TABLE team ADD 
(
--Reference entry's composite primary key
CONSTRAINT event_id_no_fk_team FOREIGN KEY(event_id, entry_no) REFERENCES entry(event_id, entry_no) ON DELETE CASCADE,
--CONSTRAINT entry_no_fk_team FOREIGN KEY(entry_no) REFERENCES entry(entry_no) ON DELETE CASCADE,
CONSTRAINT char_id_fk_team FOREIGN KEY(char_id) REFERENCES charity(char_id) ON DELETE CASCADE,
CONSTRAINT carn_date_fk_team FOREIGN KEY(carn_date) REFERENCES carnival(carn_date) ON DELETE CASCADE
);

ALTER TABLE team ADD CONSTRAINT team_uq UNIQUE ( team_name, carn_date );

SET ECHO OFF

COMMIT;

