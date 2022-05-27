--****PLEASE ENTER YOUR DETAILS BELOW****
--T2-rm-insert.sql

--Student ID: 31189733
--Student Name: How Yu Chern
--Unit Code: FIT3171
--Applied Class No: Tutorial 04

/* Comments for your marker:

*/

-- Task 2 Load the EMERCONTACT, COMPETITOR, ENTRY and TEAM tables with your own
-- test data following the data requirements expressed in the brief

-- =======================================
-- EMERCONTACT
-- =======================================
INSERT INTO emercontact (
    ec_phone,
    ec_fname,  
    ec_lname
) VALUES (
    '0123456789',
    'Hashtag',
    'Follow'
);

INSERT INTO emercontact (
    ec_phone,
    ec_fname,
    ec_lname
) VALUES (
    '0125678910',
    'Bilbo',
    'Boggins'
);

INSERT INTO emercontact (
    ec_phone,
    ec_fname,
    ec_lname
) VALUES (
    '0123574680',
    'Pointer',
    'Break'
);

INSERT INTO emercontact (
    ec_phone,
    ec_fname,
    ec_lname
) VALUES (
    '0122468102',
    'Funny',
    'Valentime'
);

INSERT INTO emercontact (
    ec_phone,
    ec_fname,
    ec_lname
) VALUES (
    '0124444444',
    'Jhin',
    'Khadda'
);

-- =======================================
-- COMPETITOR
-- =======================================
INSERT INTO competitor (
    comp_no,
    comp_fname,
    comp_lname,
    comp_gender,
    comp_dob,
    comp_email,
    comp_unistatus,
    comp_phone,
    comp_ec_relationship,
    ec_phone
) VALUES (
    00001,
    'Sally',
    'Valentime',
    'F',
    TO_DATE('2/May/2008', 'DD/MON/YYYY'),
    'sally.v@gmail.com',
    'N',
    '0122462108',
    'P',
    '0122468102'  
);

INSERT INTO competitor (
    comp_no,
    comp_fname,
    comp_lname,
    comp_gender,
    comp_dob,
    comp_email,
    comp_unistatus,
    comp_phone,
    comp_ec_relationship,
    ec_phone
) VALUES (
    00002,
    'Michael',
    'Valentime',
    'M',
    TO_DATE('5/May/2009', 'DD/MON/YYYY'),
    'michael.v@gmail.com',
    'N',
    '0122462109',
    'P',
    '0122468102'  
);

INSERT INTO competitor (
    comp_no,
    comp_fname,
    comp_lname,
    comp_gender,
    comp_dob,
    comp_email,
    comp_unistatus,
    comp_phone,
    comp_ec_relationship,
    ec_phone
) VALUES (
    00003,
    'America',
    'Likez',
    'F',
    TO_DATE('21/June/2003', 'DD/MON/YYYY'),
    'americalikes001@gmail.com',
    'Y',
    '0126088223',
    'F',
    '0123456789'  
);

INSERT INTO competitor (
    comp_no,
    comp_fname,
    comp_lname,
    comp_gender,
    comp_dob,
    comp_email,
    comp_unistatus,
    comp_phone,
    comp_ec_relationship,
    ec_phone
) VALUES (
    00004,
    'Michael',
    'Jackson',
    'M',
    TO_DATE('2/December/2002', 'DD/MON/YYYY'),
    'michaeljson001@gmail.com',
    'Y',
    '0120987654',
    'F',
    '0123456789'  
);

INSERT INTO competitor (
    comp_no,
    comp_fname,
    comp_lname,
    comp_gender,
    comp_dob,
    comp_email,
    comp_unistatus,
    comp_phone,
    comp_ec_relationship,
    ec_phone
) VALUES (
    00005,
    'Dream',
    'Clayton',
    'M',
    TO_DATE('1/January/2002', 'DD/MON/YYYY'),
    'dreamallday@gmail.com',
    'Y',
    '0123087645',
    'F',
    '0123456789'  
);

INSERT INTO competitor (
    comp_no,
    comp_fname,
    comp_lname,
    comp_gender,
    comp_dob,
    comp_email,
    comp_unistatus,
    comp_phone,
    comp_ec_relationship,
    ec_phone
) VALUES (
    00006,
    'George',
    'Fouder',
    'M',
    TO_DATE('2/May/2001', 'DD/MON/YYYY'),
    'theonenotfound@gmail.com',
    'Y',
    '0122908765',
    'F',
    '0123456789'  
);

INSERT INTO competitor (
    comp_no,
    comp_fname,
    comp_lname,
    comp_gender,
    comp_dob,
    comp_email,
    comp_unistatus,
    comp_phone,
    comp_ec_relationship,
    ec_phone
) VALUES (
    00007,
    'Sapnap',
    'Sapling',
    'M',
    TO_DATE('1/February/2002', 'DD/MON/YYYY'),
    'sapitusnapitus@gmail.com',
    'Y',
    '0123789000',
    'F',
    '0123456789'  
);

