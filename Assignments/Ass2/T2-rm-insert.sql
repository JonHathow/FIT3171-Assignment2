--****PLEASE ENTER YOUR DETAILS BELOW****
--T2-rm-insert.sql

--Student ID:
--Student Name:
--Unit Code:
--Applied Class No:

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
    'Baggins'
);

INSERT INTO emercontact (
    ec_phone,
    ec_fname,
    ec_lname
) VALUES (
    '0123574680',
    'Point',
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
    'Khada'
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



-- =======================================
-- ENTRY
-- =======================================


-- =======================================
-- TEAM
-- =======================================

