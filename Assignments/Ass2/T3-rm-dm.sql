--****PLEASE ENTER YOUR DETAILS BELOW****
--T3-rm-dm.sql

--Student ID: 31189733
--Student Name: How Yu Chern
--Unit Code: FIT3171
--Applied Class No: Tutorial 04

/* Comments for your marker:
*/

--3(a)
--Competitor Sequence
DROP SEQUENCE competitor_seq;
CREATE SEQUENCE competitor_seq START WITH 100 INCREMENT BY 1;

--Team Sequence
DROP SEQUENCE team_seq;
CREATE SEQUENCE team_seq START WITH 100 INCREMENT BY 1;

COMMIT;

--3(b)
--First, insert father into emercontact
INSERT INTO emercontact (
    ec_phone,
    ec_fname,
    ec_lname
) VALUES (
    '0476541234',
    'Jack',
    'Kai'
);
--Second, insert the two competitors
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
    competitor_seq.nextval,
    'Daniel',
    'Kai',
    'M',
    TO_DATE('1/April/2003', 'DD/MON/YYYY'),
    'dankai@gmail.com',
    'Y',
    '0476544321',
    'P',
    '0476541234'  
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
    competitor_seq.nextval,
    'Annabelle',
    'Kai',
    'F',
    TO_DATE('3/May/2003', 'DD/MON/YYYY'),
    'annakai@gmail.com',
    'Y',
    '0476541324',
    'P',
    '0476541234'  
);

--Insert Competitors as entries
INSERT INTO entry (
    event_id,
    entry_no,
    entry_starttime,
    entry_finishtime,
    comp_no,
    team_id,
    char_id
) VALUES (
    (SELECT e.event_id FROM ((event e 
        JOIN eventtype t ON e.eventtype_code = t.eventtype_code) 
        JOIN carnival c ON e.carn_date = c.carn_date) 
    WHERE t.eventtype_desc = '21.1 Km Half Marathon' 
        AND c.carn_name = 'RM Autumn Series Caulfield 2022'),
    (SELECT max(entry_no)+1 FROM entry),
    null,
    null,
    (SELECT comp_no FROM competitor WHERE comp_fname = 'Daniel' AND comp_lname = 'Kai'),
    null,
    (SELECT char_id FROM charity WHERE char_name = 'Beyond Blue')
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
    (SELECT e.event_id FROM ((event e 
        JOIN eventtype t ON e.eventtype_code = t.eventtype_code) 
        JOIN carnival c ON e.carn_date = c.carn_date) 
    WHERE t.eventtype_desc = '21.1 Km Half Marathon' 
        AND c.carn_name = 'RM Autumn Series Caulfield 2022'),
    (SELECT max(entry_no)+1 FROM entry),
    null,
    null,
    (SELECT comp_no FROM competitor WHERE comp_fname = 'Annabelle' AND comp_lname = 'Kai'),
    null,
    (SELECT char_id FROM charity WHERE char_name = 'Amnesty International')
);

COMMIT;

--3(c)
--Create a team 'Kai Speedsters', with Anabelle Kai as the leader
INSERT INTO team (
    team_id,
    team_name,
    carn_date,
    team_no_members,
    event_id,
    entry_no,
    char_id
) VALUES (
    (SELECT max(team_id)+1 FROM team),
    'Kai Speedstars',
    (SELECT carn_date FROM carnival WHERE carn_name = 'RM Autumn Series Caulfield 2022'),
    1,
    (SELECT e.event_id FROM (entry e JOIN competitor c ON e.comp_no = c.comp_no) WHERE c.comp_fname = 'Annabelle' AND c.comp_lname = 'Kai'),
    (SELECT e.entry_no FROM (entry e JOIN competitor c ON e.comp_no = c.comp_no) WHERE c.comp_fname = 'Annabelle' AND c.comp_lname = 'Kai'),
    (SELECT char_id FROM charity WHERE char_name = 'Beyond Blue')
);

--Add Anabelle Kai into the team (because she is the leader)
UPDATE entry 
SET team_id = (SELECT t.team_id FROM (team t JOIN carnival c ON t.carn_date = c.carn_date) WHERE t.team_name = 'Kai Speedstars' AND c.carn_name = 'RM Autumn Series Caulfield 2022') 
WHERE event_id = (SELECT e.event_id FROM ((event e 
        JOIN eventtype t ON e.eventtype_code = t.eventtype_code) 
        JOIN carnival c ON e.carn_date = c.carn_date) 
    WHERE t.eventtype_desc = '21.1 Km Half Marathon' 
        AND c.carn_name = 'RM Autumn Series Caulfield 2022')
AND entry_no = (SELECT e.entry_no FROM (entry e JOIN competitor c ON e.comp_no = c.comp_no) WHERE c.comp_fname = 'Annabelle' AND c.comp_lname = 'Kai'AND e.event_id = (SELECT e.event_id FROM ((event e 
        JOIN eventtype t ON e.eventtype_code = t.eventtype_code) 
        JOIN carnival c ON e.carn_date = c.carn_date) 
    WHERE t.eventtype_desc = '21.1 Km Half Marathon' 
        AND c.carn_name = 'RM Autumn Series Caulfield 2022'));

COMMIT;