INSERT INTO competitor (
    comp_no,
    comp_fname,
    comp_lname,
    comp_gender,
    comp_dob,
    comp_email,
    comp_unistatus,
    comp_phone,
    comp_ec_relationship,
    ec_phone
) VALUES (
    00008,
    'Maria',
    'Karma',
    'F',
    TO_DATE('1/July/2001', 'DD/MON/YYYY'),
    'mkleague@gmail.com',
    'Y',
    '0125556789',
    'T',
    '0124444444'  
);

INSERT INTO competitor (
    comp_no,
    comp_fname,
    comp_lname,
    comp_gender,
    comp_dob,
    comp_email,
    comp_unistatus,
    comp_phone,
    comp_ec_relationship,
    ec_phone
) VALUES (
    00009,
    'Yi',
    'Masters',
    'M',
    TO_DATE('1/August/2002', 'DD/MON/YYYY'),
    'yithemaster001@gmail.com',
    'Y',
    '0128884444',
    'T',
    '0124444444'  
);

INSERT INTO competitor (
    comp_no,
    comp_fname,
    comp_lname,
    comp_gender,
    comp_dob,
    comp_email,
    comp_unistatus,
    comp_phone,
    comp_ec_relationship,
    ec_phone
) VALUES (
    00010,
    'Zed',
    'Yami',
    'M',
    TO_DATE('5/September/2002', 'DD/MON/YYYY'),
    'zedhaha005@gmail.com',
    'Y',
    '0125555555',
    'T',
    '0124444444'  
);

INSERT INTO competitor (
    comp_no,
    comp_fname,
    comp_lname,
    comp_gender,
    comp_dob,
    comp_email,
    comp_unistatus,
    comp_phone,
    comp_ec_relationship,
    ec_phone
) VALUES (
    00011,
    'Ben',
    'Banner',
    'M',
    TO_DATE('13/September/2002', 'DD/MON/YYYY'),
    'brb.asap@gmail.com',
    'Y',
    '0128690872',
    'G',
    '0123574680'  
);

INSERT INTO competitor (
    comp_no,
    comp_fname,
    comp_lname,
    comp_gender,
    comp_dob,
    comp_email,
    comp_unistatus,
    comp_phone,
    comp_ec_relationship,
    ec_phone
) VALUES (
    00012,
    'Steve',
    'Renald',
    'M',
    TO_DATE('10/August/2001', 'DD/MON/YYYY'),
    'stever002@gmail.com',
    'Y',
    '0124188902',
    'G',
    '0123574680'  
);

INSERT INTO competitor (
    comp_no,
    comp_fname,
    comp_lname,
    comp_gender,
    comp_dob,
    comp_email,
    comp_unistatus,
    comp_phone,
    comp_ec_relationship,
    ec_phone
) VALUES (
    00013,
    'Gundolf',
    'MacCallen',
    'M',
    TO_DATE('16/August/2010', 'DD/MON/YYYY'),
    'gunmagicks1234@gmail.com',
    'N',
    '0123571357',
    'G',
    '0125678910'  
);

INSERT INTO competitor (
    comp_no,
    comp_fname,
    comp_lname,
    comp_gender,
    comp_dob,
    comp_email,
    comp_unistatus,
    comp_phone,
    comp_ec_relationship,
    ec_phone
) VALUES (
    00014,
    'Fredo',
    'Boggins',
    'M',
    TO_DATE('1/October/2011', 'DD/MON/YYYY'),
    'ffbg001@gmail.com',
    'N',
    '0122468248',
    'P',
    '0125678910'  
);

INSERT INTO competitor (
    comp_no,
    comp_fname,
    comp_lname,
    comp_gender,
    comp_dob,
    comp_email,
    comp_unistatus,
    comp_phone,
    comp_ec_relationship,
    ec_phone
) VALUES (
    00015,
    'Sam',
    'Darling',
    'U',
    TO_DATE('12/March/1995', 'DD/MON/YYYY'),
    'samdarling420@gmail.com',
    'N',
    '0123458907',
    'F',
    '0125678910'  
);
  
