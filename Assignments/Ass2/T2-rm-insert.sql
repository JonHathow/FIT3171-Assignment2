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
    'Boggins'
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
    'americalikes001@gmail.com',
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
    'americalikes001@gmail.com',
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
    'brb.asap@gmail.com',
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


-- =======================================
-- TEAM
-- =======================================