--3(d)
--Update primary key of Daniel Kai to new 10K run event
UPDATE entry
SET event_id = (SELECT e.event_id FROM ((event e 
        JOIN eventtype t ON e.eventtype_code = t.eventtype_code) 
        JOIN carnival c ON e.carn_date = c.carn_date) 
    WHERE t.eventtype_desc = '10 Km Run' 
        AND c.carn_name = 'RM Autumn Series Caulfield 2022')
WHERE event_id = (SELECT e.event_id FROM ((event e 
        JOIN eventtype t ON e.eventtype_code = t.eventtype_code) 
        JOIN carnival c ON e.carn_date = c.carn_date) 
    WHERE t.eventtype_desc = '21.1 Km Half Marathon' 
        AND c.carn_name = 'RM Autumn Series Caulfield 2022')
AND entry_no = (SELECT e.entry_no FROM (entry e JOIN competitor c ON e.comp_no = c.comp_no) WHERE c.comp_fname = 'Daniel' AND c.comp_lname = 'Kai' AND e.event_id = (SELECT e.event_id FROM ((event e 
        JOIN eventtype t ON e.eventtype_code = t.eventtype_code) 
        JOIN carnival c ON e.carn_date = c.carn_date) 
    WHERE t.eventtype_desc = '21.1 Km Half Marathon' 
        AND c.carn_name = 'RM Autumn Series Caulfield 2022'));
        
--Increment the count of the team 'Kai Speeedsters' to include Daniel Kai as a member. 
UPDATE team
SET team_no_members = team_no_members+1
WHERE team_id = (SELECT t.team_id FROM (team t JOIN carnival c ON t.carn_date = c.carn_date) WHERE t.team_name = 'Kai Speedstars' AND c.carn_name = 'RM Autumn Series Caulfield 2022');

--Update Daniel Kai to be a member of the team 'Kai Speeedsters'
UPDATE entry 
SET team_id = (SELECT t.team_id FROM (team t JOIN carnival c ON t.carn_date = c.carn_date) WHERE t.team_name = 'Kai Speedstars' AND c.carn_name = 'RM Autumn Series Caulfield 2022') 
WHERE event_id = (SELECT e.event_id FROM ((event e 
        JOIN eventtype t ON e.eventtype_code = t.eventtype_code) 
        JOIN carnival c ON e.carn_date = c.carn_date) 
    WHERE t.eventtype_desc = '10 Km Run' 
        AND c.carn_name = 'RM Autumn Series Caulfield 2022')
AND entry_no = (SELECT e.entry_no FROM (entry e JOIN competitor c ON e.comp_no = c.comp_no) WHERE c.comp_fname = 'Daniel' AND c.comp_lname = 'Kai' AND e.event_id = (SELECT e.event_id FROM ((event e 
        JOIN eventtype t ON e.eventtype_code = t.eventtype_code) 
        JOIN carnival c ON e.carn_date = c.carn_date) 
    WHERE t.eventtype_desc = '10 Km Run' 
        AND c.carn_name = 'RM Autumn Series Caulfield 2022'));
        
COMMIT;

--3(e)
--Delete Daniel from entries.
DELETE from entry
WHERE event_id = (SELECT e.event_id FROM ((event e 
        JOIN eventtype t ON e.eventtype_code = t.eventtype_code) 
        JOIN carnival c ON e.carn_date = c.carn_date) 
    WHERE t.eventtype_desc = '10 Km Run' 
        AND c.carn_name = 'RM Autumn Series Caulfield 2022')
AND entry_no = (SELECT e.entry_no FROM (entry e JOIN competitor c ON e.comp_no = c.comp_no) WHERE c.comp_fname = 'Daniel' AND c.comp_lname = 'Kai' AND e.event_id = (SELECT e.event_id FROM ((event e 
        JOIN eventtype t ON e.eventtype_code = t.eventtype_code) 
        JOIN carnival c ON e.carn_date = c.carn_date) 
    WHERE t.eventtype_desc = '10 Km Run' 
        AND c.carn_name = 'RM Autumn Series Caulfield 2022'));

--Update Anabelle and make her team number null as she quit the team
UPDATE entry 
SET team_id = null
WHERE event_id = (SELECT e.event_id FROM ((event e 
        JOIN eventtype t ON e.eventtype_code = t.eventtype_code) 
        JOIN carnival c ON e.carn_date = c.carn_date) 
    WHERE t.eventtype_desc = '21.1 Km Half Marathon' 
        AND c.carn_name = 'RM Autumn Series Caulfield 2022')
AND entry_no = (SELECT e.entry_no FROM (entry e JOIN competitor c ON e.comp_no = c.comp_no) WHERE c.comp_fname = 'Annabelle' AND c.comp_lname = 'Kai'AND e.event_id = (SELECT e.event_id FROM ((event e 
        JOIN eventtype t ON e.eventtype_code = t.eventtype_code) 
        JOIN carnival c ON e.carn_date = c.carn_date) 
    WHERE t.eventtype_desc = '21.1 Km Half Marathon' 
        AND c.carn_name = 'RM Autumn Series Caulfield 2022'));

--Delete the team 'Kai Speedsters'
Delete from team
WHERE team_id = (SELECT t.team_id FROM (team t JOIN carnival c ON t.carn_date = c.carn_date) WHERE t.team_name = 'Kai Speedstars' AND c.carn_name = 'RM Autumn Series Caulfield 2022');

COMMIT;