-- =======================================
-- ENTRY
-- =======================================

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    000001,
    00001,
    TO_DATE('09:30','HH:MI'),
    TO_DATE('12:30','HH:MI'),
    00001,
    null,
    null
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    000012,
    00001,
    null,
    null,
    00001,
    null,
    001
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    000001,
    00002,
    TO_DATE('09:30','HH:MI'),
    TO_DATE('12:20','HH:MI'),
    00002,
    null,
    null
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    000012,
    00002,
    null,
    null,
    00002,
    null,
    001
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    000001,
    00003,
    TO_DATE('09:30','HH:MI'),
    TO_DATE('11:00','HH:MI'),
    00003,
    null,
    002
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    00003,
    00001,
    TO_DATE('09:10','HH:MI'),
    TO_DATE('11:00','HH:MI'),
    00003,
    null,
    null
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    000010,
    00003,
    TO_DATE('9:00','HH:MI'),
    TO_DATE('9:40','HH:MI'),
    0003,
    null,
    004
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    000002,
    00001,
    TO_DATE('09:00','HH:MI'),
    TO_DATE('12:00','HH:MI'),
    00004,
    null,
    002
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    000004,
    00001,
    TO_DATE('09:30','HH:MI'),
    TO_DATE('12:20','HH:MI'),
    00004,
    null,
    002
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    000001,
    00004,
    TO_DATE('10:00','HH:MI'),
    TO_DATE('11:00','HH:MI'),
    00005,
    null,
    003
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    000005,
    00001,
    TO_DATE('9:00','HH:MI'),
    TO_DATE('11:00','HH:MI'),
    00005,
    null,
    003
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    000005,
    00002,
    TO_DATE('9:00','HH:MI'),
    TO_DATE('11:30','HH:MI'),
    00006,
    null,
    003
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    000012,
    00004,
    null,
    null,
    00006,
    null,
    003
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    000012,
    00005,
    null,
    null,
    0006,
    null,
    003
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    000005,
    00003,
    TO_DATE('9:00','HH:MI'),
    TO_DATE('11:40','HH:MI'),
    00007,
    null,
    003
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    000011,
    00001,
    TO_DATE('7:50','HH:MI'),
    TO_DATE('12:00','HH:MI'),
    00007,
    null,
    003
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    000008,
    00003,
    TO_DATE('9:00','HH:MI'),
    TO_DATE('10:20','HH:MI'),
    00007,
    null,
    004
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    000006,
    00001,
    TO_DATE('9:00','HH:MI'),
    TO_DATE('10:00','HH:MI'),
    00008,
    null,
    001
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    000010,
    00001,
    TO_DATE('9:00','HH:MI'),
    TO_DATE('10:10','HH:MI'),
    00008,
    null,
    003
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    000009,
    00001,
    TO_DATE('8:00','HH:MI'),
    TO_DATE('10:10','HH:MI'),
    00008,
    null,
    003
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    000006,
    00002,
    TO_DATE('9:00','HH:MI'),
    TO_DATE('9:50','HH:MI'),
    00009,
    null,
    002
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    000010,
    00002,
    TO_DATE('9:00','HH:MI'),
    TO_DATE('9:45','HH:MI'),
    00009,
    null,
    002
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    000006,
    00003,
    TO_DATE('9:00','HH:MI'),
    TO_DATE('9:30','HH:MI'),
    00010,
    null,
    004
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    000008,
    00001,
    TO_DATE('8:00','HH:MI'),
    TO_DATE('9:00','HH:MI'),
    00011,
    null,
    null
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    000009,
    00002,
    TO_DATE('8:00','HH:MI'),
    TO_DATE('8:45','HH:MI'),
    00012,
    null,
    003
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    000008,
    00002,
    TO_DATE('8:00','HH:MI'),
    TO_DATE('10:00','HH:MI'),
    00012,
    null,
    002
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    000010,
    00004,
    TO_DATE('10:00','HH:MI'),
    TO_DATE('11:00','HH:MI'),
    00012,
    null,
    002
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    000007,
    00001,
    TO_DATE('9:00','HH:MI'),
    TO_DATE('10:00','HH:MI'),
    00013,
    null,
    004
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    000001,
    00005,
    TO_DATE('9:00','HH:MI'),
    TO_DATE('9:35','HH:MI'),
    00014,
    null,
    004
);

INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    000011,
    00002,
    TO_DATE('7:45','HH:MI'),
    TO_DATE('11:35','HH:MI'),
    00015,
    null,
    004
);

-- =======================================
-- TEAM
-- =======================================
INSERT INTO team (
    team_id,
    team_name,
    carn_date,
    team_no_members,
    event_id,
    entry_no,
    char_id
) VALUES (
    001,
    'Valentime Funtime',
    TO_DATE('24/September/2021', 'DD/MON/YYYY'),
    2,
    1,
    1,
    2
);

UPDATE entry SET team_id = 001 WHERE event_id = 1 AND entry_no = 1;
UPDATE entry SET team_id = 001 WHERE event_id = 1 AND entry_no = 2;

INSERT INTO team (
    team_id,
    team_name,
    carn_date,
    team_no_members,
    event_id,
    entry_no,
    char_id
) VALUES (
    002,
    'Valentime Funtime',
    TO_DATE('29/May/2022', 'DD/MON/YYYY'),
    2,
    12,
    2,
    2
);

UPDATE entry SET team_id = 002 WHERE event_id = 12 AND entry_no = 1;
UPDATE entry SET team_id = 002 WHERE event_id = 12 AND entry_no = 2;

INSERT INTO team (
    team_id,
    team_name,
    carn_date,
    team_no_members,
    event_id,
    entry_no,
    char_id
) VALUES (
    003,
    'Speedrunners',
    TO_DATE('01/October/2021', 'DD/MON/YYYY'),
    3,
    5,
    1,
    4
);

UPDATE entry SET team_id = 003 WHERE event_id = 5 AND entry_no = 1;
UPDATE entry SET team_id = 003 WHERE event_id = 5 AND entry_no = 2;
UPDATE entry SET team_id = 003 WHERE event_id = 5 AND entry_no = 3;

COMMIT;

