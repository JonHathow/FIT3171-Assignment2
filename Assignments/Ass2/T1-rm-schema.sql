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

-- COMPETITOR
CREATE TABLE COMPETITOR
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
CONSTRAINT comp_gender CHECK(comp_gender IN ('M', 'F', 'U')),
CONSTRAINT comp_unistatus CHECK(comp_unistatus IN ('Y', 'N')),
CONSTRAINT comp_ec_relationship CHECK(comp_ec_relationship IN ('P', 'G', 'T', 'F')),
CONSTRAINT pk_competitor PRIMARY KEY(comp_no)
);

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
CREATE TABLE ENTRY
(
entry_no NUMERIC(5) NOT NULL,
entry_starttime DATE NOT NULL,
entry_finishtime DATE NOT NULL,
CONSTRAINT pk_entry PRIMARY KEY(entry_no)
);


--TEAM
CREATE TABLE TEAM
(
team_id NUMERIC(3) NOT NULL,
team_name VARCHAR(30) NOT NULL,
team_no_members NUMERIC(2) NOT NULL,
CONSTRAINT pk_team PRIMARY KEY(team_id)
);

-- Add all missing FK Constraints below here
-- EMERCONTACT FK
ALTER TABLE COMPETITOR ADD 
(CONSTRAINT fk_competitor FOREIGN KEY(ec_phone) REFERENCES EMERCONTACT(ec_phone) ON DELETE CASCADE
);


